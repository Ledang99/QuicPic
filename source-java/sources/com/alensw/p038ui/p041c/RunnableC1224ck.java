package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;

/* renamed from: com.alensw.ui.c.ck */
/* loaded from: classes.dex */
class RunnableC1224ck implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RunnableC1223cj f4065a;

    RunnableC1224ck(RunnableC1223cj runnableC1223cj) {
        this.f4065a = runnableC1223cj;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!QuickApp.f2074q.f2452b) {
            this.f4065a.f4064b.f4023l.m2510f(this.f4065a.f4063a);
            this.f4065a.f4064b.f4023l.m2498a(true);
            if (this.f4065a.f4064b.f4082C.m3832q()) {
                this.f4065a.f4064b.f4082C.m3813d(false);
            }
        }
        this.f4065a.f4064b.f4021j.requestLayout();
    }
}
