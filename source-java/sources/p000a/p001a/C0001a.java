package p000a.p001a;

import p000a.p001a.p003b.C0021a;
import p000a.p007e.C0154d;

/* renamed from: a.a.a */
/* loaded from: classes.dex */
public class C0001a extends AbstractC0029f {

    /* renamed from: a */
    static final String[] f5a = {"0", "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED", "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED", "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"};

    /* renamed from: b */
    C0020b f6b;

    /* renamed from: c */
    int f7c;

    /* renamed from: d */
    int f8d;

    public C0001a() {
    }

    C0001a(C0020b c0020b, AbstractC0028e abstractC0028e) {
        this.f6b = c0020b;
        this.f7c = abstractC0028e.f61b;
        this.f8d = abstractC0028e.f62c;
        this.f65f = 11;
        this.f66g = 3;
    }

    /* renamed from: a */
    static String m11a(int i) {
        return i < 4 ? f5a[i] : "0x" + C0154d.m378a(i, 4);
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: a */
    public C0027d mo12a() {
        if (this.f70k != 0) {
            return new C0027d(m11a(this.f70k));
        }
        return null;
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: a */
    public void mo13a(C0021a c0021a) {
        c0021a.m42g(this.f7c);
        c0021a.m42g(this.f8d);
        c0021a.m43h(0);
        c0021a.m40f(1);
        c0021a.m40f(0);
        c0021a.m42g(0);
        c0021a.m42g(0);
        c0021a.m40f(1);
        c0021a.m40f(0);
        this.f6b.f44e.mo20e(c0021a);
        c0021a.m42g(this.f6b.f45f);
        c0021a.m42g(this.f6b.f46g);
        f57e.mo20e(c0021a);
        c0021a.m43h(2);
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: b */
    public int mo14b() {
        return 0;
    }

    @Override // p000a.p001a.AbstractC0029f
    /* renamed from: b */
    public void mo15b(C0021a c0021a) {
        c0021a.m37e();
        c0021a.m37e();
        c0021a.m39f();
        c0021a.m36d(c0021a.m37e());
        c0021a.m38e(4);
        c0021a.m35d();
        c0021a.m38e(4);
        this.f70k = c0021a.m37e();
        c0021a.m37e();
        c0021a.m36d(20);
    }
}
