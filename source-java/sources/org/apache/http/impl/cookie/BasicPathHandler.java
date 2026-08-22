package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
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
public class BasicPathHandler implements CommonCookieAttributeHandler {
    static boolean pathMatch(String str, String str2) {
        String str3 = str2;
        if (str3 == null) {
            str3 = "/";
        }
        if (str3.length() > 1 && str3.endsWith("/")) {
            str3 = str3.substring(0, str3.length() - 1);
        }
        return str.startsWith(str3) && (str3.equals("/") || str.length() == str3.length() || str.charAt(str3.length()) == '/');
    }

    @Override // org.apache.http.cookie.CommonCookieAttributeHandler
    public String getAttributeName() {
        return ClientCookie.PATH_ATTR;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        Args.notNull(cookie, InterfaceC1465SM.COOKIE);
        Args.notNull(cookieOrigin, "Cookie origin");
        return pathMatch(cookieOrigin.getPath(), cookie.getPath());
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, InterfaceC1465SM.COOKIE);
        setCookie.setPath(!TextUtils.isBlank(str) ? str : "/");
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        if (match(cookie, cookieOrigin)) {
            return;
        }
        throw new CookieRestrictionViolationException("Illegal 'path' attribute \"" + cookie.getPath() + "\". Path of origin: \"" + cookieOrigin.getPath() + "\"");
    }
}
