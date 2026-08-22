package p000a.p006d;

/* renamed from: a.d.ar */
/* loaded from: classes.dex */
class C0072ar extends AbstractC0081b {

    /* renamed from: D */
    private String f279D;

    /* renamed from: E */
    private String f280E;

    /* renamed from: b */
    boolean f281b;

    /* renamed from: c */
    byte[] f282c;

    /* renamed from: d */
    private String f283d;

    C0072ar(AbstractC0141u abstractC0141u) {
        super(abstractC0141u);
        this.f283d = "";
        this.f279D = "";
        this.f280E = "";
        this.f282c = null;
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
        this.f281b = (bArr[i] & 1) == 1;
        int i2 = i + 2;
        if (this.f682v) {
            int f = m337f(bArr, i2);
            i2 += 2;
            this.f282c = new byte[f];
        }
        return i2 - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        int i2;
        if (this.f682v) {
            System.arraycopy(bArr, i, this.f282c, 0, this.f282c.length);
            i2 = this.f282c.length + i;
        } else {
            i2 = i;
        }
        this.f283d = m349k(bArr, i2);
        int a2 = i2 + m342a(this.f283d, i2);
        this.f279D = m345a(bArr, a2, i + this.f679s, 255, this.f680t);
        int a3 = a2 + m342a(this.f279D, a2);
        if (!this.f682v) {
            this.f280E = m345a(bArr, a3, i + this.f679s, 255, this.f680t);
            a3 += m342a(this.f280E, a3);
        }
        return a3 - i;
    }
}
