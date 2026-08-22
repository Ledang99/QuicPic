package p000a.p006d;

import p000a.p007e.C0155e;

/* renamed from: a.d.cj */
/* loaded from: classes.dex */
class C0118cj extends AbstractC0073as {

    /* renamed from: a */
    private byte[] f579a;

    /* renamed from: b */
    private int f580b;

    /* renamed from: c */
    private int f581c;

    /* renamed from: d */
    private int f582d;

    C0118cj(int i, byte[] bArr, int i2, int i3) {
        this.f580b = i;
        this.f579a = bArr;
        this.f581c = i2;
        this.f582d = i3;
        this.f667g = (byte) 37;
        this.f299S = (byte) 38;
        this.f294N = 0;
        this.f295O = 65535;
        this.f296P = (byte) 0;
        this.f298R = 2;
        this.f300T = "\\PIPE\\";
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: c */
    int mo175c(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.f299S;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        m332a(this.f580b, bArr, i3);
        int i4 = i3 + 2;
        return 4;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: d */
    int mo176d(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        if (bArr.length - i >= this.f582d) {
            System.arraycopy(this.f579a, this.f581c, bArr, i, this.f582d);
            return this.f582d;
        }
        C0155e c0155e = f662e;
        if (C0155e.f728a >= 3) {
            f662e.println("TransTransactNamedPipe data too long for buffer");
        }
        return 0;
    }
}
