package p000a.p006d;

/* renamed from: a.d.ax */
/* loaded from: classes.dex */
class C0078ax extends AbstractC0141u {

    /* renamed from: D */
    private int f343D;

    /* renamed from: E */
    private byte[] f344E;

    /* renamed from: a */
    private int f345a;

    /* renamed from: b */
    private int f346b;

    /* renamed from: c */
    private int f347c;

    /* renamed from: d */
    private int f348d;

    C0078ax() {
        this.f667g = (byte) 11;
    }

    /* renamed from: a */
    void m181a(int i, long j, int i2, byte[] bArr, int i3, int i4) {
        this.f345a = i;
        this.f347c = (int) (4294967295L & j);
        this.f348d = i2;
        this.f344E = bArr;
        this.f343D = i3;
        this.f346b = i4;
        this.f665B = null;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        m332a(this.f345a, bArr, i);
        int i2 = i + 2;
        m332a(this.f346b, bArr, i2);
        int i3 = i2 + 2;
        m333b(this.f347c, bArr, i3);
        int i4 = i3 + 4;
        m332a(this.f348d, bArr, i4);
        return (i4 + 2) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = 1;
        m332a(this.f346b, bArr, i2);
        int i3 = i2 + 2;
        System.arraycopy(this.f344E, this.f343D, bArr, i3, this.f346b);
        return (i3 + this.f346b) - i;
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
