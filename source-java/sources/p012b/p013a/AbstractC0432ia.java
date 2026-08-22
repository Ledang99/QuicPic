package p012b.p013a;

/* renamed from: b.a.ia */
/* loaded from: classes.dex */
public abstract class AbstractC0432ia {
    /* renamed from: a */
    public abstract int mo1421a(byte[] bArr, int i, int i2);

    /* renamed from: a */
    public void mo1424a(int i) {
    }

    /* renamed from: b */
    public void m1430b(byte[] bArr) {
        mo1422b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public abstract void mo1422b(byte[] bArr, int i, int i2);

    /* renamed from: b */
    public byte[] mo1426b() {
        return null;
    }

    /* renamed from: c */
    public int mo1427c() {
        return 0;
    }

    /* renamed from: d */
    public int mo1429d() {
        return -1;
    }

    /* renamed from: d */
    public int m1431d(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int mo1421a = mo1421a(bArr, i + i3, i2 - i3);
            if (mo1421a <= 0) {
                throw new C0433ib("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)");
            }
            i3 += mo1421a;
        }
        return i3;
    }
}
