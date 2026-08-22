package com.alensw.p023b.p034k;

/* renamed from: com.alensw.b.k.h */
/* loaded from: classes.dex */
class C0737h extends C0732c {

    /* renamed from: a */
    final /* synthetic */ C0736g f2780a;

    C0737h(C0736g c0736g) {
        this.f2780a = c0736g;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        C0735f c0735f;
        C0735f c0735f2;
        C0734e c0734e;
        C0734e c0734e2;
        C0735f c0735f3;
        C0734e c0734e3;
        C0735f c0735f4;
        this.f2780a.mo2466a();
        int i = 0;
        while (!m2939a(i)) {
            c0735f = this.f2780a.f2779d;
            synchronized (c0735f) {
                C0736g c0736g = this.f2780a;
                c0735f2 = this.f2780a.f2779d;
                c0736g.f2778c = c0735f2.m2945b();
                c0734e = this.f2780a.f2778c;
                if (c0734e == null) {
                    try {
                        c0735f4 = this.f2780a.f2779d;
                        c0735f4.wait();
                    } catch (Throwable th) {
                    }
                } else {
                    C0736g c0736g2 = this.f2780a;
                    c0734e2 = this.f2780a.f2778c;
                    i = c0736g2.mo2468b(c0734e2);
                    c0735f3 = this.f2780a.f2779d;
                    synchronized (c0735f3) {
                        c0734e3 = this.f2780a.f2778c;
                        c0734e3.m2941a();
                        this.f2780a.f2778c = null;
                    }
                }
            }
        }
        this.f2780a.m2953d();
    }
}
