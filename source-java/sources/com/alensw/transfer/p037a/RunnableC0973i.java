package com.alensw.transfer.p037a;

import android.util.Log;
import java.net.InetAddress;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.transfer.a.i */
/* loaded from: classes.dex */
class RunnableC0973i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0979o f3435a;

    /* renamed from: b */
    final /* synthetic */ C0965a f3436b;

    RunnableC0973i(C0965a c0965a, C0979o c0979o) {
        this.f3436b = c0965a;
        this.f3435a = c0979o;
    }

    @Override // java.lang.Runnable
    public void run() {
        AtomicInteger atomicInteger;
        C0984t c0984t;
        boolean equals;
        int m3568i;
        String str;
        C0984t c0984t2;
        Random random;
        atomicInteger = this.f3436b.f3399c;
        int i = atomicInteger.get();
        if (i == 0 || i == 3) {
            return;
        }
        if (!this.f3435a.m3598b()) {
            this.f3436b.m3555b(this.f3435a);
        } else if (i == 2) {
            C0965a c0965a = this.f3436b;
            InetAddress m3603g = this.f3435a.m3603g();
            random = this.f3436b.f3401e;
            c0965a.m3545a(m3603g, random.nextInt(90) + 10);
        }
        if (i == 1) {
            synchronized (this) {
                String m3602f = this.f3435a.m3602f();
                c0984t = this.f3436b.f3407k;
                equals = m3602f.equals(c0984t.m3611a());
                if (equals) {
                    m3568i = this.f3436b.m3568i();
                    StringBuilder sb = new StringBuilder();
                    str = this.f3436b.f3408l;
                    String sb2 = sb.append(str).append(String.format(" (%x)", Integer.valueOf(m3568i)).toUpperCase()).toString();
                    c0984t2 = this.f3436b.f3407k;
                    c0984t2.m3613a(sb2);
                    Log.d("DiscoveryManager", "change name: " + sb2);
                }
            }
            if (equals) {
                this.f3436b.m3559d();
                this.f3436b.m3533a(10L, false);
            }
        }
    }
}
