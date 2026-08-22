package p000a.p006d;

/* renamed from: a.d.aa */
/* loaded from: classes.dex */
class C0055aa extends AbstractC0141u {

    /* renamed from: a */
    private int f206a;

    C0055aa(String str) {
        this.f664A = str;
        this.f667g = (byte) 6;
        this.f206a = 6;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        m332a(this.f206a, bArr, i);
        return 2;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = 4;
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
