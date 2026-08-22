package p000a.p006d;

/* renamed from: a.d.bs */
/* loaded from: classes.dex */
class C0100bs extends AbstractC0073as {

    /* renamed from: a */
    private int f519a;

    /* renamed from: ae */
    private String f520ae;

    /* renamed from: b */
    private int f521b;

    /* renamed from: c */
    private int f522c;

    /* renamed from: d */
    private int f523d;

    C0100bs(int i, int i2, String str) {
        this.f519a = i;
        this.f522c = i2;
        this.f520ae = str;
        this.f667g = (byte) 50;
        this.f299S = (byte) 2;
        this.f521b = 260;
        this.f523d = 0;
        this.f294N = 8;
        this.f295O = 65535;
        this.f296P = (byte) 0;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: a */
    void mo174a(int i, String str) {
        super.mo178e();
        this.f522c = i;
        this.f520ae = str;
        this.f673m = 0;
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
        m332a(this.f519a, bArr, i);
        int i2 = i + 2;
        m332a(200L, bArr, i2);
        int i3 = i2 + 2;
        m332a(this.f521b, bArr, i3);
        int i4 = i3 + 2;
        m333b(this.f522c, bArr, i4);
        int i5 = i4 + 4;
        m332a(this.f523d, bArr, i5);
        int i6 = i5 + 2;
        return (i6 + m343a(this.f520ae, bArr, i6)) - i;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
