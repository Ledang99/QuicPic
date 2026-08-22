package p000a.p007e;

import java.security.MessageDigest;

/* renamed from: a.e.f */
/* loaded from: classes.dex */
public class C0156f extends MessageDigest implements Cloneable {

    /* renamed from: a */
    private int[] f730a;

    /* renamed from: b */
    private long f731b;

    /* renamed from: c */
    private byte[] f732c;

    /* renamed from: d */
    private int[] f733d;

    public C0156f() {
        super("MD4");
        this.f730a = new int[4];
        this.f732c = new byte[64];
        this.f733d = new int[16];
        engineReset();
    }

    private C0156f(C0156f c0156f) {
        this();
        this.f730a = (int[]) c0156f.f730a.clone();
        this.f732c = (byte[]) c0156f.f732c.clone();
        this.f731b = c0156f.f731b;
    }

    /* renamed from: a */
    private int m383a(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = ((i2 & i3) | ((i2 ^ (-1)) & i4)) + i + i5;
        return (i7 >>> (32 - i6)) | (i7 << i6);
    }

    /* renamed from: a */
    private void m384a(byte[] bArr, int i) {
        for (int i2 = 0; i2 < 16; i2++) {
            int[] iArr = this.f733d;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = ((bArr[i3] & 255) << 8) | (bArr[i] & 255);
            int i6 = i4 + 1;
            i = i6 + 1;
            iArr[i2] = i5 | ((bArr[i4] & 255) << 16) | ((bArr[i6] & 255) << 24);
        }
        int i7 = this.f730a[0];
        int i8 = this.f730a[1];
        int i9 = this.f730a[2];
        int i10 = this.f730a[3];
        int m383a = m383a(i7, i8, i9, i10, this.f733d[0], 3);
        int m383a2 = m383a(i10, m383a, i8, i9, this.f733d[1], 7);
        int m383a3 = m383a(i9, m383a2, m383a, i8, this.f733d[2], 11);
        int m383a4 = m383a(i8, m383a3, m383a2, m383a, this.f733d[3], 19);
        int m383a5 = m383a(m383a, m383a4, m383a3, m383a2, this.f733d[4], 3);
        int m383a6 = m383a(m383a2, m383a5, m383a4, m383a3, this.f733d[5], 7);
        int m383a7 = m383a(m383a3, m383a6, m383a5, m383a4, this.f733d[6], 11);
        int m383a8 = m383a(m383a4, m383a7, m383a6, m383a5, this.f733d[7], 19);
        int m383a9 = m383a(m383a5, m383a8, m383a7, m383a6, this.f733d[8], 3);
        int m383a10 = m383a(m383a6, m383a9, m383a8, m383a7, this.f733d[9], 7);
        int m383a11 = m383a(m383a7, m383a10, m383a9, m383a8, this.f733d[10], 11);
        int m383a12 = m383a(m383a8, m383a11, m383a10, m383a9, this.f733d[11], 19);
        int m383a13 = m383a(m383a9, m383a12, m383a11, m383a10, this.f733d[12], 3);
        int m383a14 = m383a(m383a10, m383a13, m383a12, m383a11, this.f733d[13], 7);
        int m383a15 = m383a(m383a11, m383a14, m383a13, m383a12, this.f733d[14], 11);
        int m383a16 = m383a(m383a12, m383a15, m383a14, m383a13, this.f733d[15], 19);
        int m385b = m385b(m383a13, m383a16, m383a15, m383a14, this.f733d[0], 3);
        int m385b2 = m385b(m383a14, m385b, m383a16, m383a15, this.f733d[4], 5);
        int m385b3 = m385b(m383a15, m385b2, m385b, m383a16, this.f733d[8], 9);
        int m385b4 = m385b(m383a16, m385b3, m385b2, m385b, this.f733d[12], 13);
        int m385b5 = m385b(m385b, m385b4, m385b3, m385b2, this.f733d[1], 3);
        int m385b6 = m385b(m385b2, m385b5, m385b4, m385b3, this.f733d[5], 5);
        int m385b7 = m385b(m385b3, m385b6, m385b5, m385b4, this.f733d[9], 9);
        int m385b8 = m385b(m385b4, m385b7, m385b6, m385b5, this.f733d[13], 13);
        int m385b9 = m385b(m385b5, m385b8, m385b7, m385b6, this.f733d[2], 3);
        int m385b10 = m385b(m385b6, m385b9, m385b8, m385b7, this.f733d[6], 5);
        int m385b11 = m385b(m385b7, m385b10, m385b9, m385b8, this.f733d[10], 9);
        int m385b12 = m385b(m385b8, m385b11, m385b10, m385b9, this.f733d[14], 13);
        int m385b13 = m385b(m385b9, m385b12, m385b11, m385b10, this.f733d[3], 3);
        int m385b14 = m385b(m385b10, m385b13, m385b12, m385b11, this.f733d[7], 5);
        int m385b15 = m385b(m385b11, m385b14, m385b13, m385b12, this.f733d[11], 9);
        int m385b16 = m385b(m385b12, m385b15, m385b14, m385b13, this.f733d[15], 13);
        int m386c = m386c(m385b13, m385b16, m385b15, m385b14, this.f733d[0], 3);
        int m386c2 = m386c(m385b14, m386c, m385b16, m385b15, this.f733d[8], 9);
        int m386c3 = m386c(m385b15, m386c2, m386c, m385b16, this.f733d[4], 11);
        int m386c4 = m386c(m385b16, m386c3, m386c2, m386c, this.f733d[12], 15);
        int m386c5 = m386c(m386c, m386c4, m386c3, m386c2, this.f733d[2], 3);
        int m386c6 = m386c(m386c2, m386c5, m386c4, m386c3, this.f733d[10], 9);
        int m386c7 = m386c(m386c3, m386c6, m386c5, m386c4, this.f733d[6], 11);
        int m386c8 = m386c(m386c4, m386c7, m386c6, m386c5, this.f733d[14], 15);
        int m386c9 = m386c(m386c5, m386c8, m386c7, m386c6, this.f733d[1], 3);
        int m386c10 = m386c(m386c6, m386c9, m386c8, m386c7, this.f733d[9], 9);
        int m386c11 = m386c(m386c7, m386c10, m386c9, m386c8, this.f733d[5], 11);
        int m386c12 = m386c(m386c8, m386c11, m386c10, m386c9, this.f733d[13], 15);
        int m386c13 = m386c(m386c9, m386c12, m386c11, m386c10, this.f733d[3], 3);
        int m386c14 = m386c(m386c10, m386c13, m386c12, m386c11, this.f733d[11], 9);
        int m386c15 = m386c(m386c11, m386c14, m386c13, m386c12, this.f733d[7], 11);
        int m386c16 = m386c(m386c12, m386c15, m386c14, m386c13, this.f733d[15], 15);
        int[] iArr2 = this.f730a;
        iArr2[0] = iArr2[0] + m386c13;
        int[] iArr3 = this.f730a;
        iArr3[1] = m386c16 + iArr3[1];
        int[] iArr4 = this.f730a;
        iArr4[2] = iArr4[2] + m386c15;
        int[] iArr5 = this.f730a;
        iArr5[3] = iArr5[3] + m386c14;
    }

    /* renamed from: b */
    private int m385b(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = (((i3 | i4) & i2) | (i3 & i4)) + i + i5 + 1518500249;
        return (i7 >>> (32 - i6)) | (i7 << i6);
    }

    /* renamed from: c */
    private int m386c(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = ((i2 ^ i3) ^ i4) + i + i5 + 1859775393;
        return (i7 >>> (32 - i6)) | (i7 << i6);
    }

    @Override // java.security.MessageDigest, java.security.MessageDigestSpi
    public Object clone() {
        return new C0156f(this);
    }

    @Override // java.security.MessageDigestSpi
    public byte[] engineDigest() {
        int i = (int) (this.f731b % 64);
        int i2 = i < 56 ? 56 - i : 120 - i;
        byte[] bArr = new byte[i2 + 8];
        bArr[0] = Byte.MIN_VALUE;
        for (int i3 = 0; i3 < 8; i3++) {
            bArr[i2 + i3] = (byte) ((this.f731b * 8) >>> (i3 * 8));
        }
        engineUpdate(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[16];
        for (int i4 = 0; i4 < 4; i4++) {
            for (int i5 = 0; i5 < 4; i5++) {
                bArr2[(i4 * 4) + i5] = (byte) (this.f730a[i4] >>> (i5 * 8));
            }
        }
        engineReset();
        return bArr2;
    }

    @Override // java.security.MessageDigestSpi
    public void engineReset() {
        this.f730a[0] = 1732584193;
        this.f730a[1] = -271733879;
        this.f730a[2] = -1732584194;
        this.f730a[3] = 271733878;
        this.f731b = 0L;
        for (int i = 0; i < 64; i++) {
            this.f732c[i] = 0;
        }
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte b2) {
        int i = (int) (this.f731b % 64);
        this.f731b++;
        this.f732c[i] = b2;
        if (i == 63) {
            m384a(this.f732c, 0);
        }
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = 0;
        if (i < 0 || i2 < 0 || i + i2 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i5 = (int) (this.f731b % 64);
        this.f731b += i2;
        int i6 = 64 - i5;
        if (i2 >= i6) {
            System.arraycopy(bArr, i, this.f732c, i5, i6);
            m384a(this.f732c, 0);
            i3 = i6;
            while ((i3 + 64) - 1 < i2) {
                m384a(bArr, i + i3);
                i3 += 64;
            }
        } else {
            i4 = i5;
            i3 = 0;
        }
        if (i3 < i2) {
            System.arraycopy(bArr, i + i3, this.f732c, i4, i2 - i3);
        }
    }
}
