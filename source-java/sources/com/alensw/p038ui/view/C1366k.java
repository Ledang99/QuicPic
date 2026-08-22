package com.alensw.p038ui.view;

import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.k */
/* loaded from: classes.dex */
class C1366k extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ float f4773a;

    /* renamed from: b */
    final /* synthetic */ float f4774b;

    /* renamed from: c */
    final /* synthetic */ Runnable f4775c;

    /* renamed from: d */
    final /* synthetic */ C1365j f4776d;

    /* renamed from: e */
    private float f4777e;

    /* renamed from: f */
    private float f4778f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1366k(C1365j c1365j, View view, Interpolator interpolator, float f, float f2, Runnable runnable) {
        super(view, interpolator);
        this.f4776d = c1365j;
        this.f4773a = f;
        this.f4774b = f2;
        this.f4775c = runnable;
        this.f4777e = 0.0f;
        this.f4778f = 0.0f;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        this.f4776d.f4729F = true;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        float f2 = this.f4773a * f;
        float f3 = this.f4774b * f;
        this.f4776d.m4446b(f2 - this.f4777e, f3 - this.f4778f);
        this.f4777e = f2;
        this.f4778f = f3;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f4776d.f4733J = null;
        this.f4776d.f4729F = false;
        this.f4776d.m4465j();
        this.f4776d.invalidate();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: c */
    public void mo4403c() {
        super.mo4403c();
        if (this.f4775c != null) {
            this.f4775c.run();
        }
    }
}
