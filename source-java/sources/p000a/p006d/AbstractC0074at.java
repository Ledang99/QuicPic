package p000a.p006d;

import java.util.Enumeration;
import p000a.p007e.C0155e;

/* renamed from: a.d.at */
/* loaded from: classes.dex */
abstract class AbstractC0074at extends AbstractC0141u implements Enumeration {

    /* renamed from: D */
    protected int f310D;

    /* renamed from: E */
    protected int f311E;

    /* renamed from: F */
    protected int f312F;

    /* renamed from: G */
    protected int f313G;

    /* renamed from: H */
    protected int f314H;

    /* renamed from: I */
    protected int f315I;

    /* renamed from: J */
    protected int f316J;

    /* renamed from: K */
    int f317K;

    /* renamed from: L */
    byte f318L;

    /* renamed from: M */
    boolean f319M = true;

    /* renamed from: N */
    boolean f320N = true;

    /* renamed from: O */
    byte[] f321O = null;

    /* renamed from: P */
    int f322P;

    /* renamed from: Q */
    int f323Q;

    /* renamed from: R */
    InterfaceC0129i[] f324R;

    /* renamed from: S */
    private int f325S;

    /* renamed from: T */
    private boolean f326T;

    /* renamed from: U */
    private boolean f327U;

    /* renamed from: a */
    private int f328a;

    /* renamed from: b */
    protected int f329b;

    /* renamed from: c */
    protected int f330c;

    /* renamed from: d */
    protected int f331d;

    AbstractC0074at() {
    }

    /* renamed from: a */
    abstract int mo179a(byte[] bArr, int i, int i2);

    /* renamed from: b */
    abstract int mo180b(byte[] bArr, int i, int i2);

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: e */
    void mo178e() {
        super.mo178e();
        this.f316J = 0;
        this.f319M = true;
        this.f320N = true;
        this.f327U = false;
        this.f326T = false;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f672l == 0 && this.f319M;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        return 0;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        if (this.f320N) {
            this.f320N = false;
        }
        return this;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        this.f329b = m337f(bArr, i);
        if (this.f316J == 0) {
            this.f316J = this.f329b;
        }
        int i2 = i + 2;
        this.f330c = m337f(bArr, i2);
        int i3 = i2 + 4;
        this.f331d = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f310D = m337f(bArr, i4);
        int i5 = i4 + 2;
        this.f311E = m337f(bArr, i5);
        int i6 = i5 + 2;
        this.f317K = m337f(bArr, i6);
        int i7 = i6 + 2;
        this.f312F = m337f(bArr, i7);
        int i8 = i7 + 2;
        this.f313G = m337f(bArr, i8);
        int i9 = i8 + 2;
        this.f314H = bArr[i9] & 255;
        int i10 = i9 + 2;
        if (this.f314H != 0) {
            C0155e c0155e = f662e;
            if (C0155e.f728a > 2) {
                f662e.println("setupCount is not zero: " + this.f314H);
            }
        }
        return i10 - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        this.f325S = 0;
        this.f328a = 0;
        if (this.f331d > 0) {
            int i2 = this.f310D - (i - this.f669i);
            this.f328a = i2;
            int i3 = i2 + i;
            System.arraycopy(bArr, i3, this.f321O, this.f315I + this.f311E, this.f331d);
            i = i3 + this.f331d;
        }
        if (this.f317K > 0) {
            int i4 = this.f312F - (i - this.f669i);
            this.f325S = i4;
            int i5 = i4 + i;
            System.arraycopy(bArr, i5, this.f321O, this.f316J + this.f313G, this.f317K);
            int i6 = i5 + this.f317K;
        }
        if (!this.f326T && this.f311E + this.f331d == this.f329b) {
            this.f326T = true;
        }
        if (!this.f327U && this.f313G + this.f317K == this.f330c) {
            this.f327U = true;
        }
        if (this.f326T && this.f327U) {
            this.f319M = false;
            mo179a(this.f321O, this.f315I, this.f329b);
            mo180b(this.f321O, this.f316J, this.f330c);
        }
        return this.f328a + this.f331d + this.f325S + this.f317K;
    }
}
