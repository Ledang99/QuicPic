package p000a.p006d;

import p000a.p007e.C0155e;

/* renamed from: a.d.cf */
/* loaded from: classes.dex */
class C0114cf extends AbstractC0073as {

    /* renamed from: a */
    private byte[] f570a;

    /* renamed from: b */
    private int f571b;

    /* renamed from: c */
    private int f572c;

    C0114cf(String str, byte[] bArr, int i, int i2) {
        this.f300T = str;
        this.f570a = bArr;
        this.f571b = i;
        this.f572c = i2;
        this.f667g = (byte) 37;
        this.f299S = (byte) 84;
        this.f297Q = -1;
        this.f294N = 0;
        this.f295O = 65535;
        this.f296P = (byte) 0;
        this.f298R = 2;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: c */
    int mo175c(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.f299S;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        int i5 = i4 + 1;
        bArr[i4] = 0;
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
        if (bArr.length - i >= this.f572c) {
            System.arraycopy(this.f570a, this.f571b, bArr, i, this.f572c);
            return this.f572c;
        }
        C0155e c0155e = f662e;
        if (C0155e.f728a >= 3) {
            f662e.println("TransCallNamedPipe data too long for buffer");
        }
        return 0;
    }
}
