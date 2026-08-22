package android.support.v4.p011a;

import android.view.animation.Interpolator;

/* renamed from: android.support.v4.a.r */
/* loaded from: classes.dex */
final class InterpolatorC0189r implements Interpolator {
    InterpolatorC0189r() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
