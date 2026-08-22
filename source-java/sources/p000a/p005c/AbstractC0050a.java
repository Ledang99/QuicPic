package p000a.p005c;

/* renamed from: a.c.a */
/* loaded from: classes.dex */
public abstract class AbstractC0050a {

    /* renamed from: a */
    protected static final byte[] f177a = {78, 84, 76, 77, 83, 83, 80, 0};

    /* renamed from: b */
    private static final String f178b = System.getProperty("file.encoding");

    /* renamed from: c */
    private int f179c;

    /* renamed from: a */
    static int m113a(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    /* renamed from: a */
    static void m114a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
    }

    /* renamed from: a */
    static void m115a(byte[] bArr, int i, int i2, byte[] bArr2) {
        int length = bArr2 != null ? bArr2.length : 0;
        if (length == 0) {
            return;
        }
        m118b(bArr, i, length);
        m118b(bArr, i + 2, length);
        m114a(bArr, i + 4, i2);
        System.arraycopy(bArr2, 0, bArr, i2, length);
    }

    /* renamed from: b */
    static int m116b(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    /* renamed from: b */
    static String m117b() {
        return f178b;
    }

    /* renamed from: b */
    static void m118b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
    }

    /* renamed from: c */
    static byte[] m119c(byte[] bArr, int i) {
        int m116b = m116b(bArr, i);
        byte[] bArr2 = new byte[m116b];
        System.arraycopy(bArr, m113a(bArr, i + 4), bArr2, 0, m116b);
        return bArr2;
    }

    /* renamed from: a */
    public int m120a() {
        return this.f179c;
    }

    /* renamed from: a */
    public void m121a(int i) {
        this.f179c = i;
    }
}
