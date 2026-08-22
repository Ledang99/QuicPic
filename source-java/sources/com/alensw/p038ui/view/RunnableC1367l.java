package com.alensw.p038ui.view;

import com.alensw.p023b.p031h.C0714j;

/* renamed from: com.alensw.ui.view.l */
/* loaded from: classes.dex */
class RunnableC1367l implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f4779a;

    /* renamed from: b */
    final /* synthetic */ C1365j f4780b;

    RunnableC1367l(C1365j c1365j, int i) {
        this.f4780b = c1365j;
        this.f4779a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0714j c0714j;
        C0714j c0714j2;
        c0714j = this.f4780b.f4759b;
        if (c0714j != null) {
            c0714j2 = this.f4780b.f4759b;
            c0714j2.m2866m();
            this.f4780b.f4759b = null;
        }
        this.f4780b.f4730G = false;
        this.f4780b.f4724A = 0;
        this.f4780b.invalidate();
        if (this.f4780b.f4734K != null) {
            this.f4780b.f4734K.mo3962b(this.f4779a);
        }
    }
}
