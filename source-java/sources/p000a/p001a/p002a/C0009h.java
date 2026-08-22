package p000a.p001a.p002a;

import p000a.p001a.p003b.AbstractC0025e;
import p000a.p001a.p003b.C0021a;

/* renamed from: a.a.a.h */
/* loaded from: classes.dex */
public class C0009h extends AbstractC0025e {

    /* renamed from: a */
    public int f14a;

    /* renamed from: b */
    public AbstractC0025e f15b;

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: e */
    public void mo20e(C0021a c0021a) {
        c0021a.m38e(4);
        c0021a.m43h(this.f14a);
        c0021a.m43h(this.f14a);
        c0021a.m29a(this.f15b, 1);
        if (this.f15b != null) {
            this.f15b.mo20e(c0021a.f53g);
        }
    }

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: f */
    public void mo21f(C0021a c0021a) {
        c0021a.m38e(4);
        this.f14a = c0021a.m39f();
        c0021a.m39f();
        if (c0021a.m39f() != 0) {
            if (this.f15b == null) {
                this.f15b = new C0007f();
            }
            this.f15b.mo21f(c0021a.f53g);
        }
    }
}
