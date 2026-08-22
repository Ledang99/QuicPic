package com.alensw.p023b.p027d;

import android.os.Handler;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.b.d.h */
/* loaded from: classes.dex */
class RunnableC0672h implements Runnable {

    /* renamed from: a */
    final long f2561a;

    /* renamed from: b */
    final float f2562b;

    /* renamed from: c */
    final float f2563c;

    /* renamed from: d */
    final InterfaceC0671g f2564d;

    /* renamed from: e */
    final /* synthetic */ C0670f f2565e;

    public RunnableC0672h(C0670f c0670f, float f, float f2, long j, InterfaceC0671g interfaceC0671g) {
        this.f2565e = c0670f;
        this.f2561a = j;
        this.f2562b = f;
        this.f2563c = f2;
        this.f2564d = interfaceC0671g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RunnableC0672h)) {
            return false;
        }
        RunnableC0672h runnableC0672h = (RunnableC0672h) obj;
        return this.f2561a == runnableC0672h.f2561a && this.f2564d == runnableC0672h.f2564d;
    }

    public int hashCode() {
        return (int) (this.f2561a ^ (this.f2561a >>> 32));
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentHashMap concurrentHashMap;
        int i;
        ConcurrentHashMap concurrentHashMap2;
        Handler handler;
        ConcurrentHashMap concurrentHashMap3;
        C0668d c0668d;
        C0669e c0669e;
        C0666b c0666b;
        C0665a c0665a;
        C0667c c0667c = new C0667c();
        boolean z = false;
        boolean m2637b = C0670f.m2637b(this.f2562b, this.f2563c);
        if (m2637b) {
            c0666b = this.f2565e.f2554e;
            z = c0666b.m2624a(this.f2562b, this.f2563c, c0667c);
            if (!z) {
                c0665a = this.f2565e.f2553d;
                z = c0665a.m2623a(this.f2562b, this.f2563c, c0667c);
            }
        }
        if (!z) {
            c0669e = this.f2565e.f2555f;
            z = c0669e.m2630a(this.f2562b, this.f2563c, c0667c);
        }
        if (z) {
            if (m2637b) {
                c0667c.f2544b = C0670f.m2634a(c0667c.f2544b);
                c0667c.f2545c = C0670f.m2634a(c0667c.f2545c);
                c0667c.f2546d = C0670f.m2634a(c0667c.f2546d);
            }
            String m2625a = c0667c.m2625a();
            concurrentHashMap3 = this.f2565e.f2557h;
            concurrentHashMap3.put(Long.valueOf(this.f2561a), m2625a);
            c0668d = this.f2565e.f2556g;
            c0668d.m2550a(this.f2561a, m2625a);
            C0670f.m2641f(this.f2565e);
        }
        if (this.f2564d != null) {
            handler = this.f2565e.f2552a;
            handler.post(new RunnableC0673i(this, c0667c));
        }
        concurrentHashMap = this.f2565e.f2558i;
        concurrentHashMap.remove(Long.valueOf(this.f2561a));
        i = this.f2565e.f2559j;
        if (i > 0) {
            concurrentHashMap2 = this.f2565e.f2558i;
            if (concurrentHashMap2.isEmpty()) {
                this.f2565e.m2635a();
            }
        }
    }
}
