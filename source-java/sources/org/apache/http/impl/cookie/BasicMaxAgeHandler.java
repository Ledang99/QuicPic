package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.InterfaceC1465SM;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Immutable
/* loaded from: classes.dex */
public class BasicMaxAgeHandler extends AbstractCookieAttributeHandler implements CommonCookieAttributeHandler {
    @Override // org.apache.http.cookie.CommonCookieAttributeHandler
    public String getAttributeName() {
        return ClientCookie.MAX_AGE_ATTR;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        Args.notNull(setCookie, InterfaceC1465SM.COOKIE);
        if (str == null) {
            throw new MalformedCookieException("Missing value for 'max-age' attribute");
        }
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt >= 0) {
                setCookie.setExpiryDate(new Date(System.currentTimeMillis() + (parseInt * 1000)));
                return;
            }
            throw new MalformedCookieException("Negative 'max-age' attribute: " + str);
        } catch (NumberFormatException e) {
            throw new MalformedCookieException("Invalid 'max-age' attribute: " + str);
        }
    }
}
