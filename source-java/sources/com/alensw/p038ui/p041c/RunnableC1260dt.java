package com.alensw.p038ui.p041c;

import com.alensw.p022a.C0623e;

/* renamed from: com.alensw.ui.c.dt */
/* loaded from: classes.dex */
class RunnableC1260dt implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4201a;

    RunnableC1260dt(C1256dp c1256dp) {
        this.f4201a = c1256dp;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0623e c0623e;
        C0623e c0623e2;
        if (this.f4201a.f4087H == 2) {
            c0623e = this.f4201a.f4183m;
            if (c0623e.m2393m()) {
                C1256dp c1256dp = this.f4201a;
                c0623e2 = this.f4201a.f4183m;
                c1256dp.m3872a(c0623e2, (Runnable) null);
            }
            this.f4201a.f3851b.postDelayed(this, 60000L);
        }
    }
}
