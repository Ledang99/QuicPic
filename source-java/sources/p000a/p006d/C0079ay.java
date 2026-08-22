package p000a.p006d;

/* renamed from: a.d.ay */
/* loaded from: classes.dex */
class C0079ay extends AbstractC0081b {

    /* renamed from: D */
    private int f349D;

    /* renamed from: E */
    private int f350E;

    /* renamed from: F */
    private int f351F;

    /* renamed from: G */
    private byte[] f352G;

    /* renamed from: H */
    private long f353H;

    /* renamed from: I */
    private int f354I;

    /* renamed from: b */
    int f355b;

    /* renamed from: c */
    private int f356c;

    /* renamed from: d */
    private int f357d;

    C0079ay() {
        super(null);
        this.f667g = (byte) 47;
    }

    @Override // p000a.p006d.AbstractC0081b
    /* renamed from: a */
    int mo167a(byte b2) {
        return (b2 == 46 || b2 == 4) ? 1 : 0;
    }

    /* renamed from: a */
    void m182a(int i, long j, int i2, byte[] bArr, int i3, int i4) {
        this.f356c = i;
        this.f353H = j;
        this.f357d = i2;
        this.f352G = bArr;
        this.f351F = i3;
        this.f349D = i4;
        this.f665B = null;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        this.f350E = (i - this.f669i) + 26;
        this.f354I = (this.f350E - this.f669i) % 4;
        this.f354I = this.f354I == 0 ? 0 : 4 - this.f354I;
        this.f350E += this.f354I;
        m332a(this.f356c, bArr, i);
        int i2 = i + 2;
        m333b(this.f353H, bArr, i2);
        int i3 = i2 + 4;
        int i4 = 0;
        while (i4 < 4) {
            bArr[i3] = -1;
            i4++;
            i3++;
        }
        m332a(this.f355b, bArr, i3);
        int i5 = i3 + 2;
        m332a(this.f357d, bArr, i5);
        int i6 = i5 + 2;
        int i7 = i6 + 1;
        bArr[i6] = 0;
        int i8 = i7 + 1;
        bArr[i7] = 0;
        m332a(this.f349D, bArr, i8);
        int i9 = i8 + 2;
        m332a(this.f350E, bArr, i9);
        int i10 = i9 + 2;
        m333b(this.f353H >> 32, bArr, i10);
        return (i10 + 4) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2 = i;
        while (true) {
            int i3 = this.f354I;
            this.f354I = i3 - 1;
            if (i3 <= 0) {
                System.arraycopy(this.f352G, this.f351F, bArr, i2, this.f349D);
                return (i2 + this.f349D) - i;
            }
            bArr[i2] = -18;
            i2++;
        }
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
