package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.InterfaceC1465SM;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.impl.cookie.BrowserCompatSpecFactory;
import org.apache.http.message.BasicHeaderElement;
import org.apache.http.message.BasicHeaderValueFormatter;
import org.apache.http.message.BufferedHeader;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@ThreadSafe
/* loaded from: classes.dex */
public class BrowserCompatSpec extends CookieSpecBase {
    private static final String[] DEFAULT_DATE_PATTERNS = {"EEE, dd MMM yyyy HH:mm:ss zzz", "EEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z"};

    public BrowserCompatSpec() {
        this(null, BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_DEFAULT);
    }

    public BrowserCompatSpec(String[] strArr) {
        this(strArr, BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_DEFAULT);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BrowserCompatSpec(String[] strArr, BrowserCompatSpecFactory.SecurityLevel securityLevel) {
        super(r0);
        CommonCookieAttributeHandler[] commonCookieAttributeHandlerArr = new CommonCookieAttributeHandler[7];
        commonCookieAttributeHandlerArr[0] = new BrowserCompatVersionAttributeHandler();
        commonCookieAttributeHandlerArr[1] = new BasicDomainHandler();
        commonCookieAttributeHandlerArr[2] = securityLevel == BrowserCompatSpecFactory.SecurityLevel.SECURITYLEVEL_IE_MEDIUM ? new BasicPathHandler() { // from class: org.apache.http.impl.cookie.BrowserCompatSpec.1
            @Override // org.apache.http.impl.cookie.BasicPathHandler, org.apache.http.cookie.CookieAttributeHandler
            public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
            }
        } : new BasicPathHandler();
        commonCookieAttributeHandlerArr[3] = new BasicMaxAgeHandler();
        commonCookieAttributeHandlerArr[4] = new BasicSecureHandler();
        commonCookieAttributeHandlerArr[5] = new BasicCommentHandler();
        commonCookieAttributeHandlerArr[6] = new BasicExpiresHandler(strArr != null ? (String[]) strArr.clone() : DEFAULT_DATE_PATTERNS);
    }

    private static boolean isQuoteEnclosed(String str) {
        return str != null && str.startsWith("\"") && str.endsWith("\"");
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Header> formatCookies(List<Cookie> list) {
        Args.notEmpty(list, "List of cookies");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(list.size() * 20);
        charArrayBuffer.append(InterfaceC1465SM.COOKIE);
        charArrayBuffer.append(": ");
        for (int i = 0; i < list.size(); i++) {
            Cookie cookie = list.get(i);
            if (i > 0) {
                charArrayBuffer.append("; ");
            }
            String name = cookie.getName();
            String value = cookie.getValue();
            if (cookie.getVersion() <= 0 || isQuoteEnclosed(value)) {
                charArrayBuffer.append(name);
                charArrayBuffer.append("=");
                if (value != null) {
                    charArrayBuffer.append(value);
                }
            } else {
                BasicHeaderValueFormatter.INSTANCE.formatHeaderElement(charArrayBuffer, (HeaderElement) new BasicHeaderElement(name, value), false);
            }
        }
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new BufferedHeader(charArrayBuffer));
        return arrayList;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public int getVersion() {
        return 0;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public Header getVersionHeader() {
        return null;
    }

    @Override // org.apache.http.cookie.CookieSpec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) throws MalformedCookieException {
        ParserCursor parserCursor;
        CharArrayBuffer charArrayBuffer;
        BrowserCompatSpec browserCompatSpec = this;
        Args.notNull(header, "Header");
        Args.notNull(cookieOrigin, "Cookie origin");
        if (!header.getName().equalsIgnoreCase(InterfaceC1465SM.SET_COOKIE)) {
            throw new MalformedCookieException("Unrecognized cookie header '" + header.toString() + "'");
        }
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
            return browserCompatSpec.parse(elements, cookieOrigin);
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
        HeaderElement parseHeader = netscapeDraftHeaderParser.parseHeader(charArrayBuffer, parserCursor);
        String name = parseHeader.getName();
        String value2 = parseHeader.getValue();
        if (name == null || name.isEmpty()) {
            throw new MalformedCookieException("Cookie name may not be empty");
        }
        BasicClientCookie basicClientCookie = new BasicClientCookie(name, value2);
        basicClientCookie.setPath(getDefaultPath(cookieOrigin));
        basicClientCookie.setDomain(getDefaultDomain(cookieOrigin));
        NameValuePair[] parameters = parseHeader.getParameters();
        int length = parameters.length - 1;
        while (length >= 0) {
            NameValuePair nameValuePair = parameters[length];
            String lowerCase = nameValuePair.getName().toLowerCase(Locale.ROOT);
            basicClientCookie.setAttribute(lowerCase, nameValuePair.getValue());
            CookieAttributeHandler findAttribHandler = browserCompatSpec.findAttribHandler(lowerCase);
            if (findAttribHandler != null) {
                findAttribHandler.parse(basicClientCookie, nameValuePair.getValue());
            }
            length--;
            browserCompatSpec = this;
        }
        if (z2) {
            basicClientCookie.setVersion(0);
        }
        return Collections.singletonList(basicClientCookie);
    }

    public String toString() {
        return "compatibility";
    }
}
