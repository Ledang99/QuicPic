package com.alensw.p038ui.view;

import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.cc */
/* loaded from: classes.dex */
public class InterpolatorC1356cc implements Interpolator {

    /* renamed from: a */
    private float f4679a;

    /* renamed from: b */
    private float f4680b;

    public InterpolatorC1356cc() {
        this(6.0f);
    }

    public InterpolatorC1356cc(float f) {
        this.f4679a = 6.0f;
        this.f4680b = 1.0f;
        this.f4679a = f;
        this.f4680b = 1.0f / getInterpolation(1.0f);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        float f2 = this.f4679a * f;
        return (f2 < 1.0f ? f2 - (1.0f - ((float) Math.exp(-f2))) : ((1.0f - ((float) Math.exp(1.0f - f2))) * (1.0f - 0.36787945f)) + 0.36787945f) * this.f4680b;
    }
}
