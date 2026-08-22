package p000a.p006d;

/* renamed from: a.d.aj */
/* loaded from: classes.dex */
class C0064aj extends AbstractC0081b {

    /* renamed from: D */
    int f236D;

    /* renamed from: E */
    int f237E;

    /* renamed from: F */
    int f238F;

    /* renamed from: G */
    int f239G;

    /* renamed from: b */
    int f240b;

    /* renamed from: c */
    int f241c;

    /* renamed from: d */
    int f242d;

    C0064aj(String str, int i, int i2, AbstractC0141u abstractC0141u) {
        super(abstractC0141u);
        this.f664A = str;
        this.f667g = (byte) 45;
        this.f241c = i & 3;
        if (this.f241c == 3) {
            this.f241c = 2;
        }
        this.f241c |= 64;
        this.f241c &= -2;
        this.f242d = 22;
        this.f236D = 0;
        if ((i2 & 64) == 64) {
            if ((i2 & 16) == 16) {
                this.f238F = 18;
                return;
            } else {
                this.f238F = 2;
                return;
            }
        }
        if ((i2 & 16) != 16) {
            this.f238F = 1;
        } else if ((i2 & 32) == 32) {
            this.f238F = 16;
        } else {
            this.f238F = 17;
        }
    }

    @Override // p000a.p006d.AbstractC0081b
    /* renamed from: a */
    int mo167a(byte b2) {
        return b2 == 46 ? 1 : 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        m332a(this.f240b, bArr, i);
        int i2 = i + 2;
        m332a(this.f241c, bArr, i2);
        int i3 = i2 + 2;
        m332a(this.f242d, bArr, i3);
        int i4 = i3 + 2;
        m332a(this.f236D, bArr, i4);
        int i5 = i4 + 2;
        this.f237E = 0;
        m333b(this.f237E, bArr, i5);
        int i6 = i5 + 4;
        m332a(this.f238F, bArr, i6);
        int i7 = i6 + 2;
        m333b(this.f239G, bArr, i7);
        int i8 = i7 + 4;
        int i9 = 0;
        while (i9 < 8) {
            bArr[i8] = 0;
            i9++;
            i8++;
        }
        return i8 - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2;
        if (this.f680t) {
            i2 = i + 1;
            bArr[i] = 0;
        } else {
            i2 = i;
        }
        return (i2 + m343a(this.f664A, bArr, i2)) - i;
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
