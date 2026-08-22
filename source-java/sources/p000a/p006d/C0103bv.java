package p000a.p006d;

/* renamed from: a.d.bv */
/* loaded from: classes.dex */
class C0103bv {

    /* renamed from: a */
    int f529a;

    /* renamed from: b */
    String f530b = null;

    /* renamed from: c */
    String f531c = null;

    /* renamed from: d */
    final /* synthetic */ C0102bu f532d;

    /* renamed from: e */
    private int f533e;

    /* renamed from: f */
    private int f534f;

    /* renamed from: g */
    private int f535g;

    /* renamed from: h */
    private int f536h;

    /* renamed from: i */
    private int f537i;

    /* renamed from: j */
    private int f538j;

    /* renamed from: k */
    private int f539k;

    /* renamed from: l */
    private int f540l;

    C0103bv(C0102bu c0102bu) {
        this.f532d = c0102bu;
    }

    /* renamed from: a */
    int m291a(byte[] bArr, int i, int i2) {
        this.f533e = AbstractC0141u.m337f(bArr, i);
        if (this.f533e != 3 && this.f533e != 1) {
            throw new RuntimeException("Version " + this.f533e + " referral not supported. Please report this to jcifs at samba dot org.");
        }
        int i3 = i + 2;
        this.f534f = AbstractC0141u.m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f535g = AbstractC0141u.m337f(bArr, i4);
        int i5 = i4 + 2;
        this.f536h = AbstractC0141u.m337f(bArr, i5);
        int i6 = i5 + 2;
        if (this.f533e == 3) {
            this.f537i = AbstractC0141u.m337f(bArr, i6);
            int i7 = i6 + 2;
            this.f529a = AbstractC0141u.m337f(bArr, i7);
            int i8 = i7 + 2;
            this.f538j = AbstractC0141u.m337f(bArr, i8);
            int i9 = i8 + 2;
            this.f539k = AbstractC0141u.m337f(bArr, i9);
            int i10 = i9 + 2;
            this.f540l = AbstractC0141u.m337f(bArr, i10);
            int i11 = i10 + 2;
            this.f530b = this.f532d.m346a(bArr, i + this.f538j, i2, (this.f532d.f673m & 32768) != 0);
            if (this.f540l > 0) {
                this.f531c = this.f532d.m346a(bArr, this.f540l + i, i2, (this.f532d.f673m & 32768) != 0);
            }
        } else if (this.f533e == 1) {
            this.f531c = this.f532d.m346a(bArr, i6, i2, (this.f532d.f673m & 32768) != 0);
        }
        return this.f534f;
    }
}
