package p000a.p001a;

import p000a.p001a.p003b.AbstractC0025e;
import p000a.p001a.p003b.C0021a;

/* renamed from: a.a.k */
/* loaded from: classes.dex */
public class C0034k extends AbstractC0025e {

    /* renamed from: b */
    public int f76b;

    /* renamed from: c */
    public short f77c;

    /* renamed from: d */
    public short f78d;

    /* renamed from: e */
    public byte f79e;

    /* renamed from: f */
    public byte f80f;

    /* renamed from: g */
    public byte[] f81g;

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: e */
    public void mo20e(C0021a c0021a) {
        c0021a.m38e(4);
        c0021a.m43h(this.f76b);
        c0021a.m42g(this.f77c);
        c0021a.m42g(this.f78d);
        c0021a.m40f(this.f79e);
        c0021a.m40f(this.f80f);
        int i = c0021a.f51e;
        c0021a.m36d(6);
        C0021a m27a = c0021a.m27a(i);
        for (int i2 = 0; i2 < 6; i2++) {
            m27a.m40f(this.f81g[i2]);
        }
    }

    @Override // p000a.p001a.p003b.AbstractC0025e
    /* renamed from: f */
    public void mo21f(C0021a c0021a) {
        c0021a.m38e(4);
        this.f76b = c0021a.m39f();
        this.f77c = (short) c0021a.m37e();
        this.f78d = (short) c0021a.m37e();
        this.f79e = (byte) c0021a.m35d();
        this.f80f = (byte) c0021a.m35d();
        int i = c0021a.f51e;
        c0021a.m36d(6);
        if (this.f81g == null) {
            this.f81g = new byte[6];
        }
        C0021a m27a = c0021a.m27a(i);
        for (int i2 = 0; i2 < 6; i2++) {
            this.f81g[i2] = (byte) m27a.m35d();
        }
    }
}
