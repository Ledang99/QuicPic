package com.alensw.p023b.p031h;

import android.os.Handler;
import android.os.SystemClock;
import com.alensw.p023b.p034k.C0735f;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;

/* renamed from: com.alensw.b.h.g */
/* loaded from: classes.dex */
class C0711g implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ C0708d f2693a;

    /* renamed from: b */
    private volatile boolean f2694b;

    /* renamed from: c */
    private final C0735f f2695c;

    /* renamed from: d */
    private final Object f2696d;

    private C0711g(C0708d c0708d) {
        this.f2693a = c0708d;
        this.f2695c = new C0735f();
        this.f2696d = new Object();
    }

    /* renamed from: e */
    private RunnableC0710f m2833e() {
        RunnableC0710f runnableC0710f;
        synchronized (this.f2695c) {
            runnableC0710f = (RunnableC0710f) this.f2695c.m2945b();
            if (runnableC0710f == null && !this.f2694b) {
                try {
                    this.f2695c.wait(100L);
                } catch (Throwable th) {
                }
            }
        }
        return runnableC0710f;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f2694b = true;
        synchronized (this.f2696d) {
            this.f2696d.notifyAll();
        }
        m2835c();
    }

    /* renamed from: a */
    public void m2834a(RunnableC0710f runnableC0710f) {
        synchronized (this.f2695c) {
            this.f2695c.m2944a(runnableC0710f);
            this.f2695c.notifyAll();
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    /* renamed from: c */
    public void m2835c() {
        synchronized (this.f2695c) {
            this.f2695c.m2943a();
            this.f2695c.notifyAll();
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Void call() {
        int i;
        int m2813a;
        int i2;
        Handler handler;
        while (!this.f2694b) {
            RunnableC0710f m2833e = m2833e();
            if (m2833e != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                i = this.f2693a.f2679k;
                m2833e.f2691c = i;
                m2813a = this.f2693a.m2813a(m2833e.f2691c, m2833e.f2689a, m2833e.f2690b);
                int m2825d = C0708d.m2825d(this.f2693a);
                i2 = this.f2693a.f2681m;
                if (m2825d >= i2) {
                    this.f2693a.f2679k = 0;
                }
                if (m2813a > 0 && !this.f2694b) {
                    handler = this.f2693a.f2686r;
                    handler.post(m2833e);
                }
                int max = Math.max(m2813a - ((int) (SystemClock.uptimeMillis() - uptimeMillis)), 10);
                if (this.f2694b) {
                    continue;
                } else {
                    synchronized (this.f2696d) {
                        try {
                            this.f2696d.wait(max);
                        } catch (Throwable th) {
                        }
                    }
                }
            }
        }
        return null;
    }
}
