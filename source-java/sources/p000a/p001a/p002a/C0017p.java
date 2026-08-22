package p000a.p001a.p002a;

import p000a.p001a.p003b.AbstractC0025e;
import p000a.p001a.p003b.C0021a;

/* renamed from: a.a.a.p */
/* loaded from: classes.dex */
public class C0017p extends AbstractC0025e {

    /* renamed from: a */
    public String f32a;

    /* renamed from: b */
    public int f33b;

    /* renamed from: c */
    public String f34c;

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: e */
    public void mo20e(C0021a c0021a) {
        c0021a.m38e(4);
        c0021a.m29a(this.f32a, 1);
        c0021a.m43h(this.f33b);
        c0021a.m29a(this.f34c, 1);
        if (this.f32a != null) {
            c0021a = c0021a.f53g;
            c0021a.m30a(this.f32a);
        }
        if (this.f34c != null) {
            c0021a.f53g.m30a(this.f34c);
        }
    }

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: f */
    public void mo21f(C0021a c0021a) {
        c0021a.m38e(4);
        int m39f = c0021a.m39f();
        this.f33b = c0021a.m39f();
        int m39f2 = c0021a.m39f();
        if (m39f != 0) {
            c0021a = c0021a.f53g;
            this.f32a = c0021a.m41g();
        }
        if (m39f2 != 0) {
            this.f34c = c0021a.f53g.m41g();
        }
    }
}
