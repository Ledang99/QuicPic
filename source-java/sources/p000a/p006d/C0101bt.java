package p000a.p006d;

/* renamed from: a.d.bt */
/* loaded from: classes.dex */
class C0101bt extends AbstractC0073as {

    /* renamed from: a */
    private int f524a = 3;

    C0101bt(String str) {
        this.f664A = str;
        this.f667g = (byte) 50;
        this.f299S = (byte) 16;
        this.f293M = 0;
        this.f294N = 0;
        this.f295O = 4096;
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
        m332a(this.f524a, bArr, i);
        int i2 = i + 2;
        return (i2 + m343a(this.f664A, bArr, i2)) - i;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
