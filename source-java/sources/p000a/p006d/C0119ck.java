package p000a.p006d;

/* renamed from: a.d.ck */
/* loaded from: classes.dex */
class C0119ck extends AbstractC0074at {

    /* renamed from: a */
    private C0091bj f583a;

    C0119ck(C0091bj c0091bj) {
        this.f583a = c0091bj;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        if (this.f583a.f422o != null) {
            C0122cn c0122cn = (C0122cn) this.f583a.f422o;
            synchronized (c0122cn.f584d) {
                c0122cn.m300b(bArr, i, i2);
                c0122cn.f584d.notify();
            }
        }
        return i2;
    }
}
