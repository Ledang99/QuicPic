package p012b.p013a;

/* renamed from: b.a.hz */
/* loaded from: classes.dex */
public final class C0430hz extends AbstractC0432ia {

    /* renamed from: a */
    private byte[] f1553a;

    /* renamed from: b */
    private int f1554b;

    /* renamed from: c */
    private int f1555c;

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: a */
    public int mo1421a(byte[] bArr, int i, int i2) {
        int mo1429d = mo1429d();
        if (i2 > mo1429d) {
            i2 = mo1429d;
        }
        if (i2 > 0) {
            System.arraycopy(this.f1553a, this.f1554b, bArr, i, i2);
            mo1424a(i2);
        }
        return i2;
    }

    /* renamed from: a */
    public void m1423a() {
        this.f1553a = null;
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: a */
    public void mo1424a(int i) {
        this.f1554b += i;
    }

    /* renamed from: a */
    public void m1425a(byte[] bArr) {
        m1428c(bArr, 0, bArr.length);
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: b */
    public void mo1422b(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: b */
    public byte[] mo1426b() {
        return this.f1553a;
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: c */
    public int mo1427c() {
        return this.f1554b;
    }

    /* renamed from: c */
    public void m1428c(byte[] bArr, int i, int i2) {
        this.f1553a = bArr;
        this.f1554b = i;
        this.f1555c = i + i2;
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: d */
    public int mo1429d() {
        return this.f1555c - this.f1554b;
    }
}
