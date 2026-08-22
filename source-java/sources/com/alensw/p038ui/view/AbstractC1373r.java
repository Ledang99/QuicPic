package com.alensw.p038ui.view;

import android.graphics.Color;
import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.r */
/* loaded from: classes.dex */
public abstract class AbstractC1373r extends RunnableC1346bt {

    /* renamed from: a */
    private final int f4825a;

    /* renamed from: b */
    private final int f4826b;

    /* renamed from: c */
    private final int f4827c;

    /* renamed from: d */
    private final int f4828d;

    /* renamed from: e */
    private final int f4829e;

    /* renamed from: f */
    private final int f4830f;

    /* renamed from: g */
    private final int f4831g;

    /* renamed from: h */
    private final int f4832h;

    public AbstractC1373r(View view, Interpolator interpolator, int i, int i2) {
        super(view, interpolator);
        this.f4825a = Color.alpha(i);
        this.f4826b = Color.red(i);
        this.f4827c = Color.green(i);
        this.f4828d = Color.blue(i);
        this.f4829e = Color.alpha(i2) - this.f4825a;
        this.f4830f = Color.red(i2) - this.f4826b;
        this.f4831g = Color.green(i2) - this.f4827c;
        this.f4832h = Color.blue(i2) - this.f4828d;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        mo3838a(Color.argb(this.f4825a + ((int) (this.f4829e * f)), this.f4826b + ((int) (this.f4830f * f)), this.f4827c + ((int) (this.f4831g * f)), this.f4828d + ((int) (this.f4832h * f))));
    }

    /* renamed from: a */
    public abstract void mo3838a(int i);
}
