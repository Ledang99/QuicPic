package android.support.v4.widget;

import android.view.animation.Interpolator;

/* renamed from: android.support.v4.widget.m */
/* loaded from: classes.dex */
final class InterpolatorC0210m implements Interpolator {
    InterpolatorC0210m() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
