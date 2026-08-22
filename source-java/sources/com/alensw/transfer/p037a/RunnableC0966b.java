package com.alensw.transfer.p037a;

import android.util.Log;
import com.alensw.p023b.p034k.C0730a;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.transfer.a.b */
/* loaded from: classes.dex */
class RunnableC0966b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0984t f3418a;

    /* renamed from: b */
    final /* synthetic */ C0965a f3419b;

    RunnableC0966b(C0965a c0965a, C0984t c0984t) {
        this.f3419b = c0965a;
        this.f3418a = c0984t;
    }

    @Override // java.lang.Runnable
    public void run() {
        AtomicInteger atomicInteger;
        C0730a c0730a;
        InterfaceC0974j interfaceC0974j;
        this.f3419b.m3556c();
        atomicInteger = this.f3419b.f3399c;
        atomicInteger.set(0);
        this.f3419b.m3560e();
        Log.d("DiscoveryManager", "create");
        this.f3419b.m3533a(10L, true);
        c0730a = this.f3419b.f3405i;
        c0730a.m2936a(new C0975k(this.f3419b, 0));
        this.f3419b.m3564g();
        interfaceC0974j = this.f3419b.f3416t;
        if (interfaceC0974j != null) {
            interfaceC0974j.mo3585a(this.f3418a);
        }
    }
}
