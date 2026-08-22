package p000a.p006d;

/* renamed from: a.d.bp */
/* loaded from: classes.dex */
class C0097bp extends AbstractC0073as {

    /* renamed from: a */
    private int f498a;

    /* renamed from: ae */
    private String f499ae;

    /* renamed from: b */
    private int f500b;

    /* renamed from: c */
    private int f501c;

    /* renamed from: d */
    private int f502d = 0;

    C0097bp(String str, String str2, int i) {
        if (str.equals("\\")) {
            this.f664A = str;
        } else {
            this.f664A = str + "\\";
        }
        this.f499ae = str2;
        this.f498a = i & 55;
        this.f667g = (byte) 50;
        this.f299S = (byte) 1;
        this.f500b = 0;
        this.f501c = 260;
        this.f293M = 0;
        this.f294N = 10;
        this.f295O = 65535;
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
        m332a(this.f498a, bArr, i);
        int i2 = i + 2;
        m332a(200L, bArr, i2);
        int i3 = i2 + 2;
        m332a(this.f500b, bArr, i3);
        int i4 = i3 + 2;
        m332a(this.f501c, bArr, i4);
        int i5 = i4 + 2;
        m333b(this.f502d, bArr, i5);
        int i6 = i5 + 4;
        return (i6 + m343a(this.f664A + this.f499ae, bArr, i6)) - i;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
