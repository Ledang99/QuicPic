package com.alensw.p038ui.view;

import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.am */
/* loaded from: classes.dex */
class C1312am extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ C1315ap f4527a;

    /* renamed from: b */
    final /* synthetic */ float f4528b;

    /* renamed from: c */
    final /* synthetic */ float f4529c;

    /* renamed from: d */
    final /* synthetic */ float f4530d;

    /* renamed from: e */
    final /* synthetic */ float f4531e;

    /* renamed from: f */
    final /* synthetic */ LockPatternView f4532f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1312am(LockPatternView lockPatternView, View view, Interpolator interpolator, C1315ap c1315ap, float f, float f2, float f3, float f4) {
        super(view, interpolator);
        this.f4532f = lockPatternView;
        this.f4527a = c1315ap;
        this.f4528b = f;
        this.f4529c = f2;
        this.f4530d = f3;
        this.f4531e = f4;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        this.f4527a.f4544d = ((1.0f - f) * this.f4528b) + (this.f4529c * f);
        this.f4527a.f4545e = ((1.0f - f) * this.f4530d) + (this.f4531e * f);
        this.f4532f.invalidate();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f4527a.f4546f = null;
    }
}
