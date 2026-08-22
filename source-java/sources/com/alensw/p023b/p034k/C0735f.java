package com.alensw.p023b.p034k;

/* renamed from: com.alensw.b.k.f */
/* loaded from: classes.dex */
public class C0735f {

    /* renamed from: a */
    private C0734e f2774a;

    /* renamed from: b */
    private C0734e f2775b;

    /* renamed from: a */
    public final C0734e m2942a(int i, int i2, int i3, Object... objArr) {
        for (C0734e c0734e = this.f2774a; c0734e != null; c0734e = c0734e.f2773g) {
            if (c0734e.mo2832a(i, i2, i3, objArr)) {
                return c0734e;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m2943a() {
        for (C0734e c0734e = this.f2774a; c0734e != null; c0734e = c0734e.f2773g) {
            c0734e.m2941a();
        }
        this.f2775b = null;
        this.f2774a = null;
    }

    /* renamed from: a */
    public void m2944a(C0734e c0734e) {
        if (this.f2774a == null) {
            this.f2775b = c0734e;
            this.f2774a = c0734e;
        } else {
            this.f2775b.f2773g = c0734e;
            this.f2775b = c0734e;
            c0734e.f2773g = null;
        }
    }

    /* renamed from: b */
    public C0734e m2945b() {
        C0734e c0734e = this.f2774a;
        if (c0734e != null) {
            this.f2774a = c0734e.f2773g;
            c0734e.f2773g = null;
        }
        return c0734e;
    }
}
