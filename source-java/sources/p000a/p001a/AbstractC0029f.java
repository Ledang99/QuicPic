package p000a.p001a;

import p000a.p001a.p003b.AbstractC0025e;
import p000a.p001a.p003b.C0021a;
import p000a.p001a.p003b.C0023c;

/* renamed from: a.a.f */
/* loaded from: classes.dex */
public abstract class AbstractC0029f extends AbstractC0025e implements InterfaceC0026c {

    /* renamed from: f */
    protected int f65f = -1;

    /* renamed from: g */
    protected int f66g = 0;

    /* renamed from: h */
    protected int f67h = 0;

    /* renamed from: i */
    protected int f68i = 0;

    /* renamed from: j */
    protected int f69j = 0;

    /* renamed from: k */
    protected int f70k = 0;

    /* renamed from: a */
    public C0027d mo12a() {
        if (this.f70k != 0) {
            return new C0027d(this.f70k);
        }
        return null;
    }

    /* renamed from: a */
    public abstract void mo13a(C0021a c0021a);

    /* renamed from: b */
    public abstract int mo14b();

    /* renamed from: b */
    public abstract void mo15b(C0021a c0021a);

    /* renamed from: b */
    public boolean m52b(int i) {
        return (this.f66g & i) == i;
    }

    /* renamed from: c */
    void m53c(C0021a c0021a) {
        c0021a.m40f(5);
        c0021a.m40f(0);
        c0021a.m40f(this.f65f);
        c0021a.m40f(this.f66g);
        c0021a.m43h(16);
        c0021a.m42g(this.f67h);
        c0021a.m42g(0);
        c0021a.m43h(this.f68i);
    }

    /* renamed from: d */
    void m54d(C0021a c0021a) {
        if (c0021a.m35d() != 5 || c0021a.m35d() != 0) {
            throw new C0023c("DCERPC version not supported");
        }
        this.f65f = c0021a.m35d();
        this.f66g = c0021a.m35d();
        if (c0021a.m39f() != 16) {
            throw new C0023c("Data representation not supported");
        }
        this.f67h = c0021a.m37e();
        if (c0021a.m37e() != 0) {
            throw new C0023c("DCERPC authentication not supported");
        }
        this.f68i = c0021a.m39f();
    }

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: e */
    public void mo20e(C0021a c0021a) {
        int i;
        int m31b = c0021a.m31b();
        c0021a.m36d(16);
        if (this.f65f == 0) {
            i = c0021a.m31b();
            c0021a.m43h(0);
            c0021a.m42g(0);
            c0021a.m42g(mo14b());
        } else {
            i = 0;
        }
        mo13a(c0021a);
        this.f67h = c0021a.m31b() - m31b;
        if (this.f65f == 0) {
            c0021a.m32b(i);
            this.f69j = this.f67h - i;
            c0021a.m43h(this.f69j);
        }
        c0021a.m32b(m31b);
        m53c(c0021a);
        c0021a.m32b(this.f67h + m31b);
    }

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: f */
    public void mo21f(C0021a c0021a) {
        m54d(c0021a);
        if (this.f65f != 12 && this.f65f != 2 && this.f65f != 3 && this.f65f != 13) {
            throw new C0023c("Unexpected ptype: " + this.f65f);
        }
        if (this.f65f == 2 || this.f65f == 3) {
            this.f69j = c0021a.m39f();
            c0021a.m37e();
            c0021a.m37e();
        }
        if (this.f65f == 3 || this.f65f == 13) {
            this.f70k = c0021a.m39f();
        } else {
            mo15b(c0021a);
        }
    }
}
