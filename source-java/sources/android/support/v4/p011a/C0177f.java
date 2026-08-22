package android.support.v4.p011a;

import android.os.Build;
import android.view.MotionEvent;

/* renamed from: android.support.v4.a.f */
/* loaded from: classes.dex */
public class C0177f {

    /* renamed from: a */
    static final InterfaceC0180i f775a;

    static {
        if (Build.VERSION.SDK_INT >= 5) {
            f775a = new C0179h();
        } else {
            f775a = new C0178g();
        }
    }

    /* renamed from: a */
    public static int m424a(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    /* renamed from: a */
    public static int m425a(MotionEvent motionEvent, int i) {
        return f775a.mo432a(motionEvent, i);
    }

    /* renamed from: b */
    public static int m426b(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    /* renamed from: b */
    public static int m427b(MotionEvent motionEvent, int i) {
        return f775a.mo433b(motionEvent, i);
    }

    /* renamed from: c */
    public static float m428c(MotionEvent motionEvent, int i) {
        return f775a.mo434c(motionEvent, i);
    }

    /* renamed from: c */
    public static int m429c(MotionEvent motionEvent) {
        return f775a.mo431a(motionEvent);
    }

    /* renamed from: d */
    public static float m430d(MotionEvent motionEvent, int i) {
        return f775a.mo435d(motionEvent, i);
    }
}
