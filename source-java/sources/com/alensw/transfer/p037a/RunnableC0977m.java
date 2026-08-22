package com.alensw.transfer.p037a;

import android.util.Log;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.transfer.a.m */
/* loaded from: classes.dex */
class RunnableC0977m implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0975k f3442a;

    RunnableC0977m(C0975k c0975k) {
        this.f3442a = c0975k;
    }

    @Override // java.lang.Runnable
    public void run() {
        ByteBuffer m3537a;
        ConcurrentHashMap concurrentHashMap;
        AtomicInteger atomicInteger;
        ConcurrentHashMap concurrentHashMap2;
        C0984t c0984t;
        AtomicInteger atomicInteger2;
        m3537a = this.f3442a.f3437a.m3537a(1, 0);
        concurrentHashMap = this.f3442a.f3437a.f3398b;
        for (InetAddress inetAddress : concurrentHashMap.keySet()) {
            atomicInteger = this.f3442a.f3437a.f3399c;
            if (atomicInteger.get() != 1) {
                atomicInteger2 = this.f3442a.f3437a.f3399c;
                if (atomicInteger2.get() != 2) {
                    return;
                }
            }
            concurrentHashMap2 = this.f3442a.f3437a.f3398b;
            Object obj = concurrentHashMap2.get(inetAddress);
            c0984t = C0965a.f3397a;
            if (obj == c0984t) {
                this.f3442a.f3437a.m3549a(m3537a, inetAddress);
                Log.d("DiscoveryManager", "send to peer hub: " + inetAddress);
            }
        }
    }
}
