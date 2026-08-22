package com.alensw.transfer.p037a;

import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.transfer.a.e */
/* loaded from: classes.dex */
class RunnableC0969e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ByteBuffer f3422a;

    /* renamed from: b */
    final /* synthetic */ boolean f3423b;

    /* renamed from: c */
    final /* synthetic */ C0965a f3424c;

    /* renamed from: d */
    private int f3425d = 0;

    RunnableC0969e(C0965a c0965a, ByteBuffer byteBuffer, boolean z) {
        this.f3424c = c0965a;
        this.f3422a = byteBuffer;
        this.f3423b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        AtomicInteger atomicInteger;
        if (this.f3425d == 0) {
            atomicInteger = this.f3424c.f3399c;
            atomicInteger.set(1);
            Log.d("DiscoveryManager", "probing...");
        } else if (this.f3425d == 2) {
            this.f3424c.m3539a(250L);
        }
        this.f3425d++;
        this.f3424c.m3546a(this.f3422a, this.f3423b);
    }
}
