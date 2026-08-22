package p000a.p006d;

/* renamed from: a.d.bw */
/* loaded from: classes.dex */
class C0104bw extends AbstractC0073as {

    /* renamed from: a */
    private int f541a;

    C0104bw(int i) {
        this.f667g = (byte) 50;
        this.f299S = (byte) 3;
        this.f541a = i;
        this.f292L = 2;
        this.f293M = 0;
        this.f294N = 0;
        this.f295O = 800;
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
        m332a(this.f541a, bArr, i);
        return (i + 2) - i;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
