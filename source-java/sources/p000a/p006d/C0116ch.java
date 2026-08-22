package p000a.p006d;

/* renamed from: a.d.ch */
/* loaded from: classes.dex */
class C0116ch extends AbstractC0073as {

    /* renamed from: a */
    private int f574a;

    C0116ch(String str, int i) {
        this.f300T = str;
        this.f574a = i;
        this.f667g = (byte) 37;
        this.f299S = (byte) 35;
        this.f297Q = -1;
        this.f294N = 6;
        this.f295O = 1;
        this.f296P = (byte) 0;
        this.f298R = 2;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: c */
    int mo175c(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.f299S;
        bArr[i2] = 0;
        m332a(this.f574a, bArr, i2 + 1);
        return 4;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: d */
    int mo176d(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
