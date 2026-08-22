package com.alensw.p038ui.view;

import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.d */
/* loaded from: classes.dex */
class C1359d extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ C1299a f4702a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1359d(C1299a c1299a, View view, Interpolator interpolator) {
        super(view, interpolator);
        this.f4702a = c1299a;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        boolean z;
        int i = (int) (this.f4702a.f4495c * f);
        z = this.f4702a.f4498f;
        if (!z) {
            i = this.f4702a.f4495c - i;
        }
        this.f4702a.mo4340b(i);
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        Runnable runnable;
        runnable = this.f4702a.f4500h;
        runnable.run();
    }
}
