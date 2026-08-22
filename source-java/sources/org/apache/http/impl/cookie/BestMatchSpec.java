package org.apache.http.impl.cookie;

import org.apache.http.annotation.ThreadSafe;

@ThreadSafe
@Deprecated
/* loaded from: classes.dex */
public class BestMatchSpec extends DefaultCookieSpec {
    public BestMatchSpec() {
        this(null, false);
    }

    public BestMatchSpec(String[] strArr, boolean z) {
        super(strArr, z);
    }

    @Override // org.apache.http.impl.cookie.DefaultCookieSpec
    public String toString() {
        return "best-match";
    }
}
