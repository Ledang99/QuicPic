package p000a.p001a.p002a;

import p000a.p001a.AbstractC0029f;
import p000a.p001a.p003b.C0021a;
import p000a.p001a.p003b.C0024d;

/* renamed from: a.a.a.k */
/* loaded from: classes.dex */
public class C0012k extends AbstractC0029f {

    /* renamed from: a */
    public int f18a;

    /* renamed from: b */
    public String f19b;

    /* renamed from: c */
    public int f20c;

    /* renamed from: d */
    public int f21d;

    /* renamed from: l */
    public C0009h f22l;

    /* renamed from: m */
    public C0024d f23m;

    public C0012k(String str, int i, int i2, C0009h c0009h, C0024d c0024d) {
        this.f19b = str;
        this.f20c = i;
        this.f21d = i2;
        this.f22l = c0009h;
        this.f23m = c0024d;
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: a */
    public void mo13a(C0021a c0021a) {
        c0021a.m30a(this.f19b);
        c0021a.m43h(this.f20c);
        c0021a.m43h(this.f21d);
        c0021a.m29a(this.f22l, 1);
        if (this.f22l != null) {
            this.f22l.mo20e(c0021a);
        }
        c0021a.m29a(this.f23m, 1);
        if (this.f23m != null) {
            this.f23m.mo20e(c0021a);
        }
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: b */
    public int mo14b() {
        return 21;
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: b */
    public void mo15b(C0021a c0021a) {
        if (c0021a.m39f() != 0) {
            if (this.f22l == null) {
                this.f22l = new C0009h();
            }
            this.f22l.mo21f(c0021a);
        }
        if (c0021a.m39f() != 0) {
            this.f23m.mo21f(c0021a);
        }
        this.f18a = c0021a.m39f();
    }
}
