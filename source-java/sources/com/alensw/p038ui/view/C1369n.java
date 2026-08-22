package com.alensw.p038ui.view;

import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.n */
/* loaded from: classes.dex */
class C1369n extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ float f4793a;

    /* renamed from: b */
    final /* synthetic */ float f4794b;

    /* renamed from: c */
    final /* synthetic */ float f4795c;

    /* renamed from: d */
    final /* synthetic */ float f4796d;

    /* renamed from: e */
    final /* synthetic */ float f4797e;

    /* renamed from: f */
    final /* synthetic */ C1365j f4798f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1369n(C1365j c1365j, View view, Interpolator interpolator, float f, float f2, float f3, float f4, float f5) {
        super(view, interpolator);
        this.f4798f = c1365j;
        this.f4793a = f;
        this.f4794b = f2;
        this.f4795c = f3;
        this.f4796d = f4;
        this.f4797e = f5;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        this.f4798f.f4732I = true;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        this.f4798f.m4447b(this.f4793a + (this.f4794b * f), this.f4795c, this.f4796d);
        this.f4798f.m4456c(0.0f);
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f4798f.f4733J = null;
        this.f4798f.f4732I = false;
        this.f4798f.m4447b(this.f4797e, this.f4795c, this.f4796d);
        this.f4798f.m4456c(0.0f);
    }
}
