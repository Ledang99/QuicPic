package p000a.p006d;

import java.util.Enumeration;

/* renamed from: a.d.as */
/* loaded from: classes.dex */
abstract class AbstractC0073as extends AbstractC0141u implements Enumeration {

    /* renamed from: F */
    protected int f286F;

    /* renamed from: G */
    protected int f287G;

    /* renamed from: H */
    protected int f288H;

    /* renamed from: I */
    protected int f289I;

    /* renamed from: J */
    protected int f290J;

    /* renamed from: K */
    protected int f291K;

    /* renamed from: L */
    int f292L;

    /* renamed from: M */
    int f293M;

    /* renamed from: P */
    byte f296P;

    /* renamed from: S */
    byte f299S;

    /* renamed from: U */
    int f301U;

    /* renamed from: V */
    byte[] f302V;

    /* renamed from: af */
    private int f305af;

    /* renamed from: ag */
    private int f306ag;

    /* renamed from: a */
    private int f303a = 0;

    /* renamed from: b */
    private int f307b = 0;

    /* renamed from: c */
    private int f308c = 0;

    /* renamed from: d */
    private boolean f309d = true;

    /* renamed from: ae */
    private boolean f304ae = true;

    /* renamed from: O */
    int f295O = 65023;

    /* renamed from: Q */
    int f297Q = 0;

    /* renamed from: R */
    int f298R = 1;

    /* renamed from: T */
    String f300T = "";

    /* renamed from: N */
    int f294N = 1024;

    /* renamed from: D */
    protected int f284D = 61;

    /* renamed from: E */
    protected int f285E = 51;

    AbstractC0073as() {
    }

    /* renamed from: a */
    void mo174a(int i, String str) {
        mo178e();
    }

    /* renamed from: c */
    abstract int mo175c(byte[] bArr, int i);

    /* renamed from: d */
    abstract int mo176d(byte[] bArr, int i);

    /* renamed from: e */
    abstract int mo177e(byte[] bArr, int i);

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: e */
    void mo178e() {
        super.mo178e();
        this.f309d = true;
        this.f304ae = true;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f309d;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        int mo175c;
        m332a(this.f292L, bArr, i);
        int i2 = i + 2;
        m332a(this.f293M, bArr, i2);
        int i3 = i2 + 2;
        if (this.f667g != 38) {
            m332a(this.f294N, bArr, i3);
            int i4 = i3 + 2;
            m332a(this.f295O, bArr, i4);
            int i5 = i4 + 2;
            int i6 = i5 + 1;
            bArr[i5] = this.f296P;
            int i7 = i6 + 1;
            bArr[i6] = 0;
            m332a(this.f303a, bArr, i7);
            int i8 = i7 + 2;
            m333b(this.f297Q, bArr, i8);
            int i9 = i8 + 4;
            int i10 = i9 + 1;
            bArr[i9] = 0;
            i3 = i10 + 1;
            bArr[i10] = 0;
        }
        m332a(this.f286F, bArr, i3);
        int i11 = i3 + 2;
        m332a(this.f287G, bArr, i11);
        int i12 = i11 + 2;
        if (this.f667g == 38) {
            m332a(this.f288H, bArr, i12);
            i12 += 2;
        }
        m332a(this.f289I, bArr, i12);
        int i13 = i12 + 2;
        m332a(this.f289I == 0 ? 0 : this.f290J, bArr, i13);
        int i14 = i13 + 2;
        if (this.f667g == 38) {
            m332a(this.f291K, bArr, i14);
            mo175c = i14 + 2;
        } else {
            int i15 = i14 + 1;
            bArr[i14] = (byte) this.f298R;
            int i16 = i15 + 1;
            bArr[i15] = 0;
            mo175c = i16 + mo175c(bArr, i16);
        }
        return mo175c - i;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        if (this.f304ae) {
            this.f304ae = false;
            this.f287G = this.f284D + (this.f298R * 2) + 2;
            if (this.f667g != -96) {
                if (this.f667g == 37 && !m348f()) {
                    this.f287G += m342a(this.f300T, this.f287G);
                }
            } else if (this.f667g == -96) {
                this.f287G += 2;
            }
            this.f307b = this.f287G % 2;
            this.f307b = this.f307b == 0 ? 0 : 2 - this.f307b;
            this.f287G += this.f307b;
            this.f292L = mo176d(this.f302V, this.f305af);
            this.f306ag = this.f292L;
            int i = this.f301U - this.f287G;
            this.f286F = Math.min(this.f292L, i);
            int i2 = i - this.f286F;
            this.f290J = this.f287G + this.f286F;
            this.f308c = this.f290J % 2;
            this.f308c = this.f308c == 0 ? 0 : 2 - this.f308c;
            this.f290J += this.f308c;
            this.f293M = mo177e(this.f302V, this.f306ag);
            this.f289I = Math.min(this.f293M, i2);
        } else {
            if (this.f667g != -96) {
                this.f667g = (byte) 38;
            } else {
                this.f667g = (byte) -95;
            }
            this.f287G = 51;
            if (this.f292L - this.f288H > 0) {
                this.f307b = this.f287G % 2;
                this.f307b = this.f307b == 0 ? 0 : 2 - this.f307b;
                this.f287G += this.f307b;
            }
            this.f288H += this.f286F;
            int i3 = (this.f301U - this.f287G) - this.f307b;
            this.f286F = Math.min(this.f292L - this.f288H, i3);
            int i4 = i3 - this.f286F;
            this.f290J = this.f287G + this.f286F;
            this.f308c = this.f290J % 2;
            this.f308c = this.f308c == 0 ? 0 : 2 - this.f308c;
            this.f290J += this.f308c;
            this.f291K += this.f289I;
            this.f289I = Math.min(this.f293M - this.f291K, i4 - this.f308c);
        }
        if (this.f288H + this.f286F >= this.f292L && this.f291K + this.f289I >= this.f293M) {
            this.f309d = false;
        }
        return this;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = this.f307b;
        int a2 = (this.f667g != 37 || m348f()) ? i : m343a(this.f300T, bArr, i) + i;
        if (this.f286F > 0) {
            while (true) {
                i2 = a2;
                int i5 = i4;
                i4 = i5 - 1;
                if (i5 <= 0) {
                    break;
                }
                a2 = i2 + 1;
                bArr[i2] = 0;
            }
            System.arraycopy(this.f302V, this.f305af, bArr, i2, this.f286F);
            a2 = this.f286F + i2;
        }
        if (this.f289I > 0) {
            int i6 = this.f308c;
            while (true) {
                i3 = a2;
                int i7 = i6;
                i6 = i7 - 1;
                if (i7 <= 0) {
                    break;
                }
                a2 = i3 + 1;
                bArr[i3] = 0;
            }
            System.arraycopy(this.f302V, this.f306ag, bArr, i3, this.f289I);
            this.f306ag += this.f289I;
            a2 = this.f289I + i3;
        }
        return a2 - i;
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
