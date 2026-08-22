package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes.dex */
public class RFC6265CookieSpecProvider implements CookieSpecProvider {
    private final CompatibilityLevel compatibilityLevel;
    private volatile CookieSpec cookieSpec;
    private final PublicSuffixMatcher publicSuffixMatcher;

    /* renamed from: org.apache.http.impl.cookie.RFC6265CookieSpecProvider$2 */
    static /* synthetic */ class C14862 {

        /* renamed from: $SwitchMap$org$apache$http$impl$cookie$RFC6265CookieSpecProvider$CompatibilityLevel */
        static final /* synthetic */ int[] f5035x14f07ea0 = new int[CompatibilityLevel.values().length];

        static {
            try {
                f5035x14f07ea0[CompatibilityLevel.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5035x14f07ea0[CompatibilityLevel.IE_MEDIUM_SECURITY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public enum CompatibilityLevel {
        STRICT,
        RELAXED,
        IE_MEDIUM_SECURITY
    }

    public RFC6265CookieSpecProvider() {
        this(CompatibilityLevel.RELAXED, null);
    }

    public RFC6265CookieSpecProvider(PublicSuffixMatcher publicSuffixMatcher) {
        this(CompatibilityLevel.RELAXED, publicSuffixMatcher);
    }

    public RFC6265CookieSpecProvider(CompatibilityLevel compatibilityLevel, PublicSuffixMatcher publicSuffixMatcher) {
        this.compatibilityLevel = compatibilityLevel != null ? compatibilityLevel : CompatibilityLevel.RELAXED;
        this.publicSuffixMatcher = publicSuffixMatcher;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.cookieSpec == null) {
            synchronized (this) {
                if (this.cookieSpec == null) {
                    int i = C14862.f5035x14f07ea0[this.compatibilityLevel.ordinal()];
                    if (i == 1) {
                        this.cookieSpec = new RFC6265StrictSpec(new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(RFC6265StrictSpec.DATE_PATTERNS));
                    } else if (i != 2) {
                        this.cookieSpec = new RFC6265LaxSpec(new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher), new LaxMaxAgeHandler(), new BasicSecureHandler(), new LaxExpiresHandler());
                    } else {
                        this.cookieSpec = new RFC6265LaxSpec(new BasicPathHandler() { // from class: org.apache.http.impl.cookie.RFC6265CookieSpecProvider.1
                            @Override // org.apache.http.impl.cookie.BasicPathHandler, org.apache.http.cookie.CookieAttributeHandler
                            public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
                            }
                        }, PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.publicSuffixMatcher), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(RFC6265StrictSpec.DATE_PATTERNS));
                    }
                }
            }
        }
        return this.cookieSpec;
    }
}
