package p000a.p006d;

import p000a.p007e.C0155e;

/* renamed from: a.d.p */
/* loaded from: classes.dex */
class C0136p extends AbstractC0074at {

    /* renamed from: S */
    private int f628S;

    /* renamed from: a */
    private int f629a;

    C0136p() {
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        this.f322P = m337f(bArr, i);
        int i3 = i + 2;
        this.f629a = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f323Q = m337f(bArr, i4);
        int i5 = i4 + 2;
        this.f628S = m337f(bArr, i5);
        return (i5 + 2) - i;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        this.f680t = false;
        this.f324R = new C0093bl[this.f323Q];
        int i3 = i;
        for (int i4 = 0; i4 < this.f323Q; i4++) {
            InterfaceC0129i[] interfaceC0129iArr = this.f324R;
            C0093bl c0093bl = new C0093bl();
            interfaceC0129iArr[i4] = c0093bl;
            c0093bl.f440b = m346a(bArr, i3, 13, false);
            int i5 = i3 + 14;
            c0093bl.f441c = m337f(bArr, i5);
            int i6 = i5 + 2;
            int g = m338g(bArr, i6);
            i3 = i6 + 4;
            c0093bl.f442d = m346a(bArr, ((g & 65535) - this.f629a) + i, 128, false);
            C0155e c0155e = f662e;
            if (C0155e.f728a >= 4) {
                f662e.println(c0093bl);
            }
        }
        return i3 - i;
    }
}
