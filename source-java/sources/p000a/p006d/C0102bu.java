package p000a.p006d;

/* renamed from: a.d.bu */
/* loaded from: classes.dex */
class C0102bu extends AbstractC0074at {

    /* renamed from: S */
    int f525S;

    /* renamed from: T */
    int f526T;

    /* renamed from: U */
    C0103bv[] f527U;

    /* renamed from: a */
    int f528a;

    C0102bu() {
        this.f318L = (byte) 16;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        this.f528a = m337f(bArr, i);
        int i3 = i + 2;
        if ((this.f673m & 32768) != 0) {
            this.f528a /= 2;
        }
        this.f525S = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f526T = m337f(bArr, i4);
        int i5 = i4 + 4;
        this.f527U = new C0103bv[this.f525S];
        for (int i6 = 0; i6 < this.f525S; i6++) {
            this.f527U[i6] = new C0103bv(this);
            i5 += this.f527U[i6].m291a(bArr, i5, i2);
        }
        return i5 - i;
    }
}
