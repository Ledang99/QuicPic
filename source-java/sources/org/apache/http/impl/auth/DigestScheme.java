package org.apache.http.impl.auth;

import java.io.IOException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashSet;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ChallengeState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.BufferedHeader;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EncodingUtils;

@NotThreadSafe
/* loaded from: classes.dex */
public class DigestScheme extends RFC2617Scheme {
    private static final char[] HEXADECIMAL = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final int QOP_AUTH = 2;
    private static final int QOP_AUTH_INT = 1;
    private static final int QOP_MISSING = 0;
    private static final int QOP_UNKNOWN = -1;
    private static final long serialVersionUID = 3883908186234566916L;

    /* renamed from: a1 */
    private String f5025a1;

    /* renamed from: a2 */
    private String f5026a2;
    private String cnonce;
    private boolean complete;
    private String lastNonce;
    private long nounceCount;

    public DigestScheme() {
        this(Consts.ASCII);
    }

    public DigestScheme(Charset charset) {
        super(charset);
        this.complete = false;
    }

    @Deprecated
    public DigestScheme(ChallengeState challengeState) {
        super(challengeState);
    }

    public static String createCnonce() {
        byte[] bArr = new byte[8];
        new SecureRandom().nextBytes(bArr);
        return encode(bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0383  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Header createDigestHeader(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        String str;
        String str2;
        char c;
        String str3;
        String str4;
        MessageDigest messageDigest;
        String str5;
        String str6;
        String str7;
        char c2;
        char c3;
        String sb;
        ArrayList arrayList;
        String str8;
        int i;
        ArrayList arrayList2;
        String str9;
        boolean z;
        String parameter = getParameter("uri");
        String parameter2 = getParameter("realm");
        String parameter3 = getParameter("nonce");
        String parameter4 = getParameter("opaque");
        String parameter5 = getParameter("methodname");
        String parameter6 = getParameter("algorithm");
        if (parameter6 == null) {
            parameter6 = MessageDigestAlgorithms.MD5;
        }
        HashSet hashSet = new HashSet(8);
        String parameter7 = getParameter("qop");
        if (parameter7 != null) {
            str = "algorithm";
            str2 = "qop";
            for (StringTokenizer stringTokenizer = new StringTokenizer(parameter7, ","); stringTokenizer.hasMoreTokens(); stringTokenizer = stringTokenizer) {
                hashSet.add(stringTokenizer.nextToken().trim().toLowerCase(Locale.ROOT));
            }
            c = ((httpRequest instanceof HttpEntityEnclosingRequest) && hashSet.contains("auth-int")) ? (char) 1 : hashSet.contains("auth") ? (char) 2 : (char) 65535;
        } else {
            str = "algorithm";
            str2 = "qop";
            c = 0;
        }
        if (c == 65535) {
            throw new AuthenticationException("None of the qop methods is supported: " + parameter7);
        }
        String parameter8 = getParameter("charset");
        if (parameter8 == null) {
            parameter8 = "ISO-8859-1";
        }
        String str10 = parameter6;
        if (str10.equalsIgnoreCase("MD5-sess")) {
            str10 = MessageDigestAlgorithms.MD5;
        }
        try {
            MessageDigest createMessageDigest = createMessageDigest(str10);
            String name = credentials.getUserPrincipal().getName();
            String password = credentials.getPassword();
            if (parameter3.equals(this.lastNonce)) {
                str3 = "auth";
                str4 = parameter5;
                this.nounceCount++;
            } else {
                str3 = "auth";
                str4 = parameter5;
                this.nounceCount = 1L;
                this.cnonce = null;
                this.lastNonce = parameter3;
            }
            StringBuilder sb2 = new StringBuilder(256);
            Formatter formatter = new Formatter(sb2, Locale.US);
            formatter.format("%08x", Long.valueOf(this.nounceCount));
            formatter.close();
            String sb3 = sb2.toString();
            if (this.cnonce == null) {
                this.cnonce = createCnonce();
            }
            this.f5025a1 = null;
            this.f5026a2 = null;
            if (parameter6.equalsIgnoreCase("MD5-sess")) {
                sb2.setLength(0);
                sb2.append(name);
                sb2.append(':');
                sb2.append(parameter2);
                sb2.append(':');
                sb2.append(password);
                messageDigest = createMessageDigest;
                String encode = encode(messageDigest.digest(EncodingUtils.getBytes(sb2.toString(), parameter8)));
                sb2.setLength(0);
                sb2.append(encode);
                sb2.append(':');
                sb2.append(parameter3);
                sb2.append(':');
                sb2.append(this.cnonce);
                this.f5025a1 = sb2.toString();
            } else {
                messageDigest = createMessageDigest;
                sb2.setLength(0);
                sb2.append(name);
                sb2.append(':');
                sb2.append(parameter2);
                sb2.append(':');
                sb2.append(password);
                this.f5025a1 = sb2.toString();
            }
            String encode2 = encode(messageDigest.digest(EncodingUtils.getBytes(this.f5025a1, parameter8)));
            if (c == 2) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(str4);
                str5 = parameter6;
                sb4.append(':');
                str6 = parameter;
                sb4.append(str6);
                this.f5026a2 = sb4.toString();
                str7 = str3;
                c2 = c;
            } else {
                String str11 = str4;
                str5 = parameter6;
                str6 = parameter;
                if (c == 1) {
                    char c4 = c;
                    HttpEntity entity = httpRequest instanceof HttpEntityEnclosingRequest ? ((HttpEntityEnclosingRequest) httpRequest).getEntity() : null;
                    if (entity == null || entity.isRepeatable()) {
                        str7 = str3;
                        HttpEntityDigester httpEntityDigester = new HttpEntityDigester(messageDigest);
                        if (entity != null) {
                            try {
                                entity.writeTo(httpEntityDigester);
                            } catch (IOException e) {
                                e = e;
                                throw new AuthenticationException("I/O error reading entity content", e);
                            }
                        }
                        try {
                            httpEntityDigester.close();
                            this.f5026a2 = str11 + ':' + str6 + ':' + encode(httpEntityDigester.getDigest());
                            c3 = c4;
                        } catch (IOException e2) {
                            e = e2;
                            throw new AuthenticationException("I/O error reading entity content", e);
                        }
                    } else {
                        if (!hashSet.contains(str3)) {
                            throw new AuthenticationException("Qop auth-int cannot be used with a non-repeatable entity");
                        }
                        str7 = str3;
                        this.f5026a2 = str11 + ':' + str6;
                        c3 = (char) 2;
                    }
                    String encode3 = encode(messageDigest.digest(EncodingUtils.getBytes(this.f5026a2, parameter8)));
                    if (c3 != 0) {
                        sb2.setLength(0);
                        sb2.append(encode2);
                        sb2.append(':');
                        sb2.append(parameter3);
                        sb2.append(':');
                        sb2.append(encode3);
                        sb = sb2.toString();
                    } else {
                        sb2.setLength(0);
                        sb2.append(encode2);
                        sb2.append(':');
                        sb2.append(parameter3);
                        sb2.append(':');
                        sb2.append(sb3);
                        sb2.append(':');
                        sb2.append(this.cnonce);
                        sb2.append(':');
                        sb2.append(c3 == 1 ? "auth-int" : str7);
                        sb2.append(':');
                        sb2.append(encode3);
                        sb = sb2.toString();
                    }
                    String encode4 = encode(messageDigest.digest(EncodingUtils.getAsciiBytes(sb)));
                    CharArrayBuffer charArrayBuffer = new CharArrayBuffer(128);
                    if (isProxy()) {
                        charArrayBuffer.append("Authorization");
                    } else {
                        charArrayBuffer.append("Proxy-Authorization");
                    }
                    charArrayBuffer.append(": Digest ");
                    arrayList = new ArrayList(20);
                    arrayList.add(new BasicNameValuePair("username", name));
                    arrayList.add(new BasicNameValuePair("realm", parameter2));
                    arrayList.add(new BasicNameValuePair("nonce", parameter3));
                    arrayList.add(new BasicNameValuePair("uri", str6));
                    arrayList.add(new BasicNameValuePair("response", encode4));
                    if (c3 == 0) {
                        str8 = str2;
                        arrayList.add(new BasicNameValuePair(str8, c3 == 1 ? "auth-int" : str7));
                        arrayList.add(new BasicNameValuePair("nc", sb3));
                        arrayList.add(new BasicNameValuePair("cnonce", this.cnonce));
                    } else {
                        str8 = str2;
                    }
                    String str12 = str;
                    arrayList.add(new BasicNameValuePair(str12, str5));
                    if (parameter4 == null) {
                        arrayList.add(new BasicNameValuePair("opaque", parameter4));
                    }
                    i = 0;
                    while (i < arrayList.size()) {
                        BasicNameValuePair basicNameValuePair = (BasicNameValuePair) arrayList.get(i);
                        if (i > 0) {
                            arrayList2 = arrayList;
                            charArrayBuffer.append(", ");
                        } else {
                            arrayList2 = arrayList;
                        }
                        String name2 = basicNameValuePair.getName();
                        boolean z2 = "nc".equals(name2) || str8.equals(name2) || str12.equals(name2);
                        BasicHeaderValueFormatter basicHeaderValueFormatter = BasicHeaderValueFormatter.INSTANCE;
                        if (z2) {
                            str9 = str8;
                            z = false;
                        } else {
                            str9 = str8;
                            z = true;
                        }
                        basicHeaderValueFormatter.formatNameValuePair(charArrayBuffer, basicNameValuePair, z);
                        i++;
                        arrayList = arrayList2;
                        str8 = str9;
                    }
                    return new BufferedHeader(charArrayBuffer);
                }
                str7 = str3;
                c2 = c;
                this.f5026a2 = str11 + ':' + str6;
            }
            c3 = c2;
            String encode32 = encode(messageDigest.digest(EncodingUtils.getBytes(this.f5026a2, parameter8)));
            if (c3 != 0) {
            }
            String encode42 = encode(messageDigest.digest(EncodingUtils.getAsciiBytes(sb)));
            CharArrayBuffer charArrayBuffer2 = new CharArrayBuffer(128);
            if (isProxy()) {
            }
            charArrayBuffer2.append(": Digest ");
            arrayList = new ArrayList(20);
            arrayList.add(new BasicNameValuePair("username", name));
            arrayList.add(new BasicNameValuePair("realm", parameter2));
            arrayList.add(new BasicNameValuePair("nonce", parameter3));
            arrayList.add(new BasicNameValuePair("uri", str6));
            arrayList.add(new BasicNameValuePair("response", encode42));
            if (c3 == 0) {
            }
            String str122 = str;
            arrayList.add(new BasicNameValuePair(str122, str5));
            if (parameter4 == null) {
            }
            i = 0;
            while (i < arrayList.size()) {
            }
            return new BufferedHeader(charArrayBuffer2);
        } catch (UnsupportedDigestAlgorithmException e3) {
            throw new AuthenticationException("Unsuppported digest algorithm: " + str10);
        }
    }

    private static MessageDigest createMessageDigest(String str) throws UnsupportedDigestAlgorithmException {
        try {
            return MessageDigest.getInstance(str);
        } catch (Exception e) {
            throw new UnsupportedDigestAlgorithmException("Unsupported algorithm in HTTP Digest authentication: " + str);
        }
    }

    static String encode(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length * 2];
        for (int i = 0; i < length; i++) {
            int i2 = bArr[i] & 15;
            int i3 = (bArr[i] & 240) >> 4;
            char[] cArr2 = HEXADECIMAL;
            cArr[i * 2] = cArr2[i3];
            cArr[(i * 2) + 1] = cArr2[i2];
        }
        return new String(cArr);
    }

    @Override // org.apache.http.auth.AuthScheme
    @Deprecated
    public Header authenticate(Credentials credentials, HttpRequest httpRequest) throws AuthenticationException {
        return authenticate(credentials, httpRequest, new BasicHttpContext());
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) throws AuthenticationException {
        Args.notNull(credentials, "Credentials");
        Args.notNull(httpRequest, "HTTP request");
        if (getParameter("realm") == null) {
            throw new AuthenticationException("missing realm in challenge");
        }
        if (getParameter("nonce") == null) {
            throw new AuthenticationException("missing nonce in challenge");
        }
        getParameters().put("methodname", httpRequest.getRequestLine().getMethod());
        getParameters().put("uri", httpRequest.getRequestLine().getUri());
        if (getParameter("charset") == null) {
            getParameters().put("charset", getCredentialsCharset(httpRequest));
        }
        return createDigestHeader(credentials, httpRequest);
    }

    String getA1() {
        return this.f5025a1;
    }

    String getA2() {
        return this.f5026a2;
    }

    String getCnonce() {
        return this.cnonce;
    }

    @Override // org.apache.http.auth.AuthScheme
    public String getSchemeName() {
        return "digest";
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isComplete() {
        if ("true".equalsIgnoreCase(getParameter("stale"))) {
            return false;
        }
        return this.complete;
    }

    @Override // org.apache.http.auth.AuthScheme
    public boolean isConnectionBased() {
        return false;
    }

    public void overrideParamter(String str, String str2) {
        getParameters().put(str, str2);
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase, org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) throws MalformedChallengeException {
        super.processChallenge(header);
        this.complete = true;
        if (getParameters().isEmpty()) {
            throw new MalformedChallengeException("Authentication challenge is empty");
        }
    }

    @Override // org.apache.http.impl.auth.AuthSchemeBase
    public String toString() {
        return "DIGEST [complete=" + this.complete + ", nonce=" + this.lastNonce + ", nc=" + this.nounceCount + "]";
    }
}
