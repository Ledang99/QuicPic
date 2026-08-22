package com.alensw.p038ui.p041c;

/* renamed from: com.alensw.ui.c.i */
/* loaded from: classes.dex */
class RunnableC1273i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RunnableC1272h f4225a;

    RunnableC1273i(RunnableC1272h runnableC1272h) {
        this.f4225a = runnableC1272h;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4225a.f4222b.m2366a(this.f4225a.f4221a, true);
        this.f4225a.f4224d.m4029c(false);
        if (this.f4225a.f4223c != null) {
            this.f4225a.f4223c.run();
        }
    }
}
