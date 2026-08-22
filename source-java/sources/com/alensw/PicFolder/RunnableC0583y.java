package com.alensw.PicFolder;

import android.os.Message;

/* renamed from: com.alensw.PicFolder.y */
/* loaded from: classes.dex */
class RunnableC0583y implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Message f2256a;

    /* renamed from: b */
    final /* synthetic */ RunnableC0582x f2257b;

    RunnableC0583y(RunnableC0582x runnableC0582x, Message message) {
        this.f2257b = runnableC0582x;
        this.f2256a = message;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2257b.f2251d) {
            if (this.f2257b.f2255h.f2227q != null) {
                this.f2257b.f2255h.f2227q.recycle();
            }
            this.f2257b.f2255h.f2227q = null;
        }
        if (this.f2257b.f2251d) {
            this.f2257b.f2255h.m2127a(0);
        }
        this.f2257b.f2255h.f2229s.sendMessage(this.f2256a);
    }
}
