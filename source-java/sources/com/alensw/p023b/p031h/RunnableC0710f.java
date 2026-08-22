package com.alensw.p023b.p031h;

import android.view.View;
import com.alensw.p023b.p034k.C0734e;

/* renamed from: com.alensw.b.h.f */
/* loaded from: classes.dex */
class RunnableC0710f extends C0734e implements Runnable {

    /* renamed from: a */
    public int f2689a;

    /* renamed from: b */
    public int f2690b;

    /* renamed from: c */
    public int f2691c;

    /* renamed from: d */
    final /* synthetic */ C0708d f2692d;

    public RunnableC0710f(C0708d c0708d, int i, int i2) {
        this.f2692d = c0708d;
        this.f2689a = i;
        this.f2690b = i2;
    }

    @Override // com.alensw.p023b.p034k.C0734e
    /* renamed from: a */
    public boolean mo2832a(int i, int i2, int i3, Object... objArr) {
        return this.f2689a == i && this.f2690b == i2;
    }

    public boolean equals(Object obj) {
        RunnableC0710f runnableC0710f = (RunnableC0710f) obj;
        return this.f2689a == runnableC0710f.f2689a && this.f2690b == runnableC0710f.f2690b;
    }

    public int hashCode() {
        return this.f2690b + this.f2691c;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean m2823b;
        View view;
        View view2;
        C0711g c0711g;
        C0711g c0711g2;
        m2823b = this.f2692d.m2823b(this.f2691c, this.f2689a, this.f2690b);
        if (m2823b) {
            this.f2692d.f2682n = this.f2691c;
        }
        view = this.f2692d.f2688t;
        if (view != null) {
            view2 = this.f2692d.f2688t;
            view2.invalidate();
            c0711g = this.f2692d.f2687s;
            if (c0711g != null) {
                c0711g2 = this.f2692d.f2687s;
                c0711g2.m2834a(this);
            }
        }
    }
}
