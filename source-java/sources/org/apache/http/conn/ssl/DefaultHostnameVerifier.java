package org.apache.http.conn.ssl;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import javax.naming.InvalidNameException;
import javax.naming.NamingException;
import javax.naming.directory.Attribute;
import javax.naming.ldap.LdapName;
import javax.naming.ldap.Rdn;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.DomainType;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.conn.util.PublicSuffixMatcher;

@Immutable
/* loaded from: classes.dex */
public final class DefaultHostnameVerifier implements HostnameVerifier {
    static final int DNS_NAME_TYPE = 2;
    static final int IP_ADDRESS_TYPE = 7;
    private final Log log;
    private final PublicSuffixMatcher publicSuffixMatcher;

    public DefaultHostnameVerifier() {
        this(null);
    }

    public DefaultHostnameVerifier(PublicSuffixMatcher publicSuffixMatcher) {
        this.log = LogFactory.getLog(getClass());
        this.publicSuffixMatcher = publicSuffixMatcher;
    }

    static String extractCN(String str) throws SSLException {
        String str2 = null;
        if (str == null) {
            return null;
        }
        try {
            List rdns = new LdapName(str).getRdns();
            for (int size = rdns.size() - 1; size >= 0; size--) {
                Attribute attribute = ((Rdn) rdns.get(size)).toAttributes().get("cn");
                if (attribute != null) {
                    try {
                        Object obj = attribute.get();
                        if (obj != null) {
                            return obj.toString();
                        }
                        continue;
                    } catch (NamingException e) {
                    } catch (NoSuchElementException e2) {
                    }
                }
            }
            return str2;
        } catch (InvalidNameException e3) {
            throw new SSLException(str + " is not a valid X500 distinguished name");
        }
    }

    static List<String> extractSubjectAlts(X509Certificate x509Certificate, int i) {
        Collection<List<?>> collection = null;
        try {
            collection = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException e) {
        }
        ArrayList arrayList = null;
        if (collection != null) {
            for (List<?> list : collection) {
                if (((Integer) list.get(0)).intValue() == i) {
                    String str = (String) list.get(1);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(str);
                }
            }
        }
        return arrayList;
    }

    static void matchCN(String str, String str2, PublicSuffixMatcher publicSuffixMatcher) throws SSLException {
        if (matchIdentityStrict(str, str2, publicSuffixMatcher)) {
            return;
        }
        throw new SSLException("Certificate for <" + str + "> doesn't match common name of the certificate subject: " + str2);
    }

    static void matchDNSName(String str, List<String> list, PublicSuffixMatcher publicSuffixMatcher) throws SSLException {
        String lowerCase = str.toLowerCase(Locale.ROOT);
        for (int i = 0; i < list.size(); i++) {
            if (matchIdentityStrict(lowerCase, list.get(i).toLowerCase(Locale.ROOT), publicSuffixMatcher)) {
                return;
            }
        }
        throw new SSLException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }

    static boolean matchDomainRoot(String str, String str2) {
        if (str2 != null && str.endsWith(str2)) {
            return str.length() == str2.length() || str.charAt((str.length() - str2.length()) - 1) == '.';
        }
        return false;
    }

    static void matchIPAddress(String str, List<String> list) throws SSLException {
        for (int i = 0; i < list.size(); i++) {
            if (str.equals(list.get(i))) {
                return;
            }
        }
        throw new SSLException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }

    static void matchIPv6Address(String str, List<String> list) throws SSLException {
        String normaliseAddress = normaliseAddress(str);
        for (int i = 0; i < list.size(); i++) {
            if (normaliseAddress.equals(normaliseAddress(list.get(i)))) {
                return;
            }
        }
        throw new SSLException("Certificate for <" + str + "> doesn't match any of the subject alternative names: " + list);
    }

    static boolean matchIdentity(String str, String str2) {
        return matchIdentity(str, str2, null, false);
    }

    static boolean matchIdentity(String str, String str2, PublicSuffixMatcher publicSuffixMatcher) {
        return matchIdentity(str, str2, publicSuffixMatcher, false);
    }

    private static boolean matchIdentity(String str, String str2, PublicSuffixMatcher publicSuffixMatcher, boolean z) {
        if (publicSuffixMatcher != null && str.contains(".") && !matchDomainRoot(str, publicSuffixMatcher.getDomainRoot(str2, DomainType.ICANN))) {
            return false;
        }
        int indexOf = str2.indexOf(42);
        if (indexOf == -1) {
            return str.equalsIgnoreCase(str2);
        }
        String substring = str2.substring(0, indexOf);
        String substring2 = str2.substring(indexOf + 1);
        if (!substring.isEmpty() && !str.startsWith(substring)) {
            return false;
        }
        if (substring2.isEmpty() || str.endsWith(substring2)) {
            return (z && str.substring(substring.length(), str.length() - substring2.length()).contains(".")) ? false : true;
        }
        return false;
    }

    static boolean matchIdentityStrict(String str, String str2) {
        return matchIdentity(str, str2, null, true);
    }

    static boolean matchIdentityStrict(String str, String str2, PublicSuffixMatcher publicSuffixMatcher) {
        return matchIdentity(str, str2, publicSuffixMatcher, true);
    }

    static String normaliseAddress(String str) {
        if (str == null) {
            return str;
        }
        try {
            return InetAddress.getByName(str).getHostAddress();
        } catch (UnknownHostException e) {
            return str;
        }
    }

    public void verify(String str, X509Certificate x509Certificate) throws SSLException {
        boolean isIPv4Address = InetAddressUtils.isIPv4Address(str);
        boolean isIPv6Address = InetAddressUtils.isIPv6Address(str);
        List<String> extractSubjectAlts = extractSubjectAlts(x509Certificate, (isIPv4Address || isIPv6Address) ? 7 : 2);
        if (extractSubjectAlts != null && !extractSubjectAlts.isEmpty()) {
            if (isIPv4Address) {
                matchIPAddress(str, extractSubjectAlts);
                return;
            } else if (isIPv6Address) {
                matchIPv6Address(str, extractSubjectAlts);
                return;
            } else {
                matchDNSName(str, extractSubjectAlts, this.publicSuffixMatcher);
                return;
            }
        }
        String extractCN = extractCN(x509Certificate.getSubjectX500Principal().getName("RFC2253"));
        if (extractCN != null) {
            matchCN(str, extractCN, this.publicSuffixMatcher);
            return;
        }
        throw new SSLException("Certificate subject for <" + str + "> doesn't contain a common name and does not have alternative names");
    }

    @Override // javax.net.ssl.HostnameVerifier
    public boolean verify(String str, SSLSession sSLSession) {
        try {
            verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            return true;
        } catch (SSLException e) {
            if (this.log.isDebugEnabled()) {
                this.log.debug(e.getMessage(), e);
            }
            return false;
        }
    }
}
