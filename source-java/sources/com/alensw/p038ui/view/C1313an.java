package com.alensw.p038ui.view;

import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.an */
/* loaded from: classes.dex */
class C1313an extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ C1315ap f4533a;

    /* renamed from: b */
    final /* synthetic */ float f4534b;

    /* renamed from: c */
    final /* synthetic */ float f4535c;

    /* renamed from: d */
    final /* synthetic */ Runnable f4536d;

    /* renamed from: e */
    final /* synthetic */ LockPatternView f4537e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1313an(LockPatternView lockPatternView, View view, Interpolator interpolator, C1315ap c1315ap, float f, float f2, Runnable runnable) {
        super(view, interpolator);
        this.f4537e = lockPatternView;
        this.f4533a = c1315ap;
        this.f4534b = f;
        this.f4535c = f2;
        this.f4536d = runnable;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        this.f4533a.f4541a = this.f4534b + ((this.f4535c - this.f4534b) * f);
        this.f4537e.invalidate();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        if (this.f4536d != null) {
            this.f4536d.run();
        }
    }
}
