package p000a.p006d;

/* renamed from: a.d.bx */
/* loaded from: classes.dex */
class C0105bx extends AbstractC0074at {

    /* renamed from: S */
    private int f542S;

    /* renamed from: a */
    InterfaceC0054a f543a;

    C0105bx(int i) {
        this.f542S = i;
        this.f667g = (byte) 50;
        this.f318L = (byte) 3;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        switch (this.f542S) {
            case 1:
                return m292c(bArr, i);
            case 259:
                return m293d(bArr, i);
            case 1007:
                return m294e(bArr, i);
            default:
                return 0;
        }
    }

    /* renamed from: c */
    int m292c(byte[] bArr, int i) {
        C0106by c0106by = new C0106by(this);
        int i2 = i + 4;
        c0106by.f546c = m338g(bArr, i2);
        c0106by.f544a = m338g(bArr, r1);
        c0106by.f545b = m338g(bArr, r1);
        int i3 = i2 + 4 + 4 + 4;
        c0106by.f547d = m337f(bArr, i3);
        this.f543a = c0106by;
        return (i3 + 4) - i;
    }

    /* renamed from: d */
    int m293d(byte[] bArr, int i) {
        C0106by c0106by = new C0106by(this);
        c0106by.f544a = m339h(bArr, i);
        int i2 = i + 8;
        c0106by.f545b = m339h(bArr, i2);
        int i3 = i2 + 8;
        c0106by.f546c = m338g(bArr, i3);
        int i4 = i3 + 4;
        c0106by.f547d = m338g(bArr, i4);
        this.f543a = c0106by;
        return (i4 + 4) - i;
    }

    /* renamed from: e */
    int m294e(byte[] bArr, int i) {
        C0106by c0106by = new C0106by(this);
        c0106by.f544a = m339h(bArr, i);
        int i2 = i + 8;
        c0106by.f545b = m339h(bArr, i2);
        int i3 = i2 + 8 + 8;
        c0106by.f546c = m338g(bArr, i3);
        int i4 = i3 + 4;
        c0106by.f547d = m338g(bArr, i4);
        this.f543a = c0106by;
        return (i4 + 4) - i;
    }
}
