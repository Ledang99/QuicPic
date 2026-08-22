package p000a.p006d;

/* renamed from: a.d.bz */
/* loaded from: classes.dex */
class C0107bz extends AbstractC0073as {

    /* renamed from: a */
    private int f549a;

    C0107bz(String str, int i) {
        this.f664A = str;
        this.f549a = i;
        this.f667g = (byte) 50;
        this.f299S = (byte) 5;
        this.f293M = 0;
        this.f294N = 2;
        this.f295O = 40;
        this.f296P = (byte) 0;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: c */
    int mo175c(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.f299S;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        return 2;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: d */
    int mo176d(byte[] bArr, int i) {
        m332a(this.f549a, bArr, i);
        int i2 = i + 2;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        int i5 = i4 + 1;
        bArr[i4] = 0;
        int i6 = i5 + 1;
        bArr[i5] = 0;
        return (i6 + m343a(this.f664A, bArr, i6)) - i;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
