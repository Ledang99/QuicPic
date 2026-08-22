package org.apache.http.impl.cookie;

import java.util.List;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.InterfaceC1465SM;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@ThreadSafe
/* loaded from: classes.dex */
public class DefaultCookieSpec implements CookieSpec {
    private final NetscapeDraftSpec netscapeDraft;
    private final RFC2109Spec obsoleteStrict;
    private final RFC2965Spec strict;

    public DefaultCookieSpec() {
        this(null, false);
    }

    DefaultCookieSpec(RFC2965Spec rFC2965Spec, RFC2109Spec rFC2109Spec, NetscapeDraftSpec netscapeDraftSpec) {
        this.strict = rFC2965Spec;
        this.obsoleteStrict = rFC2109Spec;
        this.netscapeDraft = netscapeDraftSpec;
    }

    public DefaultCookieSpec(String[] strArr, boolean z) {
        this.strict = new RFC2965Spec(z, new RFC2965VersionAttributeHandler(), new BasicPathHandler(), new RFC2965DomainAttributeHandler(), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler());
        this.obsoleteStrict = new RFC2109Spec(z, new RFC2109VersionHandler(), new BasicPathHandler(), new RFC2109DomainHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler());
        CommonCookieAttributeHandler[] commonCookieAttributeHandlerArr = new CommonCookieAttributeHandler[5];
        commonCookieAttributeHandlerArr[0] = new BasicDomainHandler();
        commonCookieAttributeHandlerArr[1] = new BasicPathHandler();
        commonCookieAttributeHandlerArr[2] = new BasicSecureHandler();
        commonCookieAttributeHandlerArr[3] = new BasicCommentHandler();
        commonCookieAttributeHandlerArr[4] = new BasicExpiresHandler(strArr != null ? (String[]) strArr.clone() : new String[]{"EEE, dd-MMM-yy HH:mm:ss z"});
        this.netscapeDraft = new NetscapeDraftSpec(commonCookieAttributeHandlerArr);
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        Args.notNull(list, "List of cookies");
        int i = Integer.MAX_VALUE;
        boolean z = true;
        for (Cookie cookie : list) {
            if (!(cookie instanceof SetCookie2)) {
                z = false;
            }
            if (cookie.getVersion() < i) {
                i = cookie.getVersion();
            }
        }
        return i > 0 ? z ? this.strict.formatCookies(list) : this.obsoleteStrict.formatCookies(list) : this.netscapeDraft.formatCookies(list);
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        return this.strict.getVersion();
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        return null;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, InterfaceC1465SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        return cookie.getVersion() > 0 ? cookie instanceof SetCookie2 ? this.strict.match(cookie, cookieOrigin) : this.obsoleteStrict.match(cookie, cookieOrigin) : this.netscapeDraft.match(cookie, cookieOrigin);
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        ParserCursor parserCursor;
        CharArrayBuffer charArrayBuffer;
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        HeaderElement[] elements = header.getElements();
        boolean z = false;
        boolean z2 = false;
        for (HeaderElement headerElement : elements) {
            if (headerElement.getParameterByName(ClientCookie.VERSION_ATTR) != null) {
                z = true;
            }
            if (headerElement.getParameterByName(ClientCookie.EXPIRES_ATTR) != null) {
                z2 = true;
            }
        }
        if (!z2 && z) {
            return InterfaceC1465SM.SET_COOKIE2.equals(header.getName()) ? this.strict.parse(elements, cookieOrigin) : this.obsoleteStrict.parse(elements, cookieOrigin);
        }
        NetscapeDraftHeaderParser netscapeDraftHeaderParser = NetscapeDraftHeaderParser.DEFAULT;
        if (header instanceof FormattedHeader) {
            charArrayBuffer = ((FormattedHeader) header).getBuffer();
            parserCursor = new ParserCursor(((FormattedHeader) header).getValuePos(), charArrayBuffer.length());
        } else {
            String value = header.getValue();
            if (value == null) {
                throw new MalformedCookieException("Header value is null");
            }
            CharArrayBuffer charArrayBuffer2 = new CharArrayBuffer(value.length());
            charArrayBuffer2.append(value);
            parserCursor = new ParserCursor(0, charArrayBuffer2.length());
            charArrayBuffer = charArrayBuffer2;
        }
        return this.netscapeDraft.parse(new HeaderElement[]{netscapeDraftHeaderParser.parseHeader(charArrayBuffer, parserCursor)}, cookieOrigin);
    }

    public String toString() {
        return CookieSpecs.DEFAULT;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        Args.notNull(cookie, InterfaceC1465SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        if (cookie.getVersion() <= 0) {
            this.netscapeDraft.validate(cookie, cookieOrigin);
        } else if (cookie instanceof SetCookie2) {
            this.strict.validate(cookie, cookieOrigin);
        } else {
            this.obsoleteStrict.validate(cookie, cookieOrigin);
        }
    }
}
