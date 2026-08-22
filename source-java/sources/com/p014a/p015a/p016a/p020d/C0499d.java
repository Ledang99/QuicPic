package com.p014a.p015a.p016a.p020d;

import com.p014a.p015a.p016a.p021e.C0507a;
import com.p014a.p015a.p016a.p021e.C0513g;
import java.util.Arrays;

/* renamed from: com.a.a.a.d.d */
/* loaded from: classes.dex */
public final class C0499d {

    /* renamed from: a */
    static final C0499d f1850a = new C0499d();

    /* renamed from: b */
    protected C0499d f1851b;

    /* renamed from: c */
    protected final boolean f1852c;

    /* renamed from: d */
    protected final boolean f1853d;

    /* renamed from: e */
    protected String[] f1854e;

    /* renamed from: f */
    protected C0500e[] f1855f;

    /* renamed from: g */
    protected int f1856g;

    /* renamed from: h */
    protected int f1857h;

    /* renamed from: i */
    protected int f1858i;

    /* renamed from: j */
    protected int f1859j;

    /* renamed from: k */
    protected boolean f1860k;

    /* renamed from: l */
    private final int f1861l;

    private C0499d() {
        this.f1853d = true;
        this.f1852c = true;
        this.f1860k = true;
        this.f1861l = 0;
        this.f1859j = 0;
        m1840d(64);
    }

    private C0499d(C0499d c0499d, boolean z, boolean z2, String[] strArr, C0500e[] c0500eArr, int i, int i2, int i3) {
        this.f1851b = c0499d;
        this.f1853d = z;
        this.f1852c = z2;
        this.f1854e = strArr;
        this.f1855f = c0500eArr;
        this.f1856g = i;
        this.f1861l = i2;
        int length = strArr.length;
        this.f1857h = m1841e(length);
        this.f1858i = length - 1;
        this.f1859j = i3;
        this.f1860k = false;
    }

    /* renamed from: a */
    public static C0499d m1837a() {
        long currentTimeMillis = System.currentTimeMillis();
        return m1838a((((int) (currentTimeMillis >>> 32)) + ((int) currentTimeMillis)) | 1);
    }

    /* renamed from: a */
    protected static C0499d m1838a(int i) {
        return f1850a.m1842f(i);
    }

    /* renamed from: a */
    private void m1839a(C0499d c0499d) {
        if (c0499d.m1851c() > 12000 || c0499d.f1859j > 63) {
            synchronized (this) {
                m1840d(64);
                this.f1860k = false;
            }
        } else if (c0499d.m1851c() > m1851c()) {
            synchronized (this) {
                this.f1854e = c0499d.f1854e;
                this.f1855f = c0499d.f1855f;
                this.f1856g = c0499d.f1856g;
                this.f1857h = c0499d.f1857h;
                this.f1858i = c0499d.f1858i;
                this.f1859j = c0499d.f1859j;
                this.f1860k = false;
            }
        }
    }

    /* renamed from: d */
    private void m1840d(int i) {
        this.f1854e = new String[i];
        this.f1855f = new C0500e[i >> 1];
        this.f1858i = i - 1;
        this.f1856g = 0;
        this.f1859j = 0;
        this.f1857h = m1841e(i);
    }

    /* renamed from: e */
    private static int m1841e(int i) {
        return i - (i >> 2);
    }

    /* renamed from: f */
    private C0499d m1842f(int i) {
        return new C0499d(null, true, true, this.f1854e, this.f1855f, this.f1856g, i, this.f1859j);
    }

    /* renamed from: f */
    private void m1843f() {
        String[] strArr = this.f1854e;
        this.f1854e = (String[]) C0507a.m1871a(strArr, strArr.length);
        C0500e[] c0500eArr = this.f1855f;
        this.f1855f = (C0500e[]) C0507a.m1871a(c0500eArr, c0500eArr.length);
    }

    /* renamed from: g */
    private void m1844g() {
        int length = this.f1854e.length;
        int i = length + length;
        if (i > 65536) {
            this.f1856g = 0;
            Arrays.fill(this.f1854e, (Object) null);
            Arrays.fill(this.f1855f, (Object) null);
            this.f1860k = true;
            return;
        }
        String[] strArr = this.f1854e;
        C0500e[] c0500eArr = this.f1855f;
        this.f1854e = new String[i];
        this.f1855f = new C0500e[i >> 1];
        this.f1858i = i - 1;
        this.f1857h = m1841e(i);
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            String str = strArr[i4];
            if (str != null) {
                i3++;
                int m1849b = m1849b(m1845a(str));
                if (this.f1854e[m1849b] == null) {
                    this.f1854e[m1849b] = str;
                } else {
                    int i5 = m1849b >> 1;
                    C0500e c0500e = new C0500e(str, this.f1855f[i5]);
                    this.f1855f[i5] = c0500e;
                    i2 = Math.max(i2, c0500e.m1858c());
                }
            }
        }
        int i6 = length >> 1;
        int i7 = 0;
        int i8 = i3;
        int i9 = i2;
        while (i7 < i6) {
            int i10 = i9;
            for (C0500e c0500e2 = c0500eArr[i7]; c0500e2 != null; c0500e2 = c0500e2.m1857b()) {
                i8++;
                String m1855a = c0500e2.m1855a();
                int m1849b2 = m1849b(m1845a(m1855a));
                if (this.f1854e[m1849b2] == null) {
                    this.f1854e[m1849b2] = m1855a;
                } else {
                    int i11 = m1849b2 >> 1;
                    C0500e c0500e3 = new C0500e(m1855a, this.f1855f[i11]);
                    this.f1855f[i11] = c0500e3;
                    i10 = Math.max(i10, c0500e3.m1858c());
                }
            }
            i7++;
            i9 = i10;
        }
        this.f1859j = i9;
        if (i8 != this.f1856g) {
            throw new Error("Internal error on SymbolTable.rehash(): had " + this.f1856g + " entries; now have " + i8 + ".");
        }
    }

    /* renamed from: a */
    public int m1845a(String str) {
        int length = str.length();
        int i = this.f1861l;
        int i2 = 0;
        while (i2 < length) {
            int charAt = str.charAt(i2) + (i * 33);
            i2++;
            i = charAt;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    /* renamed from: a */
    public int m1846a(char[] cArr, int i, int i2) {
        int i3 = this.f1861l;
        int i4 = 0;
        while (i4 < i2) {
            int i5 = cArr[i4] + (i3 * 33);
            i4++;
            i3 = i5;
        }
        if (i3 == 0) {
            return 1;
        }
        return i3;
    }

    /* renamed from: a */
    public C0499d m1847a(boolean z, boolean z2) {
        String[] strArr;
        C0500e[] c0500eArr;
        int i;
        int i2;
        int i3;
        synchronized (this) {
            strArr = this.f1854e;
            c0500eArr = this.f1855f;
            i = this.f1856g;
            i2 = this.f1861l;
            i3 = this.f1859j;
        }
        return new C0499d(this, z, z2, strArr, c0500eArr, i, i2, i3);
    }

    /* renamed from: a */
    public String m1848a(char[] cArr, int i, int i2, int i3) {
        int i4;
        String m1856a;
        if (i2 < 1) {
            return "";
        }
        if (!this.f1853d) {
            return new String(cArr, i, i2);
        }
        int m1849b = m1849b(i3);
        String str = this.f1854e[m1849b];
        if (str != null) {
            if (str.length() == i2) {
                int i5 = 0;
                while (str.charAt(i5) == cArr[i + i5] && (i5 = i5 + 1) < i2) {
                }
                if (i5 == i2) {
                    return str;
                }
            }
            C0500e c0500e = this.f1855f[m1849b >> 1];
            if (c0500e != null && (m1856a = c0500e.m1856a(cArr, i, i2)) != null) {
                return m1856a;
            }
        }
        if (!this.f1860k) {
            m1843f();
            this.f1860k = true;
            i4 = m1849b;
        } else if (this.f1856g >= this.f1857h) {
            m1844g();
            i4 = m1849b(m1846a(cArr, i, i2));
        } else {
            i4 = m1849b;
        }
        String str2 = new String(cArr, i, i2);
        if (this.f1852c) {
            str2 = C0513g.f1908a.m1883a(str2);
        }
        this.f1856g++;
        if (this.f1854e[i4] == null) {
            this.f1854e[i4] = str2;
            return str2;
        }
        int i6 = i4 >> 1;
        C0500e c0500e2 = new C0500e(str2, this.f1855f[i6]);
        this.f1855f[i6] = c0500e2;
        this.f1859j = Math.max(c0500e2.m1858c(), this.f1859j);
        if (this.f1859j <= 255) {
            return str2;
        }
        m1852c(255);
        return str2;
    }

    /* renamed from: b */
    public int m1849b(int i) {
        return ((i >>> 15) + i) & this.f1858i;
    }

    /* renamed from: b */
    public void m1850b() {
        if (m1853d() && this.f1851b != null) {
            this.f1851b.m1839a(this);
            this.f1860k = false;
        }
    }

    /* renamed from: c */
    public int m1851c() {
        return this.f1856g;
    }

    /* renamed from: c */
    protected void m1852c(int i) {
        throw new IllegalStateException("Longest collision chain in symbol table (of size " + this.f1856g + ") now exceeds maximum, " + i + " -- suspect a DoS attack based on hash collisions");
    }

    /* renamed from: d */
    public boolean m1853d() {
        return this.f1860k;
    }

    /* renamed from: e */
    public int m1854e() {
        return this.f1861l;
    }
}
