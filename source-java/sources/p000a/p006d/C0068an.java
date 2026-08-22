package p000a.p006d;

/* renamed from: a.d.an */
/* loaded from: classes.dex */
class C0068an extends AbstractC0081b {

    /* renamed from: D */
    private long f256D;

    /* renamed from: E */
    private int f257E;

    /* renamed from: F */
    private int f258F;

    /* renamed from: b */
    int f259b;

    /* renamed from: c */
    int f260c;

    /* renamed from: d */
    int f261d;

    C0068an() {
        super(null);
        this.f667g = (byte) 46;
        this.f258F = -1;
    }

    @Override // p000a.p006d.AbstractC0081b
    /* renamed from: a */
    int mo167a(byte b2) {
        return b2 == 4 ? 1 : 0;
    }

    /* renamed from: a */
    void m172a(int i, long j, int i2) {
        this.f257E = i;
        this.f256D = j;
        this.f260c = i2;
        this.f259b = i2;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        m332a(this.f257E, bArr, i);
        int i2 = i + 2;
        m333b(this.f256D, bArr, i2);
        int i3 = i2 + 4;
        m332a(this.f259b, bArr, i3);
        int i4 = i3 + 2;
        m332a(this.f260c, bArr, i4);
        int i5 = i4 + 2;
        m333b(this.f258F, bArr, i5);
        int i6 = i5 + 4;
        m332a(this.f261d, bArr, i6);
        int i7 = i6 + 2;
        m333b(this.f256D >> 32, bArr, i7);
        return (i7 + 4) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
