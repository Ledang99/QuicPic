package p000a.p001a.p002a;

import p000a.p001a.p003b.AbstractC0025e;
import p000a.p001a.p003b.C0021a;
import p000a.p001a.p003b.C0023c;

/* renamed from: a.a.a.r */
/* loaded from: classes.dex */
public class C0019r extends AbstractC0025e {

    /* renamed from: a */
    public int f37a;

    /* renamed from: b */
    public C0017p[] f38b;

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: e */
    public void mo20e(C0021a c0021a) {
        c0021a.m38e(4);
        c0021a.m43h(this.f37a);
        c0021a.m29a(this.f38b, 1);
        if (this.f38b != null) {
            C0021a c0021a2 = c0021a.f53g;
            int i = this.f37a;
            c0021a2.m43h(i);
            int i2 = c0021a2.f51e;
            c0021a2.m36d(i * 12);
            C0021a m27a = c0021a2.m27a(i2);
            for (int i3 = 0; i3 < i; i3++) {
                this.f38b[i3].mo20e(m27a);
            }
        }
    }

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: f */
    public void mo21f(C0021a c0021a) {
        c0021a.m38e(4);
        this.f37a = c0021a.m39f();
        if (c0021a.m39f() != 0) {
            C0021a c0021a2 = c0021a.f53g;
            int m39f = c0021a2.m39f();
            int i = c0021a2.f51e;
            c0021a2.m36d(m39f * 12);
            if (this.f38b == null) {
                if (m39f < 0 || m39f > 65535) {
                    throw new C0023c("invalid array conformance");
                }
                this.f38b = new C0017p[m39f];
            }
            C0021a m27a = c0021a2.m27a(i);
            for (int i2 = 0; i2 < m39f; i2++) {
                if (this.f38b[i2] == null) {
                    this.f38b[i2] = new C0017p();
                }
                this.f38b[i2].mo21f(m27a);
            }
        }
    }
}
