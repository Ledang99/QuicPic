package com.alensw.p038ui.p041c;

import com.alensw.p022a.C0623e;

/* renamed from: com.alensw.ui.c.cb */
/* loaded from: classes.dex */
class RunnableC1215cb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0623e f4046a;

    /* renamed from: b */
    final /* synthetic */ C1212bz f4047b;

    RunnableC1215cb(C1212bz c1212bz, C0623e c0623e) {
        this.f4047b = c1212bz;
        this.f4046a = c0623e;
    }

    @Override // java.lang.Runnable
    public void run() {
        int m2494a = this.f4047b.f4023l.m2494a(this.f4046a);
        if (m2494a >= 0) {
            this.f4047b.f4021j.m4258b(m2494a);
        } else {
            this.f4047b.m3872a(this.f4046a, new RunnableC1216cc(this));
        }
    }
}
