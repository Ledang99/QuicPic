package com.alensw.transfer.p037a;

import android.util.Log;
import com.alensw.p023b.p034k.C0730a;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.transfer.a.h */
/* loaded from: classes.dex */
class RunnableC0972h implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ByteBuffer f3432a;

    /* renamed from: b */
    final /* synthetic */ C0965a f3433b;

    /* renamed from: c */
    private int f3434c = 0;

    RunnableC0972h(C0965a c0965a, ByteBuffer byteBuffer) {
        this.f3433b = c0965a;
        this.f3432a = byteBuffer;
    }

    @Override // java.lang.Runnable
    public void run() {
        AtomicInteger atomicInteger;
        C0730a c0730a;
        int i = this.f3434c;
        this.f3434c = i + 1;
        if (i == 0) {
            atomicInteger = this.f3433b.f3399c;
            atomicInteger.set(3);
            c0730a = this.f3433b.f3405i;
            c0730a.m2936a(new C0975k(this.f3433b, 1));
            Log.d("DiscoveryManager", "leaving...");
        }
        this.f3433b.m3546a(this.f3432a, false);
    }
}
