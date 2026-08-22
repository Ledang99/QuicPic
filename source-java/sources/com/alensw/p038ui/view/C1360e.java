package com.alensw.p038ui.view;

import android.graphics.Camera;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

/* renamed from: com.alensw.ui.view.e */
/* loaded from: classes.dex */
public class C1360e {
    /* renamed from: a */
    public static Animation m4421a(int i, boolean z, int i2, int i3, int i4) {
        switch (i) {
            case 2:
                return m4423a(z, i2 + i4);
            case 3:
                return m4426c(z, i2, i3);
            case 4:
                return m4425b(z, i2, i3);
            case 5:
                return z ? m4424a(z, i2, i3) : m4423a(z, i2 + i4);
            default:
                return m4422a(z);
        }
    }

    /* renamed from: a */
    public static Animation m4422a(boolean z) {
        return new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
    }

    /* renamed from: a */
    public static Animation m4423a(boolean z, int i) {
        return new C1364i(z, i);
    }

    /* renamed from: a */
    public static Animation m4424a(boolean z, int i, int i2) {
        float f = i / 2.0f;
        float f2 = i2 / 2.0f;
        float f3 = z ? 0.5f : 1.0f;
        return new C1361f(f3, (z ? 1.0f : 0.5f) - f3, f, f2);
    }

    /* renamed from: b */
    public static Animation m4425b(boolean z, int i, int i2) {
        return new C1362g(z ? 180.0f : 0.0f, z ? 0.0f : -180.0f, new Camera(), i / 2.0f, i / 2.0f, i2 / 2.0f, z);
    }

    /* renamed from: c */
    public static Animation m4426c(boolean z, int i, int i2) {
        float f = i / 2.0f;
        return new C1363h(z ? 180.0f : 0.0f, z ? 0.0f : -180.0f, new Camera(), i / 2.0f, i2 / 2.0f, z);
    }
}
