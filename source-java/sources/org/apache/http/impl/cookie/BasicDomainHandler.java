package org.apache.http.impl.cookie;

import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.InetAddressUtils;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.InterfaceC1465SM;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;
import org.apache.http.util.TextUtils;

@Immutable
/* loaded from: classes.dex */
public class BasicDomainHandler implements CommonCookieAttributeHandler {
    static boolean domainMatch(String str, String str2) {
        if (InetAddressUtils.isIPv4Address(str2) || InetAddressUtils.isIPv6Address(str2)) {
            return false;
        }
        String substring = str.startsWith(".") ? str.substring(1) : str;
        if (str2.endsWith(substring)) {
            int length = str2.length() - substring.length();
            if (length == 0) {
                return true;
            }
            if (length > 1 && str2.charAt(length - 1) == '.') {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.http.cookie.CommonCookieAttributeHandler
    public String getAttributeName() {
        return ClientCookie.DOMAIN_ATTR;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, InterfaceC1465SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (domain == null) {
            return false;
        }
        if (domain.startsWith(".")) {
            domain = domain.substring(1);
        }
        String lowerCase = domain.toLowerCase(Locale.ROOT);
        if (host.equals(lowerCase)) {
            return true;
        }
        if ((cookie instanceof ClientCookie) && ((ClientCookie) cookie).containsAttribute(ClientCookie.DOMAIN_ATTR)) {
            return domainMatch(lowerCase, host);
        }
        return false;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, InterfaceC1465SM.COOKIE);
        if (TextUtils.isBlank(str)) {
            throw new MalformedCookieException("Blank or null value for domain attribute");
        }
        if (str.endsWith(".")) {
            return;
        }
        String str2 = str;
        if (str2.startsWith(".")) {
            str2 = str2.substring(1);
        }
        setCookie.setDomain(str2.toLowerCase(Locale.ROOT));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, InterfaceC1465SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        String host = cookieOrigin.getHost();
        String domain = cookie.getDomain();
        if (domain == null) {
            throw new CookieRestrictionViolationException("Cookie 'domain' may not be null");
        }
        if (host.equals(domain) || domainMatch(domain, host)) {
            return;
        }
        throw new CookieRestrictionViolationException("Illegal 'domain' attribute \"" + domain + "\". Domain of origin: \"" + host + "\"");
    }
}
