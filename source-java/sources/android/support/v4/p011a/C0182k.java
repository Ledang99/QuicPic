package android.support.v4.p011a;

import android.os.Build;
import android.view.VelocityTracker;

/* renamed from: android.support.v4.a.k */
/* loaded from: classes.dex */
public class C0182k {

    /* renamed from: a */
    static final InterfaceC0185n f777a;

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f777a = new C0184m();
        } else {
            f777a = new C0183l();
        }
    }

    /* renamed from: a */
    public static float m453a(VelocityTracker velocityTracker, int i) {
        return f777a.mo455a(velocityTracker, i);
    }

    /* renamed from: b */
    public static float m454b(VelocityTracker velocityTracker, int i) {
        return f777a.mo456b(velocityTracker, i);
    }
}
