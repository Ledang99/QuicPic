package com.alensw.p023b.p034k;

/* renamed from: com.alensw.b.k.g */
/* loaded from: classes.dex */
public class C0736g {

    /* renamed from: a */
    private long f2776a;

    /* renamed from: b */
    private C0732c f2777b;

    /* renamed from: c */
    private C0734e f2778c;

    /* renamed from: d */
    private final C0735f f2779d = new C0735f();

    /* renamed from: a */
    protected C0734e mo2465a(int i, int i2, int i3, Object... objArr) {
        throw new RuntimeException("override!");
    }

    /* renamed from: a */
    protected void mo2466a() {
    }

    /* renamed from: a */
    protected void mo2467a(C0734e c0734e) {
    }

    /* renamed from: a */
    public void m2949a(boolean z) {
        synchronized (this.f2779d) {
            this.f2779d.m2943a();
            if (z && this.f2778c != null) {
                mo2467a(this.f2778c);
            }
        }
    }

    /* renamed from: b */
    protected int mo2468b(C0734e c0734e) {
        return 0;
    }

    /* renamed from: b */
    public void m2950b() {
        if (this.f2777b == null) {
            this.f2777b = new C0737h(this);
        }
        this.f2777b.start();
        this.f2776a = this.f2777b.getId();
    }

    /* renamed from: b */
    public boolean m2951b(int i, int i2, int i3, Object... objArr) {
        boolean z = false;
        synchronized (this.f2779d) {
            if (this.f2778c == null || !this.f2778c.mo2832a(i, i2, i3, objArr)) {
                if (this.f2779d.m2942a(i, i2, i3, objArr) == null) {
                    this.f2779d.m2944a(mo2465a(i, i2, i3, objArr));
                    this.f2779d.notifyAll();
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: c */
    public void m2952c() {
        m2949a(true);
        if (this.f2777b != null) {
            this.f2777b.m2938a(this.f2779d);
            this.f2777b = null;
            this.f2776a = 0L;
        }
    }

    /* renamed from: d */
    protected void m2953d() {
    }
}
