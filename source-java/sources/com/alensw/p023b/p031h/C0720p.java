package com.alensw.p023b.p031h;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import com.alensw.p023b.p032i.C0723b;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;

/* renamed from: com.alensw.b.h.p */
/* loaded from: classes.dex */
class C0720p implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ C0718n f2740a;

    /* renamed from: b */
    private volatile boolean f2741b;

    /* renamed from: c */
    private int f2742c;

    /* renamed from: d */
    private C0705a f2743d;

    /* renamed from: e */
    private final C0723b f2744e;

    private C0720p(C0718n c0718n) {
        this.f2740a = c0718n;
        this.f2742c = -1;
        this.f2744e = new C0723b(1024);
    }

    /* synthetic */ C0720p(C0718n c0718n, C0719o c0719o) {
        this(c0718n);
    }

    /* renamed from: e */
    private int m2891e() {
        int i;
        synchronized (this.f2744e) {
            if (this.f2744e.m2904c() == 0 && !this.f2741b) {
                try {
                    this.f2744e.wait(100L);
                } catch (Throwable th) {
                }
            }
            this.f2742c = this.f2744e.m2904c() > 0 ? this.f2744e.m2902b() : -1;
            i = this.f2742c;
        }
        return i;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f2741b = true;
        m2893c();
    }

    /* renamed from: a */
    public boolean m2892a(int i) {
        synchronized (this.f2744e) {
            if (this.f2744e.m2901a(i) || this.f2742c == i) {
                return false;
            }
            this.f2744e.m2903b(i);
            this.f2744e.notifyAll();
            return true;
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    /* renamed from: c */
    public void m2893c() {
        synchronized (this.f2744e) {
            this.f2744e.m2900a();
            this.f2744e.notifyAll();
        }
        synchronized (this) {
            if (this.f2743d != null) {
                this.f2743d.requestCancelDecode();
            }
        }
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Void call() {
        Rect rect;
        int i;
        boolean z;
        View view;
        Rect rect2;
        Rect rect3 = new Rect();
        while (!this.f2741b) {
            int m2891e = m2891e();
            if (m2891e != -1) {
                C0705a m2765e = C0705a.m2765e();
                synchronized (this) {
                    this.f2743d = m2765e;
                }
                int m2868a = C0717m.m2868a(m2891e);
                int i2 = C0717m.f2722b << m2868a;
                rect3.left = C0717m.m2871c(m2891e);
                rect3.top = C0717m.m2872d(m2891e);
                rect3.right = rect3.left + i2;
                rect3.bottom = i2 + rect3.top;
                rect = this.f2740a.f2735s;
                synchronized (rect) {
                    i = this.f2740a.f2733q;
                    if (m2868a == i) {
                        rect2 = this.f2740a.f2735s;
                        z = Rect.intersects(rect3, rect2);
                    }
                }
                if (z) {
                    this.f2740a.m2879a(m2891e, rect3, m2765e);
                }
                synchronized (this.f2744e) {
                    this.f2742c = -1;
                    view = this.f2744e.m2904c() == 0 ? this.f2740a.f2729m : null;
                }
                if (view != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        view.postInvalidateOnAnimation();
                    } else {
                        view.postInvalidate();
                    }
                }
                synchronized (this) {
                    this.f2743d = null;
                }
                C0705a.m2764a(m2765e);
            }
        }
        return null;
    }
}
