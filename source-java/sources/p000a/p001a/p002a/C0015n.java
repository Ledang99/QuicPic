package p000a.p001a.p002a;

import p000a.p001a.AbstractC0029f;
import p000a.p001a.p003b.AbstractC0025e;
import p000a.p001a.p003b.C0021a;

/* renamed from: a.a.a.n */
/* loaded from: classes.dex */
public class C0015n extends AbstractC0029f {

    /* renamed from: a */
    public int f24a;

    /* renamed from: b */
    public String f25b;

    /* renamed from: c */
    public int f26c;

    /* renamed from: d */
    public AbstractC0025e f27d;

    /* renamed from: l */
    public int f28l;

    /* renamed from: m */
    public int f29m;

    /* renamed from: n */
    public int f30n;

    public C0015n(String str, int i, AbstractC0025e abstractC0025e, int i2, int i3, int i4) {
        this.f25b = str;
        this.f26c = i;
        this.f27d = abstractC0025e;
        this.f28l = i2;
        this.f29m = i3;
        this.f30n = i4;
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: a */
    public void mo13a(C0021a c0021a) {
        c0021a.m29a(this.f25b, 1);
        if (this.f25b != null) {
            c0021a.m30a(this.f25b);
        }
        c0021a.m43h(this.f26c);
        c0021a.m43h(this.f26c);
        c0021a.m29a(this.f27d, 1);
        if (this.f27d != null) {
            c0021a = c0021a.f53g;
            this.f27d.mo20e(c0021a);
        }
        c0021a.m43h(this.f28l);
        c0021a.m43h(this.f30n);
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: b */
    public int mo14b() {
        return 15;
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: b */
    public void mo15b(C0021a c0021a) {
        this.f26c = c0021a.m39f();
        c0021a.m39f();
        if (c0021a.m39f() != 0) {
            if (this.f27d == null) {
                this.f27d = new C0018q();
            }
            c0021a = c0021a.f53g;
            this.f27d.mo21f(c0021a);
        }
        this.f29m = c0021a.m39f();
        this.f30n = c0021a.m39f();
        this.f24a = c0021a.m39f();
    }
}
