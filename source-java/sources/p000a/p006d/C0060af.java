package p000a.p006d;

/* renamed from: a.d.af */
/* loaded from: classes.dex */
class C0060af extends AbstractC0081b {

    /* renamed from: D */
    int f219D;

    /* renamed from: E */
    int f220E;

    /* renamed from: F */
    int f221F;

    /* renamed from: G */
    long f222G;

    /* renamed from: H */
    long f223H;

    /* renamed from: I */
    long f224I;

    /* renamed from: J */
    long f225J;

    /* renamed from: K */
    long f226K;

    /* renamed from: L */
    long f227L;

    /* renamed from: M */
    boolean f228M;

    /* renamed from: N */
    boolean f229N;

    /* renamed from: b */
    byte f230b;

    /* renamed from: c */
    int f231c;

    /* renamed from: d */
    int f232d;

    C0060af() {
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        int i2 = i + 1;
        this.f230b = bArr[i];
        this.f231c = m337f(bArr, i2);
        int i3 = i2 + 2;
        this.f232d = m338g(bArr, i3);
        int i4 = i3 + 4;
        this.f222G = m340i(bArr, i4);
        int i5 = i4 + 8;
        this.f223H = m340i(bArr, i5);
        int i6 = i5 + 8;
        this.f224I = m340i(bArr, i6);
        int i7 = i6 + 8;
        this.f225J = m340i(bArr, i7);
        int i8 = i7 + 8;
        this.f219D = m338g(bArr, i8);
        int i9 = i8 + 4;
        this.f226K = m339h(bArr, i9);
        int i10 = i9 + 8;
        this.f227L = m339h(bArr, i10);
        int i11 = i10 + 8;
        this.f220E = m337f(bArr, i11);
        int i12 = i11 + 2;
        this.f221F = m337f(bArr, i12);
        int i13 = i12 + 2;
        int i14 = i13 + 1;
        this.f228M = (bArr[i13] & 255) > 0;
        return i14 - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
