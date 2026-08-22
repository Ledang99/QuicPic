package com.alensw.transfer.p037a;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.transfer.a.f */
/* loaded from: classes.dex */
class RunnableC0970f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ByteBuffer f3426a;

    /* renamed from: b */
    final /* synthetic */ C0965a f3427b;

    /* renamed from: c */
    private int f3428c = 0;

    RunnableC0970f(C0965a c0965a, ByteBuffer byteBuffer) {
        this.f3427b = c0965a;
        this.f3426a = byteBuffer;
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentHashMap concurrentHashMap;
        C0984t c0984t;
        ConcurrentHashMap concurrentHashMap2;
        InterfaceC0974j interfaceC0974j;
        AtomicInteger atomicInteger;
        InterfaceC0974j interfaceC0974j2;
        C0984t c0984t2;
        if (this.f3428c == 0) {
            atomicInteger = this.f3427b.f3399c;
            atomicInteger.set(2);
            Log.d("DiscoveryManager", "updating...");
            interfaceC0974j2 = this.f3427b.f3416t;
            if (interfaceC0974j2 != null) {
                c0984t2 = this.f3427b.f3407k;
                interfaceC0974j2.mo3585a(c0984t2);
            }
        } else if (this.f3428c > 3) {
            concurrentHashMap = this.f3427b.f3398b;
            for (C0984t c0984t3 : concurrentHashMap.values()) {
                if (c0984t3 != null) {
                    c0984t = C0965a.f3397a;
                    if (c0984t3 != c0984t && c0984t3.f3459a < System.currentTimeMillis()) {
                        concurrentHashMap2 = this.f3427b.f3398b;
                        concurrentHashMap2.remove(c0984t3.m3614b());
                        interfaceC0974j = this.f3427b.f3416t;
                        if (interfaceC0974j != null) {
                            interfaceC0974j.mo3587c(c0984t3);
                        }
                        Log.w("DiscoveryManager", "drop timeout peer: " + c0984t3);
                    }
                }
            }
        }
        this.f3428c++;
        this.f3427b.m3546a(this.f3426a, false);
    }
}
