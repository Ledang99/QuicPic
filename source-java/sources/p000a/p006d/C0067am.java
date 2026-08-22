package p000a.p006d;

/* renamed from: a.d.am */
/* loaded from: classes.dex */
class C0067am extends AbstractC0141u implements InterfaceC0131k {

    /* renamed from: c */
    private long f254c;

    /* renamed from: a */
    private int f252a = 0;

    /* renamed from: b */
    private long f253b = 0;

    /* renamed from: d */
    private int f255d = 0;

    C0067am(long j) {
        this.f254c = j;
        this.f667g = (byte) 8;
    }

    @Override // p000a.p006d.InterfaceC0131k
    /* renamed from: a */
    public int mo168a() {
        return this.f252a;
    }

    @Override // p000a.p006d.InterfaceC0131k
    /* renamed from: b */
    public long mo169b() {
        return this.f253b + this.f254c;
    }

    @Override // p000a.p006d.InterfaceC0131k
    /* renamed from: c */
    public long mo170c() {
        return this.f253b + this.f254c;
    }

    @Override // p000a.p006d.InterfaceC0131k
    /* renamed from: d */
    public long mo171d() {
        return this.f255d;
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
        if (this.f678r == 0) {
            return 0;
        }
        this.f252a = m337f(bArr, i);
        int i2 = i + 2;
        this.f253b = m341j(bArr, i2);
        this.f255d = m338g(bArr, i2 + 4);
        return 20;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
