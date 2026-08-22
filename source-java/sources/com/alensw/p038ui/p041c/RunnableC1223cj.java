package com.alensw.p038ui.p041c;

import com.alensw.p022a.C0623e;

/* renamed from: com.alensw.ui.c.cj */
/* loaded from: classes.dex */
class RunnableC1223cj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0623e f4063a;

    /* renamed from: b */
    final /* synthetic */ C1212bz f4064b;

    RunnableC1223cj(C1212bz c1212bz, C0623e c0623e) {
        this.f4064b = c1212bz;
        this.f4063a = c0623e;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4064b.m3878a(this.f4063a, true, (Runnable) new RunnableC1224ck(this));
    }
}
