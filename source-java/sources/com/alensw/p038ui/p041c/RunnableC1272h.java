package com.alensw.p038ui.p041c;

import com.alensw.p022a.C0623e;

/* renamed from: com.alensw.ui.c.h */
/* loaded from: classes.dex */
class RunnableC1272h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0623e f4221a;

    /* renamed from: b */
    final /* synthetic */ C0623e f4222b;

    /* renamed from: c */
    final /* synthetic */ Runnable f4223c;

    /* renamed from: d */
    final /* synthetic */ C1159a f4224d;

    RunnableC1272h(C1159a c1159a, C0623e c0623e, C0623e c0623e2, Runnable runnable) {
        this.f4224d = c1159a;
        this.f4221a = c0623e;
        this.f4222b = c0623e2;
        this.f4223c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4221a.m2371b(false);
        this.f4224d.f3851b.post(new RunnableC1273i(this));
    }
}
