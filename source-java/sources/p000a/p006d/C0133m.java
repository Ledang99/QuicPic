package p000a.p006d;

import p000a.p007e.C0155e;

/* renamed from: a.d.m */
/* loaded from: classes.dex */
class C0133m extends AbstractC0074at {

    /* renamed from: S */
    private int f619S;

    /* renamed from: T */
    private int f620T;

    /* renamed from: a */
    String f621a;

    C0133m() {
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        this.f322P = m337f(bArr, i);
        int i3 = i + 2;
        this.f619S = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f323Q = m337f(bArr, i4);
        int i5 = i4 + 2;
        this.f620T = m337f(bArr, i5);
        return (i5 + 2) - i;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        this.f324R = new C0134n[this.f323Q];
        C0134n c0134n = null;
        int i3 = i;
        for (int i4 = 0; i4 < this.f323Q; i4++) {
            InterfaceC0129i[] interfaceC0129iArr = this.f324R;
            c0134n = new C0134n(this);
            interfaceC0129iArr[i4] = c0134n;
            c0134n.f622a = m346a(bArr, i3, 16, false);
            int i5 = i3 + 16;
            int i6 = i5 + 1;
            c0134n.f623b = bArr[i5] & 255;
            int i7 = i6 + 1;
            c0134n.f624c = bArr[i6] & 255;
            c0134n.f625d = m338g(bArr, i7);
            int i8 = i7 + 4;
            int g = m338g(bArr, i8);
            i3 = i8 + 4;
            c0134n.f626e = m346a(bArr, ((g & 65535) - this.f619S) + i, 48, false);
            C0155e c0155e = f662e;
            if (C0155e.f728a >= 4) {
                f662e.println(c0134n);
            }
        }
        this.f621a = this.f323Q != 0 ? c0134n.f622a : null;
        return i3 - i;
    }
}
