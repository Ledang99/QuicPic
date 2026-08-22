package p000a.p006d;

/* renamed from: a.d.cd */
/* loaded from: classes.dex */
class C0112cd extends AbstractC0073as {

    /* renamed from: a */
    private int f566a;

    /* renamed from: b */
    private int f567b;

    /* renamed from: c */
    private long f568c;

    /* renamed from: d */
    private long f569d;

    C0112cd(int i, int i2, long j, long j2) {
        this.f566a = i;
        this.f567b = i2;
        this.f568c = j;
        this.f569d = j2;
        this.f667g = (byte) 50;
        this.f299S = (byte) 8;
        this.f294N = 6;
        this.f295O = 0;
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
        m332a(this.f566a, bArr, i);
        int i2 = i + 2;
        m332a(257L, bArr, i2);
        int i3 = i2 + 2;
        m332a(0L, bArr, i3);
        return (i3 + 2) - i;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        m335d(this.f568c, bArr, i);
        int i2 = i + 8;
        m334c(0L, bArr, i2);
        int i3 = i2 + 8;
        m335d(this.f569d, bArr, i3);
        int i4 = i3 + 8;
        m334c(0L, bArr, i4);
        int i5 = i4 + 8;
        m332a(this.f567b | 128, bArr, i5);
        int i6 = i5 + 2;
        m334c(0L, bArr, i6);
        return (i6 + 6) - i;
    }
}
