package com.alensw.transfer;

import android.app.Activity;
import com.alensw.transfer.p037a.C0984t;

/* renamed from: com.alensw.transfer.af */
/* loaded from: classes.dex */
class RunnableC0990af implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0984t f3499a;

    /* renamed from: b */
    final /* synthetic */ C0989ae f3500b;

    RunnableC0990af(C0989ae c0989ae, C0984t c0984t) {
        this.f3500b = c0989ae;
        this.f3499a = c0984t;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3500b.f3498a.f3475e = this.f3499a;
        Activity g = this.f3500b.f3498a.m3531g();
        if (g != null) {
            ((TransferActivity) g).m3806a(this.f3499a.m3611a());
        }
    }
}
