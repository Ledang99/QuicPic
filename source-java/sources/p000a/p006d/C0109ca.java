package p000a.p006d;

/* renamed from: a.d.ca */
/* loaded from: classes.dex */
class C0109ca extends AbstractC0074at {

    /* renamed from: S */
    private int f552S;

    /* renamed from: a */
    InterfaceC0131k f553a;

    C0109ca(int i) {
        this.f552S = i;
        this.f318L = (byte) 5;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        return 2;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        switch (this.f552S) {
            case 257:
                return m299d(bArr, i);
            case 258:
                return m298c(bArr, i);
            default:
                return 0;
        }
    }

    /* renamed from: c */
    int m298c(byte[] bArr, int i) {
        C0111cc c0111cc = new C0111cc(this);
        c0111cc.f560a = m339h(bArr, i);
        int i2 = i + 8;
        c0111cc.f561b = m339h(bArr, i2);
        int i3 = i2 + 8;
        c0111cc.f562c = m338g(bArr, i3);
        int i4 = i3 + 4;
        int i5 = i4 + 1;
        c0111cc.f563d = (bArr[i4] & 255) > 0;
        int i6 = i5 + 1;
        c0111cc.f564e = (bArr[i5] & 255) > 0;
        this.f553a = c0111cc;
        return i6 - i;
    }

    /* renamed from: d */
    int m299d(byte[] bArr, int i) {
        C0110cb c0110cb = new C0110cb(this);
        c0110cb.f554a = m340i(bArr, i);
        int i2 = i + 8;
        c0110cb.f555b = m340i(bArr, i2);
        int i3 = i2 + 8;
        c0110cb.f556c = m340i(bArr, i3);
        int i4 = i3 + 8;
        c0110cb.f557d = m340i(bArr, i4);
        int i5 = i4 + 8;
        c0110cb.f558e = m337f(bArr, i5);
        this.f553a = c0110cb;
        return (i5 + 2) - i;
    }
}
