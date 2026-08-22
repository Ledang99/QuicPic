package com.alensw.p038ui.p041c;

/* renamed from: com.alensw.ui.c.ca */
/* loaded from: classes.dex */
class RunnableC1214ca implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f4044a;

    /* renamed from: b */
    final /* synthetic */ C1212bz f4045b;

    RunnableC1214ca(C1212bz c1212bz, int i) {
        this.f4045b = c1212bz;
        this.f4044a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4045b.f4033v = this.f4044a;
        this.f4045b.f4021j.m4256b(this.f4045b.f4033v, true);
    }
}
