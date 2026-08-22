package com.p014a.p015a.p016a.p019c;

import com.p014a.p015a.p016a.AbstractC0523m;
import com.p014a.p015a.p016a.EnumC0519i;
import com.p014a.p015a.p016a.EnumC0522l;
import com.p014a.p015a.p016a.p017a.AbstractC0478a;
import com.p014a.p015a.p016a.p018b.C0482b;
import com.p014a.p015a.p016a.p018b.C0483c;
import com.p014a.p015a.p016a.p020d.C0499d;
import com.p014a.p015a.p016a.p021e.C0514h;
import java.io.IOException;
import java.io.Reader;
import org.apache.commons.logging.impl.SimpleLog;
import org.apache.http.HttpStatus;
import org.apache.http.message.TokenParser;

/* renamed from: com.a.a.a.c.d */
/* loaded from: classes.dex */
public final class C0493d extends AbstractC0478a {

    /* renamed from: L */
    protected static final int[] f1804L = C0482b.m1668a();

    /* renamed from: S */
    private static final int[] f1805S = C0482b.m1673f();

    /* renamed from: M */
    protected Reader f1806M;

    /* renamed from: N */
    protected char[] f1807N;

    /* renamed from: O */
    protected AbstractC0523m f1808O;

    /* renamed from: P */
    protected final C0499d f1809P;

    /* renamed from: Q */
    protected final int f1810Q;

    /* renamed from: R */
    protected boolean f1811R;

    public C0493d(C0483c c0483c, int i, Reader reader, AbstractC0523m abstractC0523m, C0499d c0499d) {
        super(c0483c, i);
        this.f1811R = false;
        this.f1806M = reader;
        this.f1807N = c0483c.m1687f();
        this.f1808O = abstractC0523m;
        this.f1809P = c0499d;
        this.f1810Q = c0499d.m1854e();
    }

    /* renamed from: K */
    private EnumC0522l m1729K() {
        this.f1725p = false;
        EnumC0522l enumC0522l = this.f1722m;
        this.f1722m = null;
        if (enumC0522l == EnumC0522l.START_ARRAY) {
            this.f1721l = this.f1721l.m1721a(this.f1719j, this.f1720k);
        } else if (enumC0522l == EnumC0522l.START_OBJECT) {
            this.f1721l = this.f1721l.m1725b(this.f1719j, this.f1720k);
        }
        this.f1728K = enumC0522l;
        return enumC0522l;
    }

    /* renamed from: L */
    private char m1730L() {
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            return '0';
        }
        char c = this.f1807N[this.f1713d];
        if (c < '0' || c > '9') {
            return '0';
        }
        if (!m1911a(EnumC0519i.ALLOW_NUMERIC_LEADING_ZEROS)) {
            m1618c("Leading zeroes not allowed");
        }
        this.f1713d++;
        if (c != '0') {
            return c;
        }
        do {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                return c;
            }
            c = this.f1807N[this.f1713d];
            if (c < '0' || c > '9') {
                return '0';
            }
            this.f1713d++;
        } while (c == '0');
        return c;
    }

    /* renamed from: M */
    private int m1731M() {
        char c;
        int[] iArr = f1805S;
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                throw m1912b("Unexpected end-of-input within/between " + this.f1721l.m1927d() + " entries");
            }
            char[] cArr = this.f1807N;
            int i = this.f1713d;
            this.f1713d = i + 1;
            c = cArr[i];
            if (c < '@') {
                switch (iArr[c]) {
                    case -1:
                        m1653d(c);
                        break;
                    case 0:
                        break;
                    case 10:
                        this.f1716g++;
                        this.f1717h = this.f1713d;
                        break;
                    case 13:
                        m1746J();
                        break;
                    case 35:
                        if (!m1735Q()) {
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        m1733O();
                        break;
                }
            }
        }
        return c;
    }

    /* renamed from: N */
    private int m1732N() {
        int[] iArr = f1805S;
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                mo1629u();
                return -1;
            }
            char[] cArr = this.f1807N;
            int i = this.f1713d;
            this.f1713d = i + 1;
            char c = cArr[i];
            if (c < '@') {
                switch (iArr[c]) {
                    case -1:
                        m1653d(c);
                        return c;
                    case 0:
                        return c;
                    case 10:
                        this.f1716g++;
                        this.f1717h = this.f1713d;
                        break;
                    case 13:
                        m1746J();
                        break;
                    case 35:
                        if (!m1735Q()) {
                            return c;
                        }
                        break;
                    case 47:
                        m1733O();
                        break;
                }
            } else {
                return c;
            }
        }
    }

    /* renamed from: O */
    private void m1733O() {
        if (!m1911a(EnumC0519i.ALLOW_COMMENTS)) {
            m1649b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(" in a comment");
        }
        char[] cArr = this.f1807N;
        int i = this.f1713d;
        this.f1713d = i + 1;
        char c = cArr[i];
        if (c == '/') {
            m1736R();
        } else if (c == '*') {
            m1734P();
        } else {
            m1649b(c, "was expecting either '*' or '/' for a comment");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0028, code lost:
    
        m1655e(" in a comment");
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x002d, code lost:
    
        return;
     */
    /* renamed from: P */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m1734P() {
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                break;
            }
            char[] cArr = this.f1807N;
            int i = this.f1713d;
            this.f1713d = i + 1;
            char c = cArr[i];
            if (c <= '*') {
                if (c == '*') {
                    if (this.f1713d >= this.f1714e && !mo1626r()) {
                        break;
                    } else if (this.f1807N[this.f1713d] == '/') {
                        this.f1713d++;
                        return;
                    }
                } else if (c < ' ') {
                    if (c == '\n') {
                        this.f1716g++;
                        this.f1717h = this.f1713d;
                    } else if (c == '\r') {
                        m1746J();
                    } else if (c != '\t') {
                        m1653d(c);
                    }
                }
            }
        }
    }

    /* renamed from: Q */
    private boolean m1735Q() {
        if (!m1911a(EnumC0519i.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        m1736R();
        return true;
    }

    /* renamed from: R */
    private void m1736R() {
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                return;
            }
            char[] cArr = this.f1807N;
            int i = this.f1713d;
            this.f1713d = i + 1;
            char c = cArr[i];
            if (c < ' ') {
                if (c == '\n') {
                    this.f1716g++;
                    this.f1717h = this.f1713d;
                    return;
                } else if (c == '\r') {
                    m1746J();
                    return;
                } else if (c != '\t') {
                    m1653d(c);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x008f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005e A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m1737a(int i, int i2, int i3) {
        char c;
        int i4;
        this.f1723n.m1893a(this.f1807N, i, this.f1713d - i);
        char[] m1904j = this.f1723n.m1904j();
        int m1906l = this.f1723n.m1906l();
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                m1655e(": was expecting closing '" + ((char) i3) + "' for name");
            }
            char[] cArr = this.f1807N;
            int i5 = this.f1713d;
            this.f1713d = i5 + 1;
            char c2 = cArr[i5];
            if (c2 <= '\\') {
                if (c2 == '\\') {
                    c = mo1610A();
                    i2 = (i2 * 33) + c2;
                    i4 = m1906l + 1;
                    m1904j[m1906l] = c;
                    if (i4 < m1904j.length) {
                        m1904j = this.f1723n.m1907m();
                        m1906l = 0;
                    } else {
                        m1906l = i4;
                    }
                } else if (c2 <= i3) {
                    if (c2 == i3) {
                        this.f1723n.m1891a(m1906l);
                        C0514h c0514h = this.f1723n;
                        return this.f1809P.m1848a(c0514h.m1899e(), c0514h.m1898d(), c0514h.m1896c(), i2);
                    }
                    if (c2 < ' ') {
                        m1652c(c2, "name");
                    }
                }
            }
            c = c2;
            i2 = (i2 * 33) + c2;
            i4 = m1906l + 1;
            m1904j[m1906l] = c;
            if (i4 < m1904j.length) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m1738a(int i, int i2, int[] iArr) {
        int i3;
        this.f1723n.m1893a(this.f1807N, i, this.f1713d - i);
        char[] m1904j = this.f1723n.m1904j();
        int m1906l = this.f1723n.m1906l();
        int length = iArr.length;
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                break;
            }
            char c = this.f1807N[this.f1713d];
            if (c <= length) {
                if (iArr[c] != 0) {
                    break;
                }
                this.f1713d++;
                i2 = (i2 * 33) + c;
                i3 = m1906l + 1;
                m1904j[m1906l] = c;
                if (i3 < m1904j.length) {
                    m1904j = this.f1723n.m1907m();
                    m1906l = 0;
                } else {
                    m1906l = i3;
                }
            } else {
                if (!Character.isJavaIdentifierPart(c)) {
                    break;
                }
                this.f1713d++;
                i2 = (i2 * 33) + c;
                i3 = m1906l + 1;
                m1904j[m1906l] = c;
                if (i3 < m1904j.length) {
                }
            }
        }
        this.f1723n.m1891a(m1906l);
        C0514h c0514h = this.f1723n;
        return this.f1809P.m1848a(c0514h.m1899e(), c0514h.m1898d(), c0514h.m1896c(), i2);
    }

    /* renamed from: b */
    private EnumC0522l m1739b(boolean z) {
        int i;
        char m1752g;
        boolean z2;
        int i2;
        int i3;
        char c;
        char[] cArr;
        int i4;
        char c2;
        char[] cArr2;
        int i5;
        boolean z3;
        char m1752g2;
        int i6;
        char m1752g3;
        int i7;
        int i8;
        char c3;
        int i9;
        boolean z4;
        int i10;
        char c4;
        boolean z5;
        int i11;
        int i12 = 0;
        char[] m1905k = this.f1723n.m1905k();
        if (z) {
            m1905k[0] = '-';
            i = 1;
        } else {
            i = 0;
        }
        if (this.f1713d < this.f1714e) {
            char[] cArr3 = this.f1807N;
            int i13 = this.f1713d;
            this.f1713d = i13 + 1;
            m1752g = cArr3[i13];
        } else {
            m1752g = m1752g("No digit following minus sign");
        }
        if (m1752g == '0') {
            m1752g = m1730L();
        }
        int i14 = 0;
        char c5 = m1752g;
        char[] cArr4 = m1905k;
        char c6 = c5;
        while (c6 >= '0' && c6 <= '9') {
            i14++;
            if (i >= cArr4.length) {
                cArr4 = this.f1723n.m1907m();
                i = 0;
            }
            int i15 = i + 1;
            cArr4[i] = c6;
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                z2 = true;
                c = 0;
                i2 = i14;
                cArr = cArr4;
                i3 = i15;
                break;
            }
            char[] cArr5 = this.f1807N;
            int i16 = this.f1713d;
            this.f1713d = i16 + 1;
            c6 = cArr5[i16];
            i = i15;
        }
        z2 = false;
        i2 = i14;
        i3 = i;
        c = c6;
        cArr = cArr4;
        if (i2 == 0) {
            m1618c("Missing integer part (next char " + m1635e(c) + ")");
        }
        if (c == '.') {
            int i17 = i3 + 1;
            cArr[i3] = c;
            char[] cArr6 = cArr;
            int i18 = i17;
            char c7 = c;
            int i19 = 0;
            while (true) {
                if (this.f1713d >= this.f1714e && !mo1626r()) {
                    c2 = c7;
                    z5 = true;
                    break;
                }
                char[] cArr7 = this.f1807N;
                int i20 = this.f1713d;
                this.f1713d = i20 + 1;
                c7 = cArr7[i20];
                if (c7 < '0') {
                    c2 = c7;
                    z5 = z2;
                    break;
                }
                if (c7 > '9') {
                    c2 = c7;
                    z5 = z2;
                    break;
                }
                i19++;
                if (i18 >= cArr6.length) {
                    cArr6 = this.f1723n.m1907m();
                    i11 = 0;
                } else {
                    i11 = i18;
                }
                i18 = i11 + 1;
                cArr6[i11] = c7;
            }
            if (i19 == 0) {
                m1615a(c2, "Decimal point not followed by a digit");
            }
            i4 = i19;
            i5 = i18;
            boolean z6 = z5;
            cArr2 = cArr6;
            z3 = z6;
        } else {
            i4 = 0;
            c2 = c;
            cArr2 = cArr;
            i5 = i3;
            z3 = z2;
        }
        if (c2 == 'e' || c2 == 'E') {
            if (i5 >= cArr2.length) {
                cArr2 = this.f1723n.m1907m();
                i5 = 0;
            }
            int i21 = i5 + 1;
            cArr2[i5] = c2;
            if (this.f1713d < this.f1714e) {
                char[] cArr8 = this.f1807N;
                int i22 = this.f1713d;
                this.f1713d = i22 + 1;
                m1752g2 = cArr8[i22];
            } else {
                m1752g2 = m1752g("expected a digit for number exponent");
            }
            if (m1752g2 == '-' || m1752g2 == '+') {
                if (i21 >= cArr2.length) {
                    cArr2 = this.f1723n.m1907m();
                    i6 = 0;
                } else {
                    i6 = i21;
                }
                int i23 = i6 + 1;
                cArr2[i6] = m1752g2;
                if (this.f1713d < this.f1714e) {
                    char[] cArr9 = this.f1807N;
                    int i24 = this.f1713d;
                    this.f1713d = i24 + 1;
                    m1752g3 = cArr9[i24];
                } else {
                    m1752g3 = m1752g("expected a digit for number exponent");
                }
                i7 = 0;
                char c8 = m1752g3;
                i8 = i23;
                c3 = c8;
            } else {
                i8 = i21;
                c3 = m1752g2;
                i7 = 0;
            }
            while (c3 <= '9' && c3 >= '0') {
                i7++;
                if (i8 >= cArr2.length) {
                    cArr2 = this.f1723n.m1907m();
                    i8 = 0;
                }
                int i25 = i8 + 1;
                cArr2[i8] = c3;
                if (this.f1713d >= this.f1714e && !mo1626r()) {
                    i12 = i7;
                    z4 = true;
                    i9 = i25;
                    break;
                }
                char[] cArr10 = this.f1807N;
                int i26 = this.f1713d;
                this.f1713d = i26 + 1;
                c3 = cArr10[i26];
                i8 = i25;
            }
            i12 = i7;
            i9 = i8;
            z4 = z3;
            if (i12 == 0) {
                m1615a(c3, "Exponent indicator not followed by a digit");
            }
            i10 = i9;
            c4 = c3;
        } else {
            c4 = c2;
            i10 = i5;
            z4 = z3;
        }
        if (!z4) {
            this.f1713d--;
            if (this.f1721l.m1925b()) {
                m1740j(c4);
            }
        }
        this.f1723n.m1891a(i10);
        return m1613a(z, i2, i4, i12);
    }

    /* renamed from: j */
    private final void m1740j(int i) {
        this.f1713d++;
        switch (i) {
            case 9:
            case 32:
                break;
            case 10:
                this.f1716g++;
                this.f1717h = this.f1713d;
                break;
            case 13:
                m1746J();
                break;
            default:
                m1651c(i);
                break;
        }
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: A */
    protected char mo1610A() {
        int i = 0;
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(" in character escape sequence");
        }
        char[] cArr = this.f1807N;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        char c = cArr[i2];
        switch (c) {
            case '\"':
            case '/':
            case '\\':
                return c;
            case 'b':
                return '\b';
            case HttpStatus.SC_PROCESSING /* 102 */:
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return TokenParser.f5039CR;
            case 't':
                return '\t';
            case 'u':
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.f1713d >= this.f1714e && !mo1626r()) {
                        m1655e(" in character escape sequence");
                    }
                    char[] cArr2 = this.f1807N;
                    int i4 = this.f1713d;
                    this.f1713d = i4 + 1;
                    char c2 = cArr2[i4];
                    int m1666a = C0482b.m1666a(c2);
                    if (m1666a < 0) {
                        m1649b(c2, "expected a hex-digit for character escape sequence");
                    }
                    i = (i << 4) | m1666a;
                }
                return (char) i;
            default:
                return m1639a(c);
        }
    }

    /* renamed from: E */
    protected String m1741E() {
        int i = this.f1713d;
        int i2 = this.f1810Q;
        int i3 = this.f1714e;
        if (i < i3) {
            int[] iArr = f1804L;
            int length = iArr.length;
            do {
                char c = this.f1807N[i];
                if (c != '\'') {
                    if (c < length && iArr[c] != 0) {
                        break;
                    }
                    i2 = (i2 * 33) + c;
                    i++;
                } else {
                    int i4 = this.f1713d;
                    this.f1713d = i + 1;
                    return this.f1809P.m1848a(this.f1807N, i4, i - i4, i2);
                }
            } while (i < i3);
        }
        int i5 = this.f1713d;
        this.f1713d = i;
        return m1737a(i5, i2, 39);
    }

    /* renamed from: F */
    protected EnumC0522l m1742F() {
        char[] m1905k = this.f1723n.m1905k();
        int m1906l = this.f1723n.m1906l();
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                m1655e(": was expecting closing quote for a string value");
            }
            char[] cArr = this.f1807N;
            int i = this.f1713d;
            this.f1713d = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    c = mo1610A();
                } else if (c <= '\'') {
                    if (c == '\'') {
                        this.f1723n.m1891a(m1906l);
                        return EnumC0522l.VALUE_STRING;
                    }
                    if (c < ' ') {
                        m1652c(c, "string value");
                    }
                }
            }
            if (m1906l >= m1905k.length) {
                m1905k = this.f1723n.m1907m();
                m1906l = 0;
            }
            int i2 = m1906l;
            m1906l = i2 + 1;
            m1905k[i2] = c;
        }
    }

    /* renamed from: G */
    protected void m1743G() {
        int i = this.f1713d;
        int i2 = this.f1714e;
        if (i < i2) {
            int[] iArr = f1804L;
            int length = iArr.length;
            while (true) {
                char c = this.f1807N[i];
                if (c >= length || iArr[c] == 0) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                } else if (c == '\"') {
                    this.f1723n.m1893a(this.f1807N, this.f1713d, i - this.f1713d);
                    this.f1713d = i + 1;
                    return;
                }
            }
        }
        this.f1723n.m1895b(this.f1807N, this.f1713d, i - this.f1713d);
        this.f1713d = i;
        m1744H();
    }

    /* renamed from: H */
    protected void m1744H() {
        char[] m1904j = this.f1723n.m1904j();
        int m1906l = this.f1723n.m1906l();
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                m1655e(": was expecting closing quote for a string value");
            }
            char[] cArr = this.f1807N;
            int i = this.f1713d;
            this.f1713d = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    c = mo1610A();
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this.f1723n.m1891a(m1906l);
                        return;
                    } else if (c < ' ') {
                        m1652c(c, "string value");
                    }
                }
            }
            if (m1906l >= m1904j.length) {
                m1904j = this.f1723n.m1907m();
                m1906l = 0;
            }
            int i2 = m1906l;
            m1906l = i2 + 1;
            m1904j[i2] = c;
        }
    }

    /* renamed from: I */
    protected void m1745I() {
        this.f1811R = false;
        int i = this.f1713d;
        int i2 = this.f1714e;
        char[] cArr = this.f1807N;
        while (true) {
            if (i >= i2) {
                this.f1713d = i;
                if (!mo1626r()) {
                    m1655e(": was expecting closing quote for a string value");
                }
                i = this.f1713d;
                i2 = this.f1714e;
            }
            int i3 = i + 1;
            char c = cArr[i];
            if (c <= '\\') {
                if (c == '\\') {
                    this.f1713d = i3;
                    mo1610A();
                    i = this.f1713d;
                    i2 = this.f1714e;
                } else if (c <= '\"') {
                    if (c == '\"') {
                        this.f1713d = i3;
                        return;
                    } else if (c < ' ') {
                        this.f1713d = i3;
                        m1652c(c, "string value");
                    }
                }
            }
            i = i3;
        }
    }

    /* renamed from: J */
    protected void m1746J() {
        if ((this.f1713d < this.f1714e || mo1626r()) && this.f1807N[this.f1713d] == '\n') {
            this.f1713d++;
        }
        this.f1716g++;
        this.f1717h = this.f1713d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.p014a.p015a.p016a.p017a.AbstractC0479b, com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public EnumC0522l mo1643a() {
        EnumC0522l m1751f;
        this.f1701A = 0;
        if (this.f1728K == EnumC0522l.FIELD_NAME) {
            return m1729K();
        }
        if (this.f1811R) {
            m1745I();
        }
        int m1732N = m1732N();
        if (m1732N < 0) {
            close();
            this.f1728K = null;
            return null;
        }
        this.f1718i = (this.f1715f + this.f1713d) - 1;
        this.f1719j = this.f1716g;
        this.f1720k = (this.f1713d - this.f1717h) - 1;
        this.f1727r = null;
        if (m1732N == 93) {
            if (!this.f1721l.m1924a()) {
                m1614a(m1732N, '}');
            }
            this.f1721l = this.f1721l.m1727g();
            EnumC0522l enumC0522l = EnumC0522l.END_ARRAY;
            this.f1728K = enumC0522l;
            return enumC0522l;
        }
        if (m1732N == 125) {
            if (!this.f1721l.m1926c()) {
                m1614a(m1732N, ']');
            }
            this.f1721l = this.f1721l.m1727g();
            EnumC0522l enumC0522l2 = EnumC0522l.END_OBJECT;
            this.f1728K = enumC0522l2;
            return enumC0522l2;
        }
        if (this.f1721l.m1728h()) {
            if (m1732N != 44) {
                m1649b(m1732N, "was expecting comma to separate " + this.f1721l.m1927d() + " entries");
            }
            m1732N = m1731M();
        }
        boolean c = this.f1721l.m1926c();
        if (c) {
            this.f1721l.m1724a(m1753g(m1732N));
            this.f1728K = EnumC0522l.FIELD_NAME;
            int m1731M = m1731M();
            if (m1731M != 58) {
                m1649b(m1731M, "was expecting a colon to separate field name and value");
            }
            m1732N = m1731M();
        }
        switch (m1732N) {
            case 34:
                this.f1811R = true;
                m1751f = EnumC0522l.VALUE_STRING;
                break;
            case 45:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
                m1751f = m1751f(m1732N);
                break;
            case 91:
                if (!c) {
                    this.f1721l = this.f1721l.m1721a(this.f1719j, this.f1720k);
                }
                m1751f = EnumC0522l.START_ARRAY;
                break;
            case 93:
            case 125:
                m1649b(m1732N, "expected a value");
                m1749a("true", 1);
                m1751f = EnumC0522l.VALUE_TRUE;
                break;
            case HttpStatus.SC_PROCESSING /* 102 */:
                m1749a("false", 1);
                m1751f = EnumC0522l.VALUE_FALSE;
                break;
            case 110:
                m1749a("null", 1);
                m1751f = EnumC0522l.VALUE_NULL;
                break;
            case 116:
                m1749a("true", 1);
                m1751f = EnumC0522l.VALUE_TRUE;
                break;
            case 123:
                if (!c) {
                    this.f1721l = this.f1721l.m1725b(this.f1719j, this.f1720k);
                }
                m1751f = EnumC0522l.START_OBJECT;
                break;
            default:
                m1751f = m1756i(m1732N);
                break;
        }
        if (c) {
            this.f1722m = m1751f;
            return this.f1728K;
        }
        this.f1728K = m1751f;
        return m1751f;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v2 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    /* renamed from: a */
    protected com.p014a.p015a.p016a.EnumC0522l m1747a(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r9v0 ??, r9v1 ??, r9v2 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r9v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:238)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    /* renamed from: a */
    protected String m1748a(EnumC0522l enumC0522l) {
        if (enumC0522l == null) {
            return null;
        }
        switch (enumC0522l.m1929a()) {
            case 5:
                return this.f1721l.m1726f();
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
            case 8:
                return this.f1723n.m1900f();
            default:
                return enumC0522l.m1930b();
        }
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0479b, com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public String mo1644a(String str) {
        if (this.f1728K != EnumC0522l.VALUE_STRING) {
            return super.mo1644a(str);
        }
        if (this.f1811R) {
            this.f1811R = false;
            m1743G();
        }
        return this.f1723n.m1900f();
    }

    /* renamed from: a */
    protected void m1749a(String str, int i) {
        char c;
        int length = str.length();
        do {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                m1755h(str.substring(0, i));
            }
            if (this.f1807N[this.f1713d] != str.charAt(i)) {
                m1755h(str.substring(0, i));
            }
            this.f1713d++;
            i++;
        } while (i < length);
        if ((this.f1713d < this.f1714e || mo1626r()) && (c = this.f1807N[this.f1713d]) >= '0' && c != ']' && c != '}' && Character.isJavaIdentifierPart(c)) {
            m1755h(str.substring(0, i));
        }
    }

    /* renamed from: a */
    protected void m1750a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                break;
            }
            char c = this.f1807N[this.f1713d];
            if (!Character.isJavaIdentifierPart(c)) {
                break;
            }
            this.f1713d++;
            sb.append(c);
        }
        m1657f("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r14v0 ??, r14v1 ??, r14v2 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    /* renamed from: f */
    protected com.p014a.p015a.p016a.EnumC0522l m1751f(
    /*  JADX ERROR: JadxRuntimeException in pass: InitCodeVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Several immutable types in one variable: [int, char], vars: [r14v0 ??, r14v1 ??, r14v2 ??]
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVarType(InitCodeVariables.java:107)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:83)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:57)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:45)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r14v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:238)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:223)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:168)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:401)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:335)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:301)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0479b, com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: f */
    public String mo1656f() {
        EnumC0522l enumC0522l = this.f1728K;
        if (enumC0522l != EnumC0522l.VALUE_STRING) {
            return m1748a(enumC0522l);
        }
        if (this.f1811R) {
            this.f1811R = false;
            m1743G();
        }
        return this.f1723n.m1900f();
    }

    /* renamed from: g */
    protected char m1752g(String str) {
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(str);
        }
        char[] cArr = this.f1807N;
        int i = this.f1713d;
        this.f1713d = i + 1;
        return cArr[i];
    }

    /* renamed from: g */
    protected String m1753g(int i) {
        if (i != 34) {
            return m1754h(i);
        }
        int i2 = this.f1713d;
        int i3 = this.f1810Q;
        int i4 = this.f1714e;
        if (i2 < i4) {
            int[] iArr = f1804L;
            int length = iArr.length;
            while (true) {
                char c = this.f1807N[i2];
                if (c >= length || iArr[c] == 0) {
                    i3 = (i3 * 33) + c;
                    i2++;
                    if (i2 >= i4) {
                        break;
                    }
                } else if (c == '\"') {
                    int i5 = this.f1713d;
                    this.f1713d = i2 + 1;
                    return this.f1809P.m1848a(this.f1807N, i5, i2 - i5, i3);
                }
            }
        }
        int i6 = this.f1713d;
        this.f1713d = i2;
        return m1737a(i6, i3, 34);
    }

    /* renamed from: h */
    protected String m1754h(int i) {
        if (i == 39 && m1911a(EnumC0519i.ALLOW_SINGLE_QUOTES)) {
            return m1741E();
        }
        if (!m1911a(EnumC0519i.ALLOW_UNQUOTED_FIELD_NAMES)) {
            m1649b(i, "was expecting double-quote to start field name");
        }
        int[] m1670c = C0482b.m1670c();
        int length = m1670c.length;
        if (!(i < length ? m1670c[i] == 0 : Character.isJavaIdentifierPart((char) i))) {
            m1649b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i2 = this.f1713d;
        int i3 = this.f1810Q;
        int i4 = this.f1714e;
        if (i2 < i4) {
            do {
                char c = this.f1807N[i2];
                if (c < length) {
                    if (m1670c[c] != 0) {
                        int i5 = this.f1713d - 1;
                        this.f1713d = i2;
                        return this.f1809P.m1848a(this.f1807N, i5, i2 - i5, i3);
                    }
                } else if (!Character.isJavaIdentifierPart(c)) {
                    int i6 = this.f1713d - 1;
                    this.f1713d = i2;
                    return this.f1809P.m1848a(this.f1807N, i6, i2 - i6, i3);
                }
                i3 = (i3 * 33) + c;
                i2++;
            } while (i2 < i4);
        }
        int i7 = this.f1713d - 1;
        this.f1713d = i2;
        return m1738a(i7, i3, m1670c);
    }

    /* renamed from: h */
    protected void m1755h(String str) {
        m1750a(str, "'null', 'true', 'false' or NaN");
    }

    /* renamed from: i */
    protected EnumC0522l m1756i(int i) {
        switch (i) {
            case 39:
                if (m1911a(EnumC0519i.ALLOW_SINGLE_QUOTES)) {
                    return m1742F();
                }
                break;
            case 43:
                if (this.f1713d >= this.f1714e && !mo1626r()) {
                    m1637C();
                }
                char[] cArr = this.f1807N;
                int i2 = this.f1713d;
                this.f1713d = i2 + 1;
                return m1747a((int) cArr[i2], false);
            case 73:
                m1749a("Infinity", 1);
                if (!m1911a(EnumC0519i.ALLOW_NON_NUMERIC_NUMBERS)) {
                    m1657f("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                } else {
                    return m1611a("Infinity", Double.POSITIVE_INFINITY);
                }
            case 78:
                m1749a("NaN", 1);
                if (!m1911a(EnumC0519i.ALLOW_NON_NUMERIC_NUMBERS)) {
                    m1657f("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                } else {
                    return m1611a("NaN", Double.NaN);
                }
        }
        if (Character.isJavaIdentifierStart(i)) {
            m1750a("" + ((char) i), "('true', 'false' or 'null')");
        }
        m1649b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: p */
    public String mo1757p() {
        if (this.f1728K != EnumC0522l.VALUE_STRING) {
            return super.mo1644a((String) null);
        }
        if (this.f1811R) {
            this.f1811R = false;
            m1743G();
        }
        return this.f1723n.m1900f();
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: r */
    protected boolean mo1626r() {
        this.f1715f += this.f1714e;
        this.f1717h -= this.f1714e;
        if (this.f1806M == null) {
            return false;
        }
        int read = this.f1806M.read(this.f1807N, 0, this.f1807N.length);
        if (read > 0) {
            this.f1713d = 0;
            this.f1714e = read;
            return true;
        }
        mo1627s();
        if (read == 0) {
            throw new IOException("Reader returned 0 characters when trying to read " + this.f1714e);
        }
        return false;
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: s */
    protected void mo1627s() {
        if (this.f1806M != null) {
            if (this.f1711b.m1684c() || m1911a(EnumC0519i.AUTO_CLOSE_SOURCE)) {
                this.f1806M.close();
            }
            this.f1806M = null;
        }
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: t */
    protected void mo1628t() {
        super.mo1628t();
        this.f1809P.m1850b();
        char[] cArr = this.f1807N;
        if (cArr != null) {
            this.f1807N = null;
            this.f1711b.m1680a(cArr);
        }
    }
}
