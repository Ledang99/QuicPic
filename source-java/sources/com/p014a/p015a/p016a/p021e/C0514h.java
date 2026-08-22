package com.p014a.p015a.p016a.p021e;

import com.p014a.p015a.p016a.p018b.C0486f;
import java.math.BigDecimal;
import java.util.ArrayList;

/* renamed from: com.a.a.a.e.h */
/* loaded from: classes.dex */
public final class C0514h {

    /* renamed from: a */
    static final char[] f1910a = new char[0];

    /* renamed from: b */
    private final C0508b f1911b;

    /* renamed from: c */
    private char[] f1912c;

    /* renamed from: d */
    private int f1913d;

    /* renamed from: e */
    private int f1914e;

    /* renamed from: f */
    private ArrayList f1915f;

    /* renamed from: g */
    private boolean f1916g = false;

    /* renamed from: h */
    private int f1917h;

    /* renamed from: i */
    private char[] f1918i;

    /* renamed from: j */
    private int f1919j;

    /* renamed from: k */
    private String f1920k;

    /* renamed from: l */
    private char[] f1921l;

    public C0514h(C0508b c0508b) {
        this.f1911b = c0508b;
    }

    /* renamed from: b */
    private char[] m1884b(int i) {
        return this.f1911b != null ? this.f1911b.m1880a(EnumC0510d.TEXT_BUFFER, i) : new char[Math.max(i, 1000)];
    }

    /* renamed from: c */
    private void m1885c(int i) {
        int i2 = this.f1914e;
        this.f1914e = 0;
        char[] cArr = this.f1912c;
        this.f1912c = null;
        int i3 = this.f1913d;
        this.f1913d = -1;
        int i4 = i2 + i;
        if (this.f1918i == null || i4 > this.f1918i.length) {
            this.f1918i = m1884b(i4);
        }
        if (i2 > 0) {
            System.arraycopy(cArr, i3, this.f1918i, 0, i2);
        }
        this.f1917h = 0;
        this.f1919j = i2;
    }

    /* renamed from: d */
    private void m1886d(int i) {
        if (this.f1915f == null) {
            this.f1915f = new ArrayList();
        }
        char[] cArr = this.f1918i;
        this.f1916g = true;
        this.f1915f.add(cArr);
        this.f1917h += cArr.length;
        int length = cArr.length;
        int i2 = length >> 1;
        if (i2 >= i) {
            i = i2;
        }
        this.f1919j = 0;
        this.f1918i = m1887e(Math.min(262144, length + i));
    }

    /* renamed from: e */
    private char[] m1887e(int i) {
        return new char[i];
    }

    /* renamed from: o */
    private void m1888o() {
        this.f1916g = false;
        this.f1915f.clear();
        this.f1917h = 0;
        this.f1919j = 0;
    }

    /* renamed from: p */
    private char[] m1889p() {
        int i;
        if (this.f1920k != null) {
            return this.f1920k.toCharArray();
        }
        if (this.f1913d >= 0) {
            int i2 = this.f1914e;
            if (i2 < 1) {
                return f1910a;
            }
            int i3 = this.f1913d;
            return i3 == 0 ? C0507a.m1867a(this.f1912c, i2) : C0507a.m1868a(this.f1912c, i3, i2 + i3);
        }
        int m1896c = m1896c();
        if (m1896c < 1) {
            return f1910a;
        }
        char[] m1887e = m1887e(m1896c);
        if (this.f1915f != null) {
            int size = this.f1915f.size();
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                char[] cArr = (char[]) this.f1915f.get(i5);
                int length = cArr.length;
                System.arraycopy(cArr, 0, m1887e, i4, length);
                i4 += length;
            }
            i = i4;
        } else {
            i = 0;
        }
        System.arraycopy(this.f1918i, 0, m1887e, i, this.f1919j);
        return m1887e;
    }

    /* renamed from: a */
    public void m1890a() {
        if (this.f1911b == null) {
            m1894b();
        } else if (this.f1918i != null) {
            m1894b();
            char[] cArr = this.f1918i;
            this.f1918i = null;
            this.f1911b.m1876a(EnumC0510d.TEXT_BUFFER, cArr);
        }
    }

    /* renamed from: a */
    public void m1891a(int i) {
        this.f1919j = i;
    }

    /* renamed from: a */
    public void m1892a(String str) {
        this.f1912c = null;
        this.f1913d = -1;
        this.f1914e = 0;
        this.f1920k = str;
        this.f1921l = null;
        if (this.f1916g) {
            m1888o();
        }
        this.f1919j = 0;
    }

    /* renamed from: a */
    public void m1893a(char[] cArr, int i, int i2) {
        this.f1920k = null;
        this.f1921l = null;
        this.f1912c = cArr;
        this.f1913d = i;
        this.f1914e = i2;
        if (this.f1916g) {
            m1888o();
        }
    }

    /* renamed from: b */
    public void m1894b() {
        this.f1913d = -1;
        this.f1919j = 0;
        this.f1914e = 0;
        this.f1912c = null;
        this.f1920k = null;
        this.f1921l = null;
        if (this.f1916g) {
            m1888o();
        }
    }

    /* renamed from: b */
    public void m1895b(char[] cArr, int i, int i2) {
        this.f1912c = null;
        this.f1913d = -1;
        this.f1914e = 0;
        this.f1920k = null;
        this.f1921l = null;
        if (this.f1916g) {
            m1888o();
        } else if (this.f1918i == null) {
            this.f1918i = m1884b(i2);
        }
        this.f1917h = 0;
        this.f1919j = 0;
        m1897c(cArr, i, i2);
    }

    /* renamed from: c */
    public int m1896c() {
        return this.f1913d >= 0 ? this.f1914e : this.f1921l != null ? this.f1921l.length : this.f1920k != null ? this.f1920k.length() : this.f1917h + this.f1919j;
    }

    /* renamed from: c */
    public void m1897c(char[] cArr, int i, int i2) {
        if (this.f1913d >= 0) {
            m1885c(i2);
        }
        this.f1920k = null;
        this.f1921l = null;
        char[] cArr2 = this.f1918i;
        int length = cArr2.length - this.f1919j;
        if (length >= i2) {
            System.arraycopy(cArr, i, cArr2, this.f1919j, i2);
            this.f1919j += i2;
            return;
        }
        if (length > 0) {
            System.arraycopy(cArr, i, cArr2, this.f1919j, length);
            i += length;
            i2 -= length;
        }
        do {
            m1886d(i2);
            int min = Math.min(this.f1918i.length, i2);
            System.arraycopy(cArr, i, this.f1918i, 0, min);
            this.f1919j += min;
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    /* renamed from: d */
    public int m1898d() {
        if (this.f1913d >= 0) {
            return this.f1913d;
        }
        return 0;
    }

    /* renamed from: e */
    public char[] m1899e() {
        if (this.f1913d >= 0) {
            return this.f1912c;
        }
        if (this.f1921l != null) {
            return this.f1921l;
        }
        if (this.f1920k == null) {
            return !this.f1916g ? this.f1918i : m1901g();
        }
        char[] charArray = this.f1920k.toCharArray();
        this.f1921l = charArray;
        return charArray;
    }

    /* renamed from: f */
    public String m1900f() {
        if (this.f1920k == null) {
            if (this.f1921l != null) {
                this.f1920k = new String(this.f1921l);
            } else if (this.f1913d < 0) {
                int i = this.f1917h;
                int i2 = this.f1919j;
                if (i == 0) {
                    this.f1920k = i2 == 0 ? "" : new String(this.f1918i, 0, i2);
                } else {
                    StringBuilder sb = new StringBuilder(i + i2);
                    if (this.f1915f != null) {
                        int size = this.f1915f.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            char[] cArr = (char[]) this.f1915f.get(i3);
                            sb.append(cArr, 0, cArr.length);
                        }
                    }
                    sb.append(this.f1918i, 0, this.f1919j);
                    this.f1920k = sb.toString();
                }
            } else {
                if (this.f1914e < 1) {
                    this.f1920k = "";
                    return "";
                }
                this.f1920k = new String(this.f1912c, this.f1913d, this.f1914e);
            }
        }
        return this.f1920k;
    }

    /* renamed from: g */
    public char[] m1901g() {
        char[] cArr = this.f1921l;
        if (cArr != null) {
            return cArr;
        }
        char[] m1889p = m1889p();
        this.f1921l = m1889p;
        return m1889p;
    }

    /* renamed from: h */
    public BigDecimal m1902h() {
        return this.f1921l != null ? C0486f.m1695a(this.f1921l) : (this.f1913d < 0 || this.f1912c == null) ? (this.f1917h != 0 || this.f1918i == null) ? C0486f.m1695a(m1901g()) : C0486f.m1699c(this.f1918i, 0, this.f1919j) : C0486f.m1699c(this.f1912c, this.f1913d, this.f1914e);
    }

    /* renamed from: i */
    public double m1903i() {
        return C0486f.m1690a(m1900f());
    }

    /* renamed from: j */
    public char[] m1904j() {
        if (this.f1913d >= 0) {
            m1885c(1);
        } else {
            char[] cArr = this.f1918i;
            if (cArr == null) {
                this.f1918i = m1884b(0);
            } else if (this.f1919j >= cArr.length) {
                m1886d(1);
            }
        }
        return this.f1918i;
    }

    /* renamed from: k */
    public char[] m1905k() {
        this.f1913d = -1;
        this.f1919j = 0;
        this.f1914e = 0;
        this.f1912c = null;
        this.f1920k = null;
        this.f1921l = null;
        if (this.f1916g) {
            m1888o();
        }
        char[] cArr = this.f1918i;
        if (cArr != null) {
            return cArr;
        }
        char[] m1884b = m1884b(0);
        this.f1918i = m1884b;
        return m1884b;
    }

    /* renamed from: l */
    public int m1906l() {
        return this.f1919j;
    }

    /* renamed from: m */
    public char[] m1907m() {
        if (this.f1915f == null) {
            this.f1915f = new ArrayList();
        }
        this.f1916g = true;
        this.f1915f.add(this.f1918i);
        int length = this.f1918i.length;
        this.f1917h += length;
        char[] m1887e = m1887e(Math.min(length + (length >> 1), 262144));
        this.f1919j = 0;
        this.f1918i = m1887e;
        return m1887e;
    }

    /* renamed from: n */
    public char[] m1908n() {
        char[] cArr = this.f1918i;
        int length = cArr.length;
        char[] m1867a = C0507a.m1867a(cArr, length == 262144 ? 262145 : Math.min(262144, length + (length >> 1)));
        this.f1918i = m1867a;
        return m1867a;
    }

    public String toString() {
        return m1900f();
    }
}
