package android.support.v4.p011a;

import android.os.Build;

/* renamed from: android.support.v4.a.a */
/* loaded from: classes.dex */
public class C0171a {

    /* renamed from: a */
    static final InterfaceC0173b f774a;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f774a = new C0175d();
        } else {
            f774a = new C0174c();
        }
    }

    /* renamed from: a */
    public static int m420a(int i, int i2) {
        return f774a.mo422a(i, i2);
    }
}
