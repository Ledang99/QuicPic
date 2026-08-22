package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;

/* renamed from: com.alensw.ui.c.br */
/* loaded from: classes.dex */
class RunnableC1204br implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1192bf f4001a;

    RunnableC1204br(C1192bf c1192bf) {
        this.f4001a = c1192bf;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4001a.m3878a(this.f4001a.f3963g, true, (Runnable) null);
        if (QuickApp.f2074q.f2452b) {
            return;
        }
        QuickApp.f2072o.m2510f(this.f4001a.f3963g);
        QuickApp.f2072o.m2498a(true);
    }
}
