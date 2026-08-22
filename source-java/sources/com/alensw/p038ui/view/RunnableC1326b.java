package com.alensw.p038ui.view;

/* renamed from: com.alensw.ui.view.b */
/* loaded from: classes.dex */
class RunnableC1326b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1299a f4569a;

    RunnableC1326b(C1299a c1299a) {
        this.f4569a = c1299a;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4569a.mo4337a(false);
        this.f4569a.f4493a.removeCallbacks(this);
    }
}
