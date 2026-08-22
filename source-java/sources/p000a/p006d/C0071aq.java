package p000a.p006d;

/* renamed from: a.d.aq */
/* loaded from: classes.dex */
class C0071aq extends AbstractC0081b {

    /* renamed from: D */
    private byte[] f270D;

    /* renamed from: E */
    private byte[] f271E;

    /* renamed from: F */
    private int f272F;

    /* renamed from: G */
    private int f273G;

    /* renamed from: H */
    private String f274H;

    /* renamed from: I */
    private String f275I;

    /* renamed from: b */
    C0092bk f276b;

    /* renamed from: c */
    Object f277c;

    /* renamed from: d */
    private byte[] f278d;

    C0071aq(C0092bk c0092bk, AbstractC0141u abstractC0141u, Object obj) {
        super(abstractC0141u);
        this.f271E = null;
        this.f667g = (byte) 115;
        this.f276b = c0092bk;
        this.f277c = obj;
        this.f272F = c0092bk.f432e.f468y;
        this.f273G = c0092bk.f432e.f467x;
        if (c0092bk.f432e.f462s.f476g != 1) {
            if (c0092bk.f432e.f462s.f476g != 0) {
                throw new C0084bc("Unsupported");
            }
            if (!(obj instanceof C0140t)) {
                throw new C0084bc("Unsupported credential type");
            }
            C0140t c0140t = (C0140t) obj;
            this.f278d = new byte[0];
            this.f270D = new byte[0];
            this.f274H = c0140t.f655i;
            if (this.f680t) {
                this.f274H = this.f274H.toUpperCase();
            }
            this.f275I = c0140t.f654h.toUpperCase();
            return;
        }
        if (!(obj instanceof C0140t)) {
            if (!(obj instanceof byte[])) {
                throw new C0084bc("Unsupported credential type");
            }
            this.f271E = (byte[]) obj;
            return;
        }
        C0140t c0140t2 = (C0140t) obj;
        if (c0140t2 == C0140t.f647d) {
            this.f278d = new byte[0];
            this.f270D = new byte[0];
            this.f273G &= Integer.MAX_VALUE;
        } else {
            if (!c0092bk.f432e.f462s.f477h) {
                throw new RuntimeException("Plain text passwords are disabled");
            }
            this.f278d = c0140t2.m326a(c0092bk.f432e.f462s.f485p);
            this.f270D = c0140t2.m328b(c0092bk.f432e.f462s.f485p);
            if (this.f278d.length == 0 && this.f270D.length == 0) {
                throw new RuntimeException("Null setup prohibited.");
            }
        }
        this.f274H = c0140t2.f655i;
        if (this.f680t) {
            this.f274H = this.f274H.toUpperCase();
        }
        this.f275I = c0140t2.f654h.toUpperCase();
    }

    @Override // p000a.p006d.AbstractC0081b
    /* renamed from: a */
    int mo167a(byte b2) {
        return b2 == 117 ? 1 : 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        int i2;
        m332a(this.f276b.f432e.f465v, bArr, i);
        int i3 = i + 2;
        m332a(this.f276b.f432e.f464u, bArr, i3);
        int i4 = i3 + 2;
        C0094bm c0094bm = this.f276b.f432e;
        m332a(1L, bArr, i4);
        int i5 = i4 + 2;
        m333b(this.f272F, bArr, i5);
        int i6 = i5 + 4;
        if (this.f271E != null) {
            m332a(this.f271E.length, bArr, i6);
            i2 = i6 + 2;
        } else {
            m332a(this.f278d.length, bArr, i6);
            int i7 = i6 + 2;
            m332a(this.f270D.length, bArr, i7);
            i2 = i7 + 2;
        }
        int i8 = i2 + 1;
        bArr[i2] = 0;
        int i9 = i8 + 1;
        bArr[i8] = 0;
        int i10 = i9 + 1;
        bArr[i9] = 0;
        int i11 = i10 + 1;
        bArr[i10] = 0;
        m333b(this.f273G, bArr, i11);
        return (i11 + 4) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int a2;
        if (this.f271E != null) {
            System.arraycopy(this.f271E, 0, bArr, i, this.f271E.length);
            a2 = this.f271E.length + i;
        } else {
            System.arraycopy(this.f278d, 0, bArr, i, this.f278d.length);
            int length = this.f278d.length + i;
            System.arraycopy(this.f270D, 0, bArr, length, this.f270D.length);
            int length2 = length + this.f270D.length;
            int a3 = length2 + m343a(this.f274H, bArr, length2);
            a2 = a3 + m343a(this.f275I, bArr, a3);
        }
        C0094bm c0094bm = this.f276b.f432e;
        int a4 = a2 + m343a(C0094bm.f369ac, bArr, a2);
        C0094bm c0094bm2 = this.f276b.f432e;
        return (a4 + m343a("jCIFS", bArr, a4)) - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
