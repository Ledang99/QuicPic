package p000a.p006d;

/* renamed from: a.d.ci */
/* loaded from: classes.dex */
class C0117ci extends AbstractC0074at {

    /* renamed from: S */
    int f575S;

    /* renamed from: T */
    private C0091bj f576T;

    /* renamed from: U */
    private int f577U;

    /* renamed from: a */
    int f578a;

    C0117ci(C0091bj c0091bj) {
        this.f576T = c0091bj;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        this.f575S = m337f(bArr, i);
        int i3 = i + 2;
        this.f577U = m337f(bArr, i3);
        this.f578a = m337f(bArr, i3 + 2);
        return 6;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        return 0;
    }
}
