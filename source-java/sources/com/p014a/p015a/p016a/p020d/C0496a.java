package com.p014a.p015a.p016a.p020d;

import com.p014a.p015a.p016a.p021e.C0507a;
import com.p014a.p015a.p016a.p021e.C0513g;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.a.a.a.d.a */
/* loaded from: classes.dex */
public final class C0496a {

    /* renamed from: a */
    protected final C0496a f1823a;

    /* renamed from: b */
    protected final AtomicReference f1824b;

    /* renamed from: c */
    protected final boolean f1825c;

    /* renamed from: d */
    protected int f1826d;

    /* renamed from: e */
    protected int f1827e;

    /* renamed from: f */
    protected int f1828f;

    /* renamed from: g */
    protected int[] f1829g;

    /* renamed from: h */
    protected AbstractC0501f[] f1830h;

    /* renamed from: i */
    protected C0497b[] f1831i;

    /* renamed from: j */
    protected int f1832j;

    /* renamed from: k */
    protected int f1833k;

    /* renamed from: l */
    private final int f1834l;

    /* renamed from: m */
    private transient boolean f1835m;

    /* renamed from: n */
    private boolean f1836n;

    /* renamed from: o */
    private boolean f1837o;

    /* renamed from: p */
    private boolean f1838p;

    private C0496a(int i, boolean z, int i2) {
        int i3 = 16;
        this.f1823a = null;
        this.f1834l = i2;
        this.f1825c = z;
        if (i < 16) {
            i = 16;
        } else if (((i - 1) & i) != 0) {
            while (i3 < i) {
                i3 += i3;
            }
            i = i3;
        }
        this.f1824b = new AtomicReference(m1815e(i));
    }

    private C0496a(C0496a c0496a, boolean z, int i, C0498c c0498c) {
        this.f1823a = c0496a;
        this.f1834l = i;
        this.f1825c = z;
        this.f1824b = null;
        this.f1826d = c0498c.f1842a;
        this.f1828f = c0498c.f1843b;
        this.f1829g = c0498c.f1844c;
        this.f1830h = c0498c.f1845d;
        this.f1831i = c0498c.f1846e;
        this.f1832j = c0498c.f1847f;
        this.f1833k = c0498c.f1848g;
        this.f1827e = c0498c.f1849h;
        this.f1835m = false;
        this.f1836n = true;
        this.f1837o = true;
        this.f1838p = true;
    }

    /* renamed from: a */
    public static C0496a m1809a() {
        long currentTimeMillis = System.currentTimeMillis();
        return m1810a((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    /* renamed from: a */
    protected static C0496a m1810a(int i) {
        return new C0496a(64, true, i);
    }

    /* renamed from: a */
    private static AbstractC0501f m1811a(int i, String str, int[] iArr, int i2) {
        if (i2 < 4) {
            switch (i2) {
                case 1:
                    return new C0502g(str, i, iArr[0]);
                case 2:
                    return new C0503h(str, i, iArr[0], iArr[1]);
                case 3:
                    return new C0504i(str, i, iArr[0], iArr[1], iArr[2]);
            }
        }
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            iArr2[i3] = iArr[i3];
        }
        return new C0505j(str, i, iArr2, i2);
    }

    /* renamed from: a */
    private void m1812a(int i, AbstractC0501f abstractC0501f) {
        int i2;
        if (this.f1836n) {
            m1819h();
        }
        if (this.f1835m) {
            m1816e();
        }
        this.f1826d++;
        int i3 = i & this.f1828f;
        if (this.f1830h[i3] == null) {
            this.f1829g[i3] = i << 8;
            if (this.f1837o) {
                m1821j();
            }
            this.f1830h[i3] = abstractC0501f;
        } else {
            if (this.f1838p) {
                m1820i();
            }
            this.f1832j++;
            int i4 = this.f1829g[i3];
            int i5 = i4 & 255;
            if (i5 == 0) {
                if (this.f1833k <= 254) {
                    i2 = this.f1833k;
                    this.f1833k++;
                    if (i2 >= this.f1831i.length) {
                        m1822k();
                    }
                } else {
                    i2 = m1818g();
                }
                this.f1829g[i3] = (i4 & (-256)) | (i2 + 1);
            } else {
                i2 = i5 - 1;
            }
            C0497b c0497b = new C0497b(abstractC0501f, this.f1831i[i2]);
            this.f1831i[i2] = c0497b;
            this.f1827e = Math.max(c0497b.m1834a(), this.f1827e);
            if (this.f1827e > 255) {
                m1833d(255);
            }
        }
        int length = this.f1829g.length;
        if (this.f1826d > (length >> 1)) {
            int i6 = length >> 2;
            if (this.f1826d > length - i6) {
                this.f1835m = true;
            } else if (this.f1832j >= i6) {
                this.f1835m = true;
            }
        }
    }

    /* renamed from: a */
    private void m1813a(C0498c c0498c) {
        int i = c0498c.f1842a;
        C0498c c0498c2 = (C0498c) this.f1824b.get();
        if (i <= c0498c2.f1842a) {
            return;
        }
        if (i > 6000 || c0498c.f1849h > 63) {
            c0498c = m1815e(64);
        }
        this.f1824b.compareAndSet(c0498c2, c0498c);
    }

    /* renamed from: d */
    public static AbstractC0501f m1814d() {
        return C0502g.m1863b();
    }

    /* renamed from: e */
    private C0498c m1815e(int i) {
        return new C0498c(0, i - 1, new int[i], new AbstractC0501f[i], null, 0, 0, 0);
    }

    /* renamed from: e */
    private void m1816e() {
        int i;
        int max;
        int i2 = 0;
        this.f1835m = false;
        this.f1837o = false;
        int length = this.f1829g.length;
        int i3 = length + length;
        if (i3 > 65536) {
            m1817f();
            return;
        }
        this.f1829g = new int[i3];
        this.f1828f = i3 - 1;
        AbstractC0501f[] abstractC0501fArr = this.f1830h;
        this.f1830h = new AbstractC0501f[i3];
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            AbstractC0501f abstractC0501f = abstractC0501fArr[i5];
            if (abstractC0501f != null) {
                i4++;
                int hashCode = abstractC0501f.hashCode();
                int i6 = this.f1828f & hashCode;
                this.f1830h[i6] = abstractC0501f;
                this.f1829g[i6] = hashCode << 8;
            }
        }
        int i7 = this.f1833k;
        if (i7 == 0) {
            this.f1827e = 0;
            return;
        }
        this.f1832j = 0;
        this.f1833k = 0;
        this.f1838p = false;
        C0497b[] c0497bArr = this.f1831i;
        this.f1831i = new C0497b[c0497bArr.length];
        int i8 = 0;
        int i9 = i4;
        while (i8 < i7) {
            int i10 = i9;
            C0497b c0497b = c0497bArr[i8];
            while (c0497b != null) {
                int i11 = i10 + 1;
                AbstractC0501f abstractC0501f2 = c0497b.f1839a;
                int hashCode2 = abstractC0501f2.hashCode();
                int i12 = this.f1828f & hashCode2;
                int i13 = this.f1829g[i12];
                if (this.f1830h[i12] == null) {
                    this.f1829g[i12] = hashCode2 << 8;
                    this.f1830h[i12] = abstractC0501f2;
                    max = i2;
                } else {
                    this.f1832j++;
                    int i14 = i13 & 255;
                    if (i14 == 0) {
                        if (this.f1833k <= 254) {
                            i = this.f1833k;
                            this.f1833k++;
                            if (i >= this.f1831i.length) {
                                m1822k();
                            }
                        } else {
                            i = m1818g();
                        }
                        this.f1829g[i12] = (i13 & (-256)) | (i + 1);
                    } else {
                        i = i14 - 1;
                    }
                    C0497b c0497b2 = new C0497b(abstractC0501f2, this.f1831i[i]);
                    this.f1831i[i] = c0497b2;
                    max = Math.max(i2, c0497b2.m1834a());
                }
                c0497b = c0497b.f1840b;
                i2 = max;
                i10 = i11;
            }
            i8++;
            i9 = i10;
        }
        this.f1827e = i2;
        if (i9 != this.f1826d) {
            throw new RuntimeException("Internal error: count after rehash " + i9 + "; should be " + this.f1826d);
        }
    }

    /* renamed from: f */
    private void m1817f() {
        this.f1826d = 0;
        this.f1827e = 0;
        Arrays.fill(this.f1829g, 0);
        Arrays.fill(this.f1830h, (Object) null);
        Arrays.fill(this.f1831i, (Object) null);
        this.f1832j = 0;
        this.f1833k = 0;
    }

    /* renamed from: g */
    private int m1818g() {
        C0497b[] c0497bArr = this.f1831i;
        int i = Integer.MAX_VALUE;
        int i2 = -1;
        int i3 = 0;
        int i4 = this.f1833k;
        while (i3 < i4) {
            int m1834a = c0497bArr[i3].m1834a();
            if (m1834a >= i) {
                m1834a = i;
            } else {
                if (m1834a == 1) {
                    return i3;
                }
                i2 = i3;
            }
            i3++;
            i = m1834a;
        }
        return i2;
    }

    /* renamed from: h */
    private void m1819h() {
        int[] iArr = this.f1829g;
        this.f1829g = C0507a.m1869a(iArr, iArr.length);
        this.f1836n = false;
    }

    /* renamed from: i */
    private void m1820i() {
        C0497b[] c0497bArr = this.f1831i;
        if (c0497bArr == null) {
            this.f1831i = new C0497b[32];
        } else {
            this.f1831i = (C0497b[]) C0507a.m1871a(c0497bArr, c0497bArr.length);
        }
        this.f1838p = false;
    }

    /* renamed from: j */
    private void m1821j() {
        AbstractC0501f[] abstractC0501fArr = this.f1830h;
        this.f1830h = (AbstractC0501f[]) C0507a.m1871a(abstractC0501fArr, abstractC0501fArr.length);
        this.f1837o = false;
    }

    /* renamed from: k */
    private void m1822k() {
        C0497b[] c0497bArr = this.f1831i;
        this.f1831i = (C0497b[]) C0507a.m1871a(c0497bArr, c0497bArr.length * 2);
    }

    /* renamed from: a */
    public C0496a m1823a(boolean z, boolean z2) {
        return new C0496a(this, z2, this.f1834l, (C0498c) this.f1824b.get());
    }

    /* renamed from: a */
    public AbstractC0501f m1824a(int i, int i2) {
        int m1831c = i2 == 0 ? m1831c(i) : m1827b(i, i2);
        int i3 = this.f1828f & m1831c;
        int i4 = this.f1829g[i3];
        if ((((i4 >> 8) ^ m1831c) << 8) == 0) {
            AbstractC0501f abstractC0501f = this.f1830h[i3];
            if (abstractC0501f == null) {
                return null;
            }
            if (abstractC0501f.mo1861a(i, i2)) {
                return abstractC0501f;
            }
        } else if (i4 == 0) {
            return null;
        }
        int i5 = i4 & 255;
        if (i5 > 0) {
            C0497b c0497b = this.f1831i[i5 - 1];
            if (c0497b != null) {
                return c0497b.m1835a(m1831c, i, i2);
            }
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC0501f m1825a(String str, int[] iArr, int i) {
        if (this.f1825c) {
            str = C0513g.f1908a.m1883a(str);
        }
        int m1831c = i < 3 ? i == 1 ? m1831c(iArr[0]) : m1827b(iArr[0], iArr[1]) : m1828b(iArr, i);
        AbstractC0501f m1811a = m1811a(m1831c, str, iArr, i);
        m1812a(m1831c, m1811a);
        return m1811a;
    }

    /* renamed from: a */
    public AbstractC0501f m1826a(int[] iArr, int i) {
        if (i < 3) {
            return m1824a(iArr[0], i >= 2 ? iArr[1] : 0);
        }
        int m1828b = m1828b(iArr, i);
        int i2 = this.f1828f & m1828b;
        int i3 = this.f1829g[i2];
        if ((((i3 >> 8) ^ m1828b) << 8) == 0) {
            AbstractC0501f abstractC0501f = this.f1830h[i2];
            if (abstractC0501f == null || abstractC0501f.mo1862a(iArr, i)) {
                return abstractC0501f;
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = i3 & 255;
        if (i4 > 0) {
            C0497b c0497b = this.f1831i[i4 - 1];
            if (c0497b != null) {
                return c0497b.m1836a(m1828b, iArr, i);
            }
        }
        return null;
    }

    /* renamed from: b */
    public int m1827b(int i, int i2) {
        int i3 = (((i >>> 15) ^ i) + (i2 * 33)) ^ this.f1834l;
        return i3 + (i3 >>> 7);
    }

    /* renamed from: b */
    public int m1828b(int[] iArr, int i) {
        if (i < 3) {
            throw new IllegalArgumentException();
        }
        int i2 = iArr[0] ^ this.f1834l;
        int i3 = (((i2 + (i2 >>> 9)) * 33) + iArr[1]) * 65599;
        int i4 = (i3 + (i3 >>> 15)) ^ iArr[2];
        int i5 = i4 + (i4 >>> 17);
        for (int i6 = 3; i6 < i; i6++) {
            int i7 = (i5 * 31) ^ iArr[i6];
            int i8 = i7 + (i7 >>> 3);
            i5 = i8 ^ (i8 << 7);
        }
        int i9 = (i5 >>> 15) + i5;
        return i9 ^ (i9 << 9);
    }

    /* renamed from: b */
    public AbstractC0501f m1829b(int i) {
        int m1831c = m1831c(i);
        int i2 = this.f1828f & m1831c;
        int i3 = this.f1829g[i2];
        if ((((i3 >> 8) ^ m1831c) << 8) == 0) {
            AbstractC0501f abstractC0501f = this.f1830h[i2];
            if (abstractC0501f == null) {
                return null;
            }
            if (abstractC0501f.mo1860a(i)) {
                return abstractC0501f;
            }
        } else if (i3 == 0) {
            return null;
        }
        int i4 = i3 & 255;
        if (i4 <= 0) {
            return null;
        }
        C0497b c0497b = this.f1831i[i4 - 1];
        if (c0497b != null) {
            return c0497b.m1835a(m1831c, i, 0);
        }
        return null;
    }

    /* renamed from: b */
    public void m1830b() {
        if (this.f1823a == null || !m1832c()) {
            return;
        }
        this.f1823a.m1813a(new C0498c(this));
        this.f1836n = true;
        this.f1837o = true;
        this.f1838p = true;
    }

    /* renamed from: c */
    public int m1831c(int i) {
        int i2 = this.f1834l ^ i;
        int i3 = i2 + (i2 >>> 15);
        return i3 ^ (i3 >>> 9);
    }

    /* renamed from: c */
    public boolean m1832c() {
        return !this.f1836n;
    }

    /* renamed from: d */
    protected void m1833d(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.f1826d + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }
}
