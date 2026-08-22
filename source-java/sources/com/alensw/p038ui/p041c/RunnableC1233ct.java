package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0593ah;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0634p;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p031h.C0712h;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.alensw.ui.c.ct */
/* loaded from: classes.dex */
class RunnableC1233ct implements InterfaceC0595aj, Runnable {

    /* renamed from: a */
    final /* synthetic */ C1212bz f4076a;

    /* renamed from: b */
    private final AtomicReference f4077b = new AtomicReference();

    /* renamed from: c */
    private final C0634p f4078c;

    /* renamed from: d */
    private final C0623e f4079d;

    /* renamed from: e */
    private final int f4080e;

    /* renamed from: f */
    private int f4081f;

    public RunnableC1233ct(C1212bz c1212bz, C0623e c0623e, C0634p c0634p, int i, int i2) {
        this.f4076a = c1212bz;
        this.f4078c = c0634p;
        this.f4079d = c0623e;
        this.f4080e = i;
        this.f4081f = i2;
    }

    @Override // com.alensw.p022a.InterfaceC0595aj
    /* renamed from: a */
    public void mo2170a(Object obj, C0712h c0712h) {
        this.f4077b.set(c0712h.mo2865l());
        this.f4076a.f4021j.m4394a(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        C0712h c0712h = (C0712h) this.f4077b.getAndSet(null);
        if (this.f4076a.f4087H == 2 && this.f4078c.m2429c()) {
            this.f4078c.m2422a(this.f4081f, c0712h);
            this.f4076a.f4021j.m4268d(this.f4076a.f4023l.m2499b(this.f4079d));
            if (this.f4081f + 1 < Math.min(this.f4080e, this.f4079d.m2390j())) {
                C0593ah c0593ah = QuickApp.f2077t;
                C0623e c0623e = this.f4079d;
                int i = this.f4081f + 1;
                this.f4081f = i;
                c0593ah.m2165a(c0623e.m2381e(i), false, (InterfaceC0595aj) this);
            }
        }
        if (c0712h != null) {
            c0712h.m2866m();
        }
    }
}
