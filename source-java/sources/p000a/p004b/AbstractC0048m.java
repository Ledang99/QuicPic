package p000a.p004b;

/* renamed from: a.b.m */
/* loaded from: classes.dex */
public abstract class AbstractC0048m {

    /* renamed from: a */
    int f174a;

    /* renamed from: b */
    int f175b;

    /* renamed from: a */
    static void m110a(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
    }

    /* renamed from: a */
    abstract int mo109a(byte[] bArr, int i);

    /* renamed from: b */
    public int m111b(byte[] bArr, int i) {
        this.f175b = mo109a(bArr, i + 4);
        m112c(bArr, i);
        return this.f175b + 4;
    }

    /* renamed from: c */
    int m112c(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = (byte) this.f174a;
        if (this.f175b > 65535) {
            bArr[i2] = 1;
        }
        m110a(this.f175b, bArr, i2 + 1);
        return 4;
    }
}
