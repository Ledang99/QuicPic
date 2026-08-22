package p000a.p006d;

/* renamed from: a.d.ao */
/* loaded from: classes.dex */
class C0069ao extends AbstractC0081b {

    /* renamed from: D */
    int f262D;

    /* renamed from: E */
    int f263E;

    /* renamed from: b */
    byte[] f264b;

    /* renamed from: c */
    int f265c;

    /* renamed from: d */
    int f266d;

    C0069ao() {
    }

    /* renamed from: e */
    void m173e(byte[] bArr, int i) {
        this.f264b = bArr;
        this.f265c = i;
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
        int i2 = i + 2;
        this.f266d = m337f(bArr, i2);
        int i3 = i2 + 4;
        this.f262D = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f263E = m337f(bArr, i4);
        return (i4 + 12) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
