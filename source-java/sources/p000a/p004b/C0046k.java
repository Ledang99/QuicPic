package p000a.p004b;

import java.io.UnsupportedEncodingException;

/* renamed from: a.b.k */
/* loaded from: classes.dex */
class C0046k extends AbstractC0041f {

    /* renamed from: A */
    private C0042g f167A;

    /* renamed from: B */
    private int f168B;

    /* renamed from: C */
    private byte[] f169C;

    /* renamed from: D */
    private byte[] f170D;

    /* renamed from: z */
    C0042g[] f171z;

    C0046k(C0042g c0042g) {
        this.f167A = c0042g;
        this.f134r = new C0037b();
        this.f169C = new byte[6];
    }

    /* renamed from: n */
    private int m108n(byte[] bArr, int i) {
        boolean z;
        this.f171z = new C0042g[this.f168B];
        String str = this.f167A.f151f.f97c;
        boolean z2 = false;
        int i2 = 0;
        int i3 = i;
        while (i2 < this.f168B) {
            try {
                int i4 = i3 + 14;
                while (bArr[i4] == 32) {
                    i4--;
                }
                String str2 = new String(bArr, i3, (i4 - i3) + 1, C0037b.f94a);
                int i5 = bArr[i3 + 15] & 255;
                boolean z3 = (bArr[i3 + 16] & 128) == 128;
                int i6 = (bArr[i3 + 16] & 96) >> 5;
                boolean z4 = (bArr[i3 + 16] & 16) == 16;
                boolean z5 = (bArr[i3 + 16] & 8) == 8;
                boolean z6 = (bArr[i3 + 16] & 4) == 4;
                boolean z7 = (bArr[i3 + 16] & 2) == 2;
                if (!z2 && this.f167A.f151f.f98d == i5 && (this.f167A.f151f == C0042g.f143b || this.f167A.f151f.f96b.equals(str2))) {
                    if (this.f167A.f151f == C0042g.f143b) {
                        this.f167A.f151f = new C0037b(str2, i5, str);
                    }
                    this.f167A.f154i = z3;
                    this.f167A.f153h = i6;
                    this.f167A.f155j = z4;
                    this.f167A.f156k = z5;
                    this.f167A.f157l = z6;
                    this.f167A.f158m = z7;
                    this.f167A.f160o = this.f169C;
                    this.f167A.f159n = true;
                    z = true;
                    this.f171z[i2] = this.f167A;
                } else {
                    this.f171z[i2] = new C0042g(new C0037b(str2, i5, str), this.f167A.f152g, z3, i6, z4, z5, z6, z7, this.f169C);
                    z = z2;
                }
                i2++;
                z2 = z;
                i3 += 18;
            } catch (UnsupportedEncodingException e) {
            }
        }
        return i3 - i;
    }

    @Override // p000a.p004b.AbstractC0041f
    /* renamed from: a */
    int mo68a(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p004b.AbstractC0041f
    /* renamed from: b */
    int mo69b(byte[] bArr, int i) {
        return m87m(bArr, i);
    }

    @Override // p000a.p004b.AbstractC0041f
    /* renamed from: c */
    int mo70c(byte[] bArr, int i) {
        this.f168B = bArr[i] & 255;
        int i2 = this.f168B * 18;
        int i3 = (this.f140x - i2) - 1;
        int i4 = i + 1;
        this.f168B = bArr[i] & 255;
        System.arraycopy(bArr, i2 + i4, this.f169C, 0, 6);
        int m108n = m108n(bArr, i4) + i4;
        this.f170D = new byte[i3];
        System.arraycopy(bArr, m108n, this.f170D, 0, i3);
        return (m108n + i3) - i;
    }
}
