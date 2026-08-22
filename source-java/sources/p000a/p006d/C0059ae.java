package p000a.p006d;

/* renamed from: a.d.ae */
/* loaded from: classes.dex */
class C0059ae extends AbstractC0081b {

    /* renamed from: D */
    private int f208D;

    /* renamed from: E */
    private int f209E;

    /* renamed from: F */
    private int f210F;

    /* renamed from: G */
    private int f211G;

    /* renamed from: H */
    private int f212H;

    /* renamed from: I */
    private long f213I;

    /* renamed from: J */
    private byte f214J;

    /* renamed from: K */
    private int f215K;

    /* renamed from: b */
    int f216b;

    /* renamed from: c */
    int f217c;

    /* renamed from: d */
    private int f218d;

    C0059ae(String str, int i, int i2, int i3, int i4, int i5, AbstractC0141u abstractC0141u) {
        super(abstractC0141u);
        this.f664A = str;
        this.f667g = (byte) -94;
        this.f217c = i2;
        this.f217c |= 137;
        this.f208D = i4;
        this.f209E = i3;
        if ((i & 64) == 64) {
            if ((i & 16) == 16) {
                this.f210F = 5;
            } else {
                this.f210F = 4;
            }
        } else if ((i & 16) != 16) {
            this.f210F = 1;
        } else if ((i & 32) == 32) {
            this.f210F = 2;
        } else {
            this.f210F = 3;
        }
        if ((i5 & 1) == 0) {
            this.f211G = i5 | 64;
        } else {
            this.f211G = i5;
        }
        this.f212H = 2;
        this.f214J = (byte) 3;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = 0;
        this.f215K = i2;
        int i3 = i2 + 2;
        m333b(this.f216b, bArr, i3);
        int i4 = i3 + 4;
        m333b(this.f218d, bArr, i4);
        int i5 = i4 + 4;
        m333b(this.f217c, bArr, i5);
        int i6 = i5 + 4;
        m334c(this.f213I, bArr, i6);
        int i7 = i6 + 8;
        m333b(this.f208D, bArr, i7);
        int i8 = i7 + 4;
        m333b(this.f209E, bArr, i8);
        int i9 = i8 + 4;
        m333b(this.f210F, bArr, i9);
        int i10 = i9 + 4;
        m333b(this.f211G, bArr, i10);
        int i11 = i10 + 4;
        m333b(this.f212H, bArr, i11);
        int i12 = i11 + 4;
        bArr[i12] = this.f214J;
        return (i12 + 1) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int a2 = m343a(this.f664A, bArr, i);
        m332a(this.f680t ? this.f664A.length() * 2 : a2, bArr, this.f215K);
        return a2;
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
