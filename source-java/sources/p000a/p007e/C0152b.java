package p000a.p007e;

/* renamed from: a.e.b */
/* loaded from: classes.dex */
public class C0152b {
    /* renamed from: a */
    public static int m371a(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >> 16) & 255);
        bArr[i4] = (byte) ((i >> 8) & 255);
        bArr[i4 + 1] = (byte) (i & 255);
        return 4;
    }

    /* renamed from: a */
    public static int m372a(long j, byte[] bArr, int i) {
        m375b((int) (j & 4294967295L), bArr, i);
        m375b((int) ((j >> 32) & 4294967295L), bArr, i + 4);
        return 8;
    }

    /* renamed from: a */
    public static int m373a(short s, byte[] bArr, int i) {
        bArr[i] = (byte) (s & 255);
        bArr[i + 1] = (byte) ((s >> 8) & 255);
        return 2;
    }

    /* renamed from: a */
    public static short m374a(byte[] bArr, int i) {
        return (short) (((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
    }

    /* renamed from: b */
    public static int m375b(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) (i & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >> 8) & 255);
        bArr[i4] = (byte) ((i >> 16) & 255);
        bArr[i4 + 1] = (byte) ((i >> 24) & 255);
        return 4;
    }

    /* renamed from: b */
    public static short m376b(byte[] bArr, int i) {
        return (short) ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8));
    }

    /* renamed from: c */
    public static int m377c(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }
}
