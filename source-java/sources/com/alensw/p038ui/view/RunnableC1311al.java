package com.alensw.p038ui.view;

import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.al */
/* loaded from: classes.dex */
class RunnableC1311al implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1315ap f4525a;

    /* renamed from: b */
    final /* synthetic */ LockPatternView f4526b;

    RunnableC1311al(LockPatternView lockPatternView, C1315ap c1315ap) {
        this.f4526b = lockPatternView;
        this.f4525a = c1315ap;
    }

    @Override // java.lang.Runnable
    public void run() {
        float f;
        Interpolator interpolator;
        LockPatternView lockPatternView = this.f4526b;
        f = this.f4526b.f4420c;
        interpolator = this.f4526b.f4442y;
        lockPatternView.m4279a(f, 1.0f, 192L, interpolator, this.f4525a, (Runnable) null);
    }
}
