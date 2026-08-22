package com.p014a.p015a.p016a.p021e;

/* renamed from: com.a.a.a.e.b */
/* loaded from: classes.dex */
public class C0508b {

    /* renamed from: a */
    protected final byte[][] f1888a = new byte[EnumC0509c.values().length][];

    /* renamed from: b */
    protected final char[][] f1889b = new char[EnumC0510d.values().length][];

    /* renamed from: a */
    private byte[] m1873a(int i) {
        return new byte[i];
    }

    /* renamed from: b */
    private char[] m1874b(int i) {
        return new char[i];
    }

    /* renamed from: a */
    public final void m1875a(EnumC0509c enumC0509c, byte[] bArr) {
        this.f1888a[enumC0509c.ordinal()] = bArr;
    }

    /* renamed from: a */
    public final void m1876a(EnumC0510d enumC0510d, char[] cArr) {
        this.f1889b[enumC0510d.ordinal()] = cArr;
    }

    /* renamed from: a */
    public final byte[] m1877a(EnumC0509c enumC0509c) {
        return m1878a(enumC0509c, 0);
    }

    /* renamed from: a */
    public final byte[] m1878a(EnumC0509c enumC0509c, int i) {
        int ordinal = enumC0509c.ordinal();
        int i2 = enumC0509c.f1895e;
        if (i < i2) {
            i = i2;
        }
        byte[] bArr = this.f1888a[ordinal];
        if (bArr == null || bArr.length < i) {
            return m1873a(i);
        }
        this.f1888a[ordinal] = null;
        return bArr;
    }

    /* renamed from: a */
    public final char[] m1879a(EnumC0510d enumC0510d) {
        return m1880a(enumC0510d, 0);
    }

    /* renamed from: a */
    public final char[] m1880a(EnumC0510d enumC0510d, int i) {
        if (enumC0510d.f1901e > i) {
            i = enumC0510d.f1901e;
        }
        int ordinal = enumC0510d.ordinal();
        char[] cArr = this.f1889b[ordinal];
        if (cArr == null || cArr.length < i) {
            return m1874b(i);
        }
        this.f1889b[ordinal] = null;
        return cArr;
    }
}
