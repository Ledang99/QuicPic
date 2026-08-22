package com.p014a.p015a.p016a.p019c;

import com.p014a.p015a.p016a.AbstractC0523m;
import com.p014a.p015a.p016a.C0516f;
import com.p014a.p015a.p016a.EnumC0519i;
import com.p014a.p015a.p016a.EnumC0522l;
import com.p014a.p015a.p016a.p017a.AbstractC0478a;
import com.p014a.p015a.p016a.p018b.C0482b;
import com.p014a.p015a.p016a.p018b.C0483c;
import com.p014a.p015a.p016a.p020d.AbstractC0501f;
import com.p014a.p015a.p016a.p020d.C0496a;
import com.p014a.p015a.p016a.p021e.C0507a;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.logging.impl.SimpleLog;
import org.apache.http.HttpStatus;
import org.apache.http.message.TokenParser;

/* renamed from: com.a.a.a.c.e */
/* loaded from: classes.dex */
public class C0494e extends AbstractC0478a {

    /* renamed from: M */
    protected AbstractC0523m f1815M;

    /* renamed from: N */
    protected final C0496a f1816N;

    /* renamed from: O */
    protected int[] f1817O;

    /* renamed from: P */
    protected boolean f1818P;

    /* renamed from: Q */
    protected InputStream f1819Q;

    /* renamed from: R */
    protected byte[] f1820R;

    /* renamed from: S */
    protected boolean f1821S;

    /* renamed from: V */
    private int f1822V;

    /* renamed from: T */
    private static final int[] f1813T = C0482b.m1669b();

    /* renamed from: L */
    protected static final int[] f1812L = C0482b.m1668a();

    /* renamed from: U */
    private static final int[] f1814U = C0482b.m1673f();

    public C0494e(C0483c c0483c, int i, InputStream inputStream, AbstractC0523m abstractC0523m, C0496a c0496a, byte[] bArr, int i2, int i3, boolean z) {
        super(c0483c, i);
        this.f1817O = new int[16];
        this.f1818P = false;
        this.f1819Q = inputStream;
        this.f1815M = abstractC0523m;
        this.f1816N = c0496a;
        this.f1820R = bArr;
        this.f1713d = i2;
        this.f1714e = i3;
        this.f1717h = i2;
        this.f1715f = -i2;
        this.f1821S = z;
    }

    /* renamed from: K */
    private final EnumC0522l m1758K() {
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
    private final int m1759L() {
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            return 48;
        }
        int i = this.f1820R[this.f1713d] & 255;
        if (i < 48 || i > 57) {
            return 48;
        }
        if (!m1911a(EnumC0519i.ALLOW_NUMERIC_LEADING_ZEROS)) {
            m1618c("Leading zeroes not allowed");
        }
        this.f1713d++;
        if (i != 48) {
            return i;
        }
        do {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                return i;
            }
            i = this.f1820R[this.f1713d] & 255;
            if (i < 48 || i > 57) {
                return 48;
            }
            this.f1713d++;
        } while (i == 48);
        return i;
    }

    /* renamed from: M */
    private final int m1760M() {
        int i;
        int[] iArr = f1814U;
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                throw m1912b("Unexpected end-of-input within/between " + this.f1721l.m1927d() + " entries");
            }
            byte[] bArr = this.f1820R;
            int i2 = this.f1713d;
            this.f1713d = i2 + 1;
            i = bArr[i2] & 255;
            switch (iArr[i]) {
                case 0:
                    break;
                case 1:
                    break;
                case 2:
                    m1783u(i);
                    break;
                case 3:
                    m1784v(i);
                    break;
                case 4:
                    m1785w(i);
                    break;
                case 10:
                    this.f1716g++;
                    this.f1717h = this.f1713d;
                    break;
                case 13:
                    m1791J();
                    break;
                case 35:
                    if (!m1764Q()) {
                        break;
                    } else {
                        break;
                    }
                case 47:
                    m1762O();
                    break;
                default:
                    if (i < 32) {
                        m1653d(i);
                    }
                    m1806l(i);
                    break;
            }
        }
        return i;
    }

    /* renamed from: N */
    private final int m1761N() {
        int[] iArr = f1814U;
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                mo1629u();
                return -1;
            }
            byte[] bArr = this.f1820R;
            int i = this.f1713d;
            this.f1713d = i + 1;
            int i2 = bArr[i] & 255;
            switch (iArr[i2]) {
                case 0:
                    return i2;
                case 1:
                    break;
                case 2:
                    m1783u(i2);
                    break;
                case 3:
                    m1784v(i2);
                    break;
                case 4:
                    m1785w(i2);
                    break;
                case 10:
                    this.f1716g++;
                    this.f1717h = this.f1713d;
                    break;
                case 13:
                    m1791J();
                    break;
                case 35:
                    if (!m1764Q()) {
                        return i2;
                    }
                    break;
                case 47:
                    m1762O();
                    break;
                default:
                    m1806l(i2);
                    break;
            }
        }
    }

    /* renamed from: O */
    private final void m1762O() {
        if (!m1911a(EnumC0519i.ALLOW_COMMENTS)) {
            m1649b(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
        }
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(" in a comment");
        }
        byte[] bArr = this.f1820R;
        int i = this.f1713d;
        this.f1713d = i + 1;
        int i2 = bArr[i] & 255;
        if (i2 == 47) {
            m1765R();
        } else if (i2 == 42) {
            m1763P();
        } else {
            m1649b(i2, "was expecting either '*' or '/' for a comment");
        }
    }

    /* renamed from: P */
    private final void m1763P() {
        int[] m1672e = C0482b.m1672e();
        while (true) {
            if (this.f1713d < this.f1714e || mo1626r()) {
                byte[] bArr = this.f1820R;
                int i = this.f1713d;
                this.f1713d = i + 1;
                int i2 = bArr[i] & 255;
                int i3 = m1672e[i2];
                if (i3 != 0) {
                    switch (i3) {
                        case 2:
                            m1783u(i2);
                            break;
                        case 3:
                            m1784v(i2);
                            break;
                        case 4:
                            m1785w(i2);
                            break;
                        case 10:
                            this.f1716g++;
                            this.f1717h = this.f1713d;
                            break;
                        case 13:
                            m1791J();
                            break;
                        case 42:
                            if (this.f1713d >= this.f1714e && !mo1626r()) {
                                break;
                            } else if (this.f1820R[this.f1713d] != 47) {
                                break;
                            } else {
                                this.f1713d++;
                                return;
                            }
                        default:
                            m1806l(i2);
                            break;
                    }
                }
            }
        }
        m1655e(" in a comment");
    }

    /* renamed from: Q */
    private final boolean m1764Q() {
        if (!m1911a(EnumC0519i.ALLOW_YAML_COMMENTS)) {
            return false;
        }
        m1765R();
        return true;
    }

    /* renamed from: R */
    private final void m1765R() {
        int[] m1672e = C0482b.m1672e();
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                return;
            }
            byte[] bArr = this.f1820R;
            int i = this.f1713d;
            this.f1713d = i + 1;
            int i2 = bArr[i] & 255;
            int i3 = m1672e[i2];
            if (i3 != 0) {
                switch (i3) {
                    case 2:
                        m1783u(i2);
                        break;
                    case 3:
                        m1784v(i2);
                        break;
                    case 4:
                        m1785w(i2);
                        break;
                    case 10:
                        this.f1716g++;
                        this.f1717h = this.f1713d;
                        return;
                    case 13:
                        m1791J();
                        return;
                    case 42:
                        break;
                    default:
                        if (i3 >= 0) {
                            break;
                        } else {
                            m1806l(i2);
                            break;
                        }
                }
            }
        }
    }

    /* renamed from: S */
    private int m1766S() {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr = this.f1820R;
        int i = this.f1713d;
        this.f1713d = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: a */
    private final AbstractC0501f m1767a(int i, int i2, int i3) {
        return m1793a(this.f1817O, 0, i, i2, i3);
    }

    /* renamed from: a */
    private final AbstractC0501f m1768a(int i, int i2, int i3, int i4) {
        this.f1817O[0] = i;
        return m1793a(this.f1817O, 1, i2, i3, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1 A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final AbstractC0501f m1769a(int[] iArr, int i, int i2) {
        int i3;
        char[] cArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = ((i << 2) - 4) + i2;
        if (i2 < 4) {
            i3 = iArr[i - 1];
            iArr[i - 1] = i3 << ((4 - i2) << 3);
        } else {
            i3 = 0;
        }
        char[] m1905k = this.f1723n.m1905k();
        int i10 = 0;
        int i11 = 0;
        while (i11 < i9) {
            int i12 = (iArr[i11 >> 2] >> ((3 - (i11 & 3)) << 3)) & 255;
            int i13 = i11 + 1;
            if (i12 > 127) {
                if ((i12 & 224) == 192) {
                    i7 = i12 & 31;
                    i8 = 1;
                } else if ((i12 & 240) == 224) {
                    i7 = i12 & 15;
                    i8 = 2;
                } else if ((i12 & 248) == 240) {
                    i7 = i12 & 7;
                    i8 = 3;
                } else {
                    m1807m(i12);
                    i7 = 1;
                    i8 = 1;
                }
                if (i13 + i8 > i9) {
                    m1655e(" in field name");
                }
                int i14 = iArr[i13 >> 2] >> ((3 - (i13 & 3)) << 3);
                i13++;
                if ((i14 & 192) != 128) {
                    m1808n(i14);
                }
                i12 = (i7 << 6) | (i14 & 63);
                if (i8 > 1) {
                    int i15 = iArr[i13 >> 2] >> ((3 - (i13 & 3)) << 3);
                    i13++;
                    if ((i15 & 192) != 128) {
                        m1808n(i15);
                    }
                    i12 = (i12 << 6) | (i15 & 63);
                    if (i8 > 2) {
                        int i16 = iArr[i13 >> 2] >> ((3 - (i13 & 3)) << 3);
                        i13++;
                        if ((i16 & 192) != 128) {
                            m1808n(i16 & 255);
                        }
                        i12 = (i12 << 6) | (i16 & 63);
                    }
                }
                if (i8 > 2) {
                    int i17 = i12 - 65536;
                    if (i10 >= m1905k.length) {
                        m1905k = this.f1723n.m1908n();
                    }
                    m1905k[i10] = (char) (55296 + (i17 >> 10));
                    int i18 = (i17 & 1023) | 56320;
                    i5 = i13;
                    i6 = i10 + 1;
                    cArr = m1905k;
                    i4 = i18;
                    if (i6 < cArr.length) {
                        cArr = this.f1723n.m1908n();
                    }
                    i10 = i6 + 1;
                    cArr[i6] = (char) i4;
                    i11 = i5;
                    m1905k = cArr;
                }
            }
            cArr = m1905k;
            i4 = i12;
            i5 = i13;
            i6 = i10;
            if (i6 < cArr.length) {
            }
            i10 = i6 + 1;
            cArr[i6] = (char) i4;
            i11 = i5;
            m1905k = cArr;
        }
        String str = new String(m1905k, 0, i10);
        if (i2 < 4) {
            iArr[i - 1] = i3;
        }
        return this.f1816N.m1825a(str, iArr, i);
    }

    /* renamed from: a */
    private final AbstractC0501f m1770a(int[] iArr, int i, int i2, int i3) {
        if (i >= iArr.length) {
            iArr = m1774a(iArr, iArr.length);
            this.f1817O = iArr;
        }
        int i4 = i + 1;
        iArr[i] = i2;
        AbstractC0501f m1826a = this.f1816N.m1826a(iArr, i4);
        return m1826a == null ? m1769a(iArr, i4, i3) : m1826a;
    }

    /* renamed from: a */
    private final EnumC0522l m1771a(char[] cArr, int i, int i2, boolean z, int i3) {
        int i4;
        int i5;
        char[] cArr2;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int i10;
        int i11;
        int i12 = 0;
        boolean z3 = false;
        if (i2 == 46) {
            int i13 = i + 1;
            cArr[i] = (char) i2;
            while (true) {
                if (this.f1713d >= this.f1714e && !mo1626r()) {
                    z3 = true;
                    i5 = i2;
                    break;
                }
                byte[] bArr = this.f1820R;
                int i14 = this.f1713d;
                this.f1713d = i14 + 1;
                i2 = bArr[i14] & 255;
                if (i2 < 48) {
                    i5 = i2;
                    break;
                }
                if (i2 > 57) {
                    i5 = i2;
                    break;
                }
                i12++;
                if (i13 >= cArr.length) {
                    cArr = this.f1723n.m1907m();
                    i13 = 0;
                }
                int i15 = i13;
                i13 = i15 + 1;
                cArr[i15] = (char) i2;
            }
            if (i12 == 0) {
                m1615a(i5, "Decimal point not followed by a digit");
            }
            i4 = i12;
            i6 = i13;
            cArr2 = cArr;
        } else {
            i4 = 0;
            i5 = i2;
            cArr2 = cArr;
            i6 = i;
        }
        int i16 = 0;
        if (i5 == 101 || i5 == 69) {
            if (i6 >= cArr2.length) {
                cArr2 = this.f1723n.m1907m();
                i6 = 0;
            }
            int i17 = i6 + 1;
            cArr2[i6] = (char) i5;
            if (this.f1713d >= this.f1714e) {
                m1625q();
            }
            byte[] bArr2 = this.f1820R;
            int i18 = this.f1713d;
            this.f1713d = i18 + 1;
            int i19 = bArr2[i18] & 255;
            if (i19 == 45 || i19 == 43) {
                if (i17 >= cArr2.length) {
                    cArr2 = this.f1723n.m1907m();
                    i7 = 0;
                } else {
                    i7 = i17;
                }
                int i20 = i7 + 1;
                cArr2[i7] = (char) i19;
                if (this.f1713d >= this.f1714e) {
                    m1625q();
                }
                byte[] bArr3 = this.f1820R;
                int i21 = this.f1713d;
                this.f1713d = i21 + 1;
                i8 = bArr3[i21] & 255;
                i9 = i20;
            } else {
                i9 = i17;
                i8 = i19;
            }
            while (i8 <= 57 && i8 >= 48) {
                i16++;
                if (i9 >= cArr2.length) {
                    cArr2 = this.f1723n.m1907m();
                    i9 = 0;
                }
                int i22 = i9 + 1;
                cArr2[i9] = (char) i8;
                if (this.f1713d >= this.f1714e && !mo1626r()) {
                    i11 = i16;
                    z2 = true;
                    i10 = i22;
                    break;
                }
                byte[] bArr4 = this.f1820R;
                int i23 = this.f1713d;
                this.f1713d = i23 + 1;
                i8 = bArr4[i23] & 255;
                i9 = i22;
            }
            z2 = z3;
            int i24 = i16;
            i10 = i9;
            i11 = i24;
            if (i11 == 0) {
                m1615a(i8, "Exponent indicator not followed by a digit");
            }
        } else {
            z2 = z3;
            i8 = i5;
            i10 = i6;
            i11 = 0;
        }
        if (!z2) {
            this.f1713d--;
            if (this.f1721l.m1925b()) {
                m1778p(i8);
            }
        }
        this.f1723n.m1891a(i10);
        return m1616b(z, i3, i4, i11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x002f, code lost:
    
        if (r3 == 46) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0033, code lost:
    
        if (r3 == 101) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0037, code lost:
    
        if (r3 != 69) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0053, code lost:
    
        r6.f1713d--;
        r6.f1723n.m1891a(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
    
        if (r6.f1721l.m1925b() == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0066, code lost:
    
        r0 = r6.f1820R;
        r1 = r6.f1713d;
        r6.f1713d = r1 + 1;
        m1778p(r0[r1] & 255);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
    
        return m1612a(r9, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
    
        return m1771a(r1, r2, r3, r9, r5);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final EnumC0522l m1772a(char[] cArr, int i, boolean z, int i2) {
        int i3 = i2;
        int i4 = i;
        char[] cArr2 = cArr;
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                this.f1723n.m1891a(i4);
                return m1612a(z, i3);
            }
            byte[] bArr = this.f1820R;
            int i5 = this.f1713d;
            this.f1713d = i5 + 1;
            int i6 = bArr[i5] & 255;
            if (i6 > 57 || i6 < 48) {
                break;
            }
            if (i4 >= cArr2.length) {
                cArr2 = this.f1723n.m1907m();
                i4 = 0;
            }
            int i7 = i4;
            i4 = i7 + 1;
            cArr2[i7] = (char) i6;
            i3++;
        }
    }

    /* renamed from: a */
    private final void m1773a(char[] cArr, int i) {
        int i2;
        int[] iArr = f1813T;
        byte[] bArr = this.f1820R;
        while (true) {
            int i3 = this.f1713d;
            if (i3 >= this.f1714e) {
                m1625q();
                i3 = this.f1713d;
            }
            if (i >= cArr.length) {
                cArr = this.f1723n.m1907m();
                i = 0;
            }
            int min = Math.min(this.f1714e, (cArr.length - i) + i3);
            while (true) {
                if (i3 < min) {
                    int i4 = i3 + 1;
                    int i5 = bArr[i3] & 255;
                    if (iArr[i5] != 0) {
                        this.f1713d = i4;
                        if (i5 == 34) {
                            this.f1723n.m1891a(i);
                            return;
                        }
                        switch (iArr[i5]) {
                            case 1:
                                i5 = mo1610A();
                                break;
                            case 2:
                                i5 = m1779q(i5);
                                break;
                            case 3:
                                if (this.f1714e - this.f1713d < 2) {
                                    i5 = m1780r(i5);
                                    break;
                                } else {
                                    i5 = m1781s(i5);
                                    break;
                                }
                            case 4:
                                int m1782t = m1782t(i5);
                                int i6 = i + 1;
                                cArr[i] = (char) (55296 | (m1782t >> 10));
                                if (i6 >= cArr.length) {
                                    cArr = this.f1723n.m1907m();
                                    i6 = 0;
                                }
                                i = i6;
                                i5 = (m1782t & 1023) | 56320;
                                break;
                            default:
                                if (i5 >= 32) {
                                    m1806l(i5);
                                    break;
                                } else {
                                    m1652c(i5, "string value");
                                    break;
                                }
                        }
                        if (i >= cArr.length) {
                            cArr = this.f1723n.m1907m();
                            i2 = 0;
                        } else {
                            i2 = i;
                        }
                        i = i2 + 1;
                        cArr[i2] = (char) i5;
                    } else {
                        cArr[i] = (char) i5;
                        i3 = i4;
                        i++;
                    }
                } else {
                    this.f1713d = i3;
                }
            }
        }
    }

    /* renamed from: a */
    public static int[] m1774a(int[] iArr, int i) {
        return iArr == null ? new int[i] : C0507a.m1869a(iArr, iArr.length + i);
    }

    /* renamed from: b */
    private final AbstractC0501f m1775b(int i, int i2) {
        AbstractC0501f m1829b = this.f1816N.m1829b(i);
        if (m1829b != null) {
            return m1829b;
        }
        this.f1817O[0] = i;
        return m1769a(this.f1817O, 1, i2);
    }

    /* renamed from: b */
    private final AbstractC0501f m1776b(int i, int i2, int i3) {
        AbstractC0501f m1824a = this.f1816N.m1824a(i, i2);
        if (m1824a != null) {
            return m1824a;
        }
        this.f1817O[0] = i;
        this.f1817O[1] = i2;
        return m1769a(this.f1817O, 2, i3);
    }

    /* renamed from: o */
    private final EnumC0522l m1777o(int i) {
        if (i == 34) {
            this.f1818P = true;
            EnumC0522l enumC0522l = EnumC0522l.VALUE_STRING;
            this.f1728K = enumC0522l;
            return enumC0522l;
        }
        switch (i) {
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
                EnumC0522l m1799f = m1799f(i);
                this.f1728K = m1799f;
                return m1799f;
            case 91:
                this.f1721l = this.f1721l.m1721a(this.f1719j, this.f1720k);
                EnumC0522l enumC0522l2 = EnumC0522l.START_ARRAY;
                this.f1728K = enumC0522l2;
                return enumC0522l2;
            case 93:
            case 125:
                m1649b(i, "expected a value");
                break;
            case HttpStatus.SC_PROCESSING /* 102 */:
                m1797a("false", 1);
                EnumC0522l enumC0522l3 = EnumC0522l.VALUE_FALSE;
                this.f1728K = enumC0522l3;
                return enumC0522l3;
            case 110:
                m1797a("null", 1);
                EnumC0522l enumC0522l4 = EnumC0522l.VALUE_NULL;
                this.f1728K = enumC0522l4;
                return enumC0522l4;
            case 116:
                break;
            case 123:
                this.f1721l = this.f1721l.m1725b(this.f1719j, this.f1720k);
                EnumC0522l enumC0522l5 = EnumC0522l.START_OBJECT;
                this.f1728K = enumC0522l5;
                return enumC0522l5;
            default:
                EnumC0522l m1804j = m1804j(i);
                this.f1728K = m1804j;
                return m1804j;
        }
        m1797a("true", 1);
        EnumC0522l enumC0522l6 = EnumC0522l.VALUE_TRUE;
        this.f1728K = enumC0522l6;
        return enumC0522l6;
    }

    /* renamed from: p */
    private final void m1778p(int i) {
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
                m1791J();
                break;
            default:
                m1651c(i);
                break;
        }
    }

    /* renamed from: q */
    private final int m1779q(int i) {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr = this.f1820R;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
        return (b2 & 63) | ((i & 31) << 6);
    }

    /* renamed from: r */
    private final int m1780r(int i) {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        int i2 = i & 15;
        byte[] bArr = this.f1820R;
        int i3 = this.f1713d;
        this.f1713d = i3 + 1;
        byte b2 = bArr[i3];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
        int i4 = (i2 << 6) | (b2 & 63);
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr2 = this.f1820R;
        int i5 = this.f1713d;
        this.f1713d = i5 + 1;
        byte b3 = bArr2[i5];
        if ((b3 & 192) != 128) {
            m1796a(b3 & 255, this.f1713d);
        }
        return (i4 << 6) | (b3 & 63);
    }

    /* renamed from: s */
    private final int m1781s(int i) {
        int i2 = i & 15;
        byte[] bArr = this.f1820R;
        int i3 = this.f1713d;
        this.f1713d = i3 + 1;
        byte b2 = bArr[i3];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
        int i4 = (i2 << 6) | (b2 & 63);
        byte[] bArr2 = this.f1820R;
        int i5 = this.f1713d;
        this.f1713d = i5 + 1;
        byte b3 = bArr2[i5];
        if ((b3 & 192) != 128) {
            m1796a(b3 & 255, this.f1713d);
        }
        return (i4 << 6) | (b3 & 63);
    }

    /* renamed from: t */
    private final int m1782t(int i) {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr = this.f1820R;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
        int i3 = (b2 & 63) | ((i & 7) << 6);
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr2 = this.f1820R;
        int i4 = this.f1713d;
        this.f1713d = i4 + 1;
        byte b3 = bArr2[i4];
        if ((b3 & 192) != 128) {
            m1796a(b3 & 255, this.f1713d);
        }
        int i5 = (i3 << 6) | (b3 & 63);
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr3 = this.f1820R;
        int i6 = this.f1713d;
        this.f1713d = i6 + 1;
        byte b4 = bArr3[i6];
        if ((b4 & 192) != 128) {
            m1796a(b4 & 255, this.f1713d);
        }
        return ((i5 << 6) | (b4 & 63)) - 65536;
    }

    /* renamed from: u */
    private final void m1783u(int i) {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr = this.f1820R;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
    }

    /* renamed from: v */
    private final void m1784v(int i) {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr = this.f1820R;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr2 = this.f1820R;
        int i3 = this.f1713d;
        this.f1713d = i3 + 1;
        byte b3 = bArr2[i3];
        if ((b3 & 192) != 128) {
            m1796a(b3 & 255, this.f1713d);
        }
    }

    /* renamed from: w */
    private final void m1785w(int i) {
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr = this.f1820R;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        byte b2 = bArr[i2];
        if ((b2 & 192) != 128) {
            m1796a(b2 & 255, this.f1713d);
        }
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr2 = this.f1820R;
        int i3 = this.f1713d;
        this.f1713d = i3 + 1;
        byte b3 = bArr2[i3];
        if ((b3 & 192) != 128) {
            m1796a(b3 & 255, this.f1713d);
        }
        if (this.f1713d >= this.f1714e) {
            m1625q();
        }
        byte[] bArr3 = this.f1820R;
        int i4 = this.f1713d;
        this.f1713d = i4 + 1;
        byte b4 = bArr3[i4];
        if ((b4 & 192) != 128) {
            m1796a(b4 & 255, this.f1713d);
        }
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: A */
    protected char mo1610A() {
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(" in character escape sequence");
        }
        byte[] bArr = this.f1820R;
        int i = this.f1713d;
        this.f1713d = i + 1;
        byte b2 = bArr[i];
        switch (b2) {
            case 34:
            case 47:
            case 92:
                return (char) b2;
            case 98:
                return '\b';
            case HttpStatus.SC_PROCESSING /* 102 */:
                return '\f';
            case 110:
                return '\n';
            case 114:
                return TokenParser.f5039CR;
            case 116:
                return '\t';
            case 117:
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    if (this.f1713d >= this.f1714e && !mo1626r()) {
                        m1655e(" in character escape sequence");
                    }
                    byte[] bArr2 = this.f1820R;
                    int i4 = this.f1713d;
                    this.f1713d = i4 + 1;
                    byte b3 = bArr2[i4];
                    int m1666a = C0482b.m1666a(b3);
                    if (m1666a < 0) {
                        m1649b(b3, "expected a hex-digit for character escape sequence");
                    }
                    i2 = (i2 << 4) | m1666a;
                }
                return (char) i2;
            default:
                return m1639a((char) m1805k(b2));
        }
    }

    /* renamed from: E */
    protected AbstractC0501f m1786E() {
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(": was expecting closing '\"' for name");
        }
        byte[] bArr = this.f1820R;
        int i = this.f1713d;
        this.f1713d = i + 1;
        int i2 = bArr[i] & 255;
        return i2 == 34 ? C0496a.m1814d() : m1793a(this.f1817O, 0, 0, i2, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f3  */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected AbstractC0501f m1787F() {
        int[] iArr;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr2;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int[] iArr3;
        int i13;
        int i14;
        int i15;
        int[] iArr4;
        if (this.f1713d >= this.f1714e && !mo1626r()) {
            m1655e(": was expecting closing ''' for name");
        }
        byte[] bArr = this.f1820R;
        int i16 = this.f1713d;
        this.f1713d = i16 + 1;
        int i17 = bArr[i16] & 255;
        if (i17 == 39) {
            return C0496a.m1814d();
        }
        int[] iArr5 = this.f1817O;
        int[] iArr6 = f1812L;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        while (i17 != 39) {
            if (i17 != 34 && iArr6[i17] != 0) {
                if (i17 != 92) {
                    m1652c(i17, "name");
                } else {
                    i17 = mo1610A();
                }
                if (i17 > 127) {
                    if (i18 >= 4) {
                        if (i20 >= iArr5.length) {
                            iArr5 = m1774a(iArr5, iArr5.length);
                            this.f1817O = iArr5;
                        }
                        int i21 = i20 + 1;
                        iArr5[i20] = i19;
                        i10 = 0;
                        i3 = i21;
                        i9 = 0;
                    } else {
                        int i22 = i18;
                        i9 = i19;
                        i3 = i20;
                        i10 = i22;
                    }
                    if (i17 < 2048) {
                        int i23 = i10 + 1;
                        i14 = (i9 << 8) | (i17 >> 6) | 192;
                        iArr4 = iArr5;
                        i15 = i23;
                    } else {
                        int i24 = (i9 << 8) | (i17 >> 12) | 224;
                        int i25 = i10 + 1;
                        if (i25 >= 4) {
                            if (i3 >= iArr5.length) {
                                iArr5 = m1774a(iArr5, iArr5.length);
                                this.f1817O = iArr5;
                            }
                            iArr5[i3] = i24;
                            i12 = i3 + 1;
                            iArr3 = iArr5;
                            i13 = 0;
                            i11 = 0;
                        } else {
                            i11 = i24;
                            i12 = i3;
                            iArr3 = iArr5;
                            i13 = i25;
                        }
                        i14 = (i11 << 8) | ((i17 >> 6) & 63) | 128;
                        i15 = i13 + 1;
                        int i26 = i12;
                        iArr4 = iArr3;
                        i3 = i26;
                    }
                    i2 = i14;
                    i4 = i15;
                    iArr5 = iArr4;
                    i5 = (i17 & 63) | 128;
                    if (i4 >= 4) {
                        int i27 = i4 + 1;
                        i7 = i5 | (i2 << 8);
                        i8 = i3;
                        iArr2 = iArr5;
                        i6 = i27;
                    } else {
                        if (i3 >= iArr5.length) {
                            iArr5 = m1774a(iArr5, iArr5.length);
                            this.f1817O = iArr5;
                        }
                        int i28 = i3 + 1;
                        iArr5[i3] = i2;
                        iArr2 = iArr5;
                        i6 = 1;
                        i7 = i5;
                        i8 = i28;
                    }
                    if (this.f1713d >= this.f1714e && !mo1626r()) {
                        m1655e(" in field name");
                    }
                    byte[] bArr2 = this.f1820R;
                    int i29 = this.f1713d;
                    this.f1713d = i29 + 1;
                    i17 = bArr2[i29] & 255;
                    int i30 = i6;
                    iArr5 = iArr2;
                    i19 = i7;
                    i20 = i8;
                    i18 = i30;
                }
            }
            i2 = i19;
            i3 = i20;
            i4 = i18;
            i5 = i17;
            if (i4 >= 4) {
            }
            if (this.f1713d >= this.f1714e) {
                m1655e(" in field name");
            }
            byte[] bArr22 = this.f1820R;
            int i292 = this.f1713d;
            this.f1713d = i292 + 1;
            i17 = bArr22[i292] & 255;
            int i302 = i6;
            iArr5 = iArr2;
            i19 = i7;
            i20 = i8;
            i18 = i302;
        }
        if (i18 > 0) {
            if (i20 >= iArr5.length) {
                iArr5 = m1774a(iArr5, iArr5.length);
                this.f1817O = iArr5;
            }
            iArr5[i20] = i19;
            iArr = iArr5;
            i = i20 + 1;
        } else {
            iArr = iArr5;
            i = i20;
        }
        AbstractC0501f m1826a = this.f1816N.m1826a(iArr, i);
        return m1826a == null ? m1769a(iArr, i, i18) : m1826a;
    }

    /* renamed from: G */
    protected void m1788G() {
        int i = this.f1713d;
        if (i >= this.f1714e) {
            m1625q();
            i = this.f1713d;
        }
        char[] m1905k = this.f1723n.m1905k();
        int[] iArr = f1813T;
        int min = Math.min(this.f1714e, m1905k.length + i);
        byte[] bArr = this.f1820R;
        int i2 = i;
        int i3 = 0;
        while (true) {
            if (i2 >= min) {
                break;
            }
            int i4 = bArr[i2] & 255;
            if (iArr[i4] == 0) {
                m1905k[i3] = (char) i4;
                i3++;
                i2++;
            } else if (i4 == 34) {
                this.f1713d = i2 + 1;
                this.f1723n.m1891a(i3);
                return;
            }
        }
        this.f1713d = i2;
        m1773a(m1905k, i3);
    }

    /* renamed from: H */
    protected void m1789H() {
        this.f1818P = false;
        int[] iArr = f1813T;
        byte[] bArr = this.f1820R;
        while (true) {
            int i = this.f1713d;
            int i2 = this.f1714e;
            if (i >= i2) {
                m1625q();
                i = this.f1713d;
                i2 = this.f1714e;
            }
            while (true) {
                if (i < i2) {
                    int i3 = i + 1;
                    int i4 = bArr[i] & 255;
                    if (iArr[i4] != 0) {
                        this.f1713d = i3;
                        if (i4 != 34) {
                            switch (iArr[i4]) {
                                case 1:
                                    mo1610A();
                                    break;
                                case 2:
                                    m1783u(i4);
                                    break;
                                case 3:
                                    m1784v(i4);
                                    break;
                                case 4:
                                    m1785w(i4);
                                    break;
                                default:
                                    if (i4 >= 32) {
                                        m1806l(i4);
                                        break;
                                    } else {
                                        m1652c(i4, "string value");
                                        break;
                                    }
                            }
                        } else {
                            return;
                        }
                    } else {
                        i = i3;
                    }
                } else {
                    this.f1713d = i;
                }
            }
        }
    }

    /* renamed from: I */
    protected EnumC0522l m1790I() {
        int i;
        int i2;
        char[] m1905k = this.f1723n.m1905k();
        int[] iArr = f1813T;
        byte[] bArr = this.f1820R;
        int i3 = 0;
        while (true) {
            if (this.f1713d >= this.f1714e) {
                m1625q();
            }
            if (i3 >= m1905k.length) {
                m1905k = this.f1723n.m1907m();
                i3 = 0;
            }
            int i4 = this.f1714e;
            int length = this.f1713d + (m1905k.length - i3);
            if (length >= i4) {
                length = i4;
            }
            while (this.f1713d < length) {
                int i5 = this.f1713d;
                this.f1713d = i5 + 1;
                int i6 = bArr[i5] & 255;
                if (i6 != 39 && iArr[i6] == 0) {
                    m1905k[i3] = (char) i6;
                    i3++;
                } else {
                    if (i6 == 39) {
                        this.f1723n.m1891a(i3);
                        return EnumC0522l.VALUE_STRING;
                    }
                    switch (iArr[i6]) {
                        case 1:
                            if (i6 != 39) {
                                i = mo1610A();
                                break;
                            }
                            i = i6;
                            break;
                        case 2:
                            i = m1779q(i6);
                            break;
                        case 3:
                            if (this.f1714e - this.f1713d < 2) {
                                i = m1780r(i6);
                                break;
                            } else {
                                i = m1781s(i6);
                                break;
                            }
                        case 4:
                            int m1782t = m1782t(i6);
                            int i7 = i3 + 1;
                            m1905k[i3] = (char) (55296 | (m1782t >> 10));
                            if (i7 >= m1905k.length) {
                                m1905k = this.f1723n.m1907m();
                                i3 = 0;
                            } else {
                                i3 = i7;
                            }
                            i = 56320 | (m1782t & 1023);
                            break;
                        default:
                            if (i6 < 32) {
                                m1652c(i6, "string value");
                            }
                            m1806l(i6);
                            i = i6;
                            break;
                    }
                    if (i3 >= m1905k.length) {
                        m1905k = this.f1723n.m1907m();
                        i2 = 0;
                    } else {
                        i2 = i3;
                    }
                    i3 = i2 + 1;
                    m1905k[i2] = (char) i;
                }
            }
        }
    }

    /* renamed from: J */
    protected final void m1791J() {
        if ((this.f1713d < this.f1714e || mo1626r()) && this.f1820R[this.f1713d] == 10) {
            this.f1713d++;
        }
        this.f1716g++;
        this.f1717h = this.f1713d;
    }

    /* renamed from: a */
    protected AbstractC0501f m1792a(int i, int[] iArr) {
        byte[] bArr = this.f1820R;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (iArr[i3] != 0) {
            return i3 == 34 ? m1776b(this.f1822V, i, 1) : m1768a(this.f1822V, i, i3, 1);
        }
        int i4 = i3 | (i << 8);
        byte[] bArr2 = this.f1820R;
        int i5 = this.f1713d;
        this.f1713d = i5 + 1;
        int i6 = bArr2[i5] & 255;
        if (iArr[i6] != 0) {
            return i6 == 34 ? m1776b(this.f1822V, i4, 2) : m1768a(this.f1822V, i4, i6, 2);
        }
        int i7 = (i4 << 8) | i6;
        byte[] bArr3 = this.f1820R;
        int i8 = this.f1713d;
        this.f1713d = i8 + 1;
        int i9 = bArr3[i8] & 255;
        if (iArr[i9] != 0) {
            return i9 == 34 ? m1776b(this.f1822V, i7, 3) : m1768a(this.f1822V, i7, i9, 3);
        }
        int i10 = (i7 << 8) | i9;
        byte[] bArr4 = this.f1820R;
        int i11 = this.f1713d;
        this.f1713d = i11 + 1;
        int i12 = bArr4[i11] & 255;
        if (iArr[i12] != 0) {
            return i12 == 34 ? m1776b(this.f1822V, i10, 4) : m1768a(this.f1822V, i10, i12, 4);
        }
        this.f1817O[0] = this.f1822V;
        this.f1817O[1] = i10;
        return m1802h(i12);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bb  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected AbstractC0501f m1793a(int[] iArr, int i, int i2, int i3, int i4) {
        int i5;
        int[] iArr2;
        int i6;
        int[] iArr3;
        int i7;
        int i8;
        int[] iArr4;
        int i9;
        int i10;
        int i11;
        int[] iArr5;
        int[] iArr6 = f1812L;
        while (true) {
            if (iArr6[i3] != 0) {
                if (i3 == 34) {
                    break;
                }
                if (i3 != 92) {
                    m1652c(i3, "name");
                } else {
                    i3 = mo1610A();
                }
                if (i3 > 127) {
                    if (i4 >= 4) {
                        if (i >= iArr.length) {
                            iArr = m1774a(iArr, iArr.length);
                            this.f1817O = iArr;
                        }
                        i6 = i + 1;
                        iArr[i] = i2;
                        i4 = 0;
                        i2 = 0;
                        iArr3 = iArr;
                    } else {
                        i6 = i;
                        iArr3 = iArr;
                    }
                    if (i3 < 2048) {
                        i10 = (i3 >> 6) | 192 | (i2 << 8);
                        iArr5 = iArr3;
                        i11 = i4 + 1;
                    } else {
                        int i12 = (i3 >> 12) | 224 | (i2 << 8);
                        int i13 = i4 + 1;
                        if (i13 >= 4) {
                            if (i6 >= iArr3.length) {
                                iArr3 = m1774a(iArr3, iArr3.length);
                                this.f1817O = iArr3;
                            }
                            iArr3[i6] = i12;
                            i8 = i6 + 1;
                            iArr4 = iArr3;
                            i9 = 0;
                            i7 = 0;
                        } else {
                            i7 = i12;
                            i8 = i6;
                            iArr4 = iArr3;
                            i9 = i13;
                        }
                        i10 = (i7 << 8) | ((i3 >> 6) & 63) | 128;
                        i11 = i9 + 1;
                        int i14 = i8;
                        iArr5 = iArr4;
                        i6 = i14;
                    }
                    i2 = (i3 & 63) | 128;
                    i4 = i11;
                    i = i6;
                    iArr2 = iArr5;
                    i5 = i10;
                    if (i4 >= 4) {
                        i4++;
                        i2 |= i5 << 8;
                        iArr = iArr2;
                    } else {
                        if (i >= iArr2.length) {
                            iArr2 = m1774a(iArr2, iArr2.length);
                            this.f1817O = iArr2;
                        }
                        iArr2[i] = i5;
                        i4 = 1;
                        i++;
                        iArr = iArr2;
                    }
                    if (this.f1713d >= this.f1714e && !mo1626r()) {
                        m1655e(" in field name");
                    }
                    byte[] bArr = this.f1820R;
                    int i15 = this.f1713d;
                    this.f1713d = i15 + 1;
                    i3 = bArr[i15] & 255;
                }
            }
            i5 = i2;
            iArr2 = iArr;
            i2 = i3;
            if (i4 >= 4) {
            }
            if (this.f1713d >= this.f1714e) {
                m1655e(" in field name");
            }
            byte[] bArr2 = this.f1820R;
            int i152 = this.f1713d;
            this.f1713d = i152 + 1;
            i3 = bArr2[i152] & 255;
        }
        if (i4 > 0) {
            if (i >= iArr.length) {
                iArr = m1774a(iArr, iArr.length);
                this.f1817O = iArr;
            }
            iArr[i] = i2;
            i++;
        }
        AbstractC0501f m1826a = this.f1816N.m1826a(iArr, i);
        return m1826a == null ? m1769a(iArr, i, i4) : m1826a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.p014a.p015a.p016a.p017a.AbstractC0479b, com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public EnumC0522l mo1643a() {
        EnumC0522l m1799f;
        this.f1701A = 0;
        if (this.f1728K == EnumC0522l.FIELD_NAME) {
            return m1758K();
        }
        if (this.f1818P) {
            m1789H();
        }
        int m1761N = m1761N();
        if (m1761N < 0) {
            close();
            this.f1728K = null;
            return null;
        }
        this.f1718i = (this.f1715f + this.f1713d) - 1;
        this.f1719j = this.f1716g;
        this.f1720k = (this.f1713d - this.f1717h) - 1;
        this.f1727r = null;
        if (m1761N == 93) {
            if (!this.f1721l.m1924a()) {
                m1614a(m1761N, '}');
            }
            this.f1721l = this.f1721l.m1727g();
            EnumC0522l enumC0522l = EnumC0522l.END_ARRAY;
            this.f1728K = enumC0522l;
            return enumC0522l;
        }
        if (m1761N == 125) {
            if (!this.f1721l.m1926c()) {
                m1614a(m1761N, ']');
            }
            this.f1721l = this.f1721l.m1727g();
            EnumC0522l enumC0522l2 = EnumC0522l.END_OBJECT;
            this.f1728K = enumC0522l2;
            return enumC0522l2;
        }
        if (this.f1721l.m1728h()) {
            if (m1761N != 44) {
                m1649b(m1761N, "was expecting comma to separate " + this.f1721l.m1927d() + " entries");
            }
            m1761N = m1760M();
        }
        if (!this.f1721l.m1926c()) {
            return m1777o(m1761N);
        }
        this.f1721l.m1724a(m1800g(m1761N).m1859a());
        this.f1728K = EnumC0522l.FIELD_NAME;
        if (this.f1713d >= this.f1714e || this.f1820R[this.f1713d] != 58) {
            int m1760M = m1760M();
            if (m1760M != 58) {
                m1649b(m1760M, "was expecting a colon to separate field name and value");
            }
        } else {
            this.f1713d++;
        }
        int m1760M2 = m1760M();
        if (m1760M2 == 34) {
            this.f1818P = true;
            this.f1722m = EnumC0522l.VALUE_STRING;
            return this.f1728K;
        }
        switch (m1760M2) {
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
                m1799f = m1799f(m1760M2);
                break;
            case 91:
                m1799f = EnumC0522l.START_ARRAY;
                break;
            case 93:
            case 125:
                m1649b(m1760M2, "expected a value");
                m1797a("true", 1);
                m1799f = EnumC0522l.VALUE_TRUE;
                break;
            case HttpStatus.SC_PROCESSING /* 102 */:
                m1797a("false", 1);
                m1799f = EnumC0522l.VALUE_FALSE;
                break;
            case 110:
                m1797a("null", 1);
                m1799f = EnumC0522l.VALUE_NULL;
                break;
            case 116:
                m1797a("true", 1);
                m1799f = EnumC0522l.VALUE_TRUE;
                break;
            case 123:
                m1799f = EnumC0522l.START_OBJECT;
                break;
            default:
                m1799f = m1804j(m1760M2);
                break;
        }
        this.f1722m = m1799f;
        return this.f1728K;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x006c, code lost:
    
        m1615a(r0, "expected digit (0-9) to follow minus sign, for valid numeric value");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
    
        return null;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected EnumC0522l m1794a(int i, boolean z) {
        String str;
        int i2 = i;
        while (true) {
            if (i2 != 73) {
                break;
            }
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                m1637C();
            }
            byte[] bArr = this.f1820R;
            int i3 = this.f1713d;
            this.f1713d = i3 + 1;
            byte b2 = bArr[i3];
            if (b2 != 78) {
                if (b2 != 110) {
                    i2 = b2;
                    break;
                }
                str = z ? "-Infinity" : "+Infinity";
            } else {
                str = z ? "-INF" : "+INF";
            }
            m1797a(str, 3);
            if (m1911a(EnumC0519i.ALLOW_NON_NUMERIC_NUMBERS)) {
                return m1611a(str, z ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY);
            }
            m1657f("Non-standard token '" + str + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
            i2 = b2;
        }
    }

    /* renamed from: a */
    protected final String m1795a(EnumC0522l enumC0522l) {
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
        if (this.f1818P) {
            this.f1818P = false;
            m1788G();
        }
        return this.f1723n.m1900f();
    }

    /* renamed from: a */
    protected void m1796a(int i, int i2) {
        this.f1713d = i2;
        m1808n(i);
    }

    /* renamed from: a */
    protected void m1797a(String str, int i) {
        int i2;
        int length = str.length();
        do {
            if ((this.f1713d >= this.f1714e && !mo1626r()) || this.f1820R[this.f1713d] != str.charAt(i)) {
                m1801g(str.substring(0, i));
            }
            this.f1713d++;
            i++;
        } while (i < length);
        if ((this.f1713d < this.f1714e || mo1626r()) && (i2 = this.f1820R[this.f1713d] & 255) >= 48 && i2 != 93 && i2 != 125 && Character.isJavaIdentifierPart((char) m1805k(i2))) {
            m1801g(str.substring(0, i));
        }
    }

    /* renamed from: a */
    protected void m1798a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        while (true) {
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                break;
            }
            byte[] bArr = this.f1820R;
            int i = this.f1713d;
            this.f1713d = i + 1;
            char m1805k = (char) m1805k(bArr[i]);
            if (!Character.isJavaIdentifierPart(m1805k)) {
                break;
            } else {
                sb.append(m1805k);
            }
        }
        m1657f("Unrecognized token '" + sb.toString() + "': was expecting " + str2);
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a, com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: e */
    public C0516f mo1620e() {
        return new C0516f(this.f1711b.m1675a(), this.f1715f + this.f1713d, -1L, this.f1716g, (this.f1713d - this.f1717h) + 1);
    }

    /* renamed from: f */
    protected EnumC0522l m1799f(int i) {
        int i2;
        int i3;
        int i4;
        int i5 = 1;
        char[] m1905k = this.f1723n.m1905k();
        boolean z = i == 45;
        if (z) {
            m1905k[0] = '-';
            if (this.f1713d >= this.f1714e) {
                m1625q();
            }
            byte[] bArr = this.f1820R;
            int i6 = this.f1713d;
            this.f1713d = i6 + 1;
            i3 = bArr[i6] & 255;
            if (i3 < 48 || i3 > 57) {
                return m1794a(i3, true);
            }
            i2 = 1;
        } else {
            i2 = 0;
            i3 = i;
        }
        if (i3 == 48) {
            i3 = m1759L();
        }
        int i7 = i2 + 1;
        m1905k[i2] = (char) i3;
        int length = this.f1713d + m1905k.length;
        if (length > this.f1714e) {
            length = this.f1714e;
        }
        while (this.f1713d < length) {
            byte[] bArr2 = this.f1820R;
            int i8 = this.f1713d;
            this.f1713d = i8 + 1;
            int i9 = bArr2[i8] & 255;
            if (i9 < 48 || i9 > 57) {
                if (i9 == 46 || i9 == 101 || i9 == 69) {
                    return m1771a(m1905k, i7, i9, z, i5);
                }
                this.f1713d--;
                this.f1723n.m1891a(i7);
                if (this.f1721l.m1925b()) {
                    m1778p(i9);
                }
                return m1612a(z, i5);
            }
            i5++;
            if (i7 >= m1905k.length) {
                m1905k = this.f1723n.m1907m();
                i4 = 0;
            } else {
                i4 = i7;
            }
            i7 = i4 + 1;
            m1905k[i4] = (char) i9;
        }
        return m1772a(m1905k, i7, z, i5);
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0479b, com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: f */
    public String mo1656f() {
        if (this.f1728K != EnumC0522l.VALUE_STRING) {
            return m1795a(this.f1728K);
        }
        if (this.f1818P) {
            this.f1818P = false;
            m1788G();
        }
        return this.f1723n.m1900f();
    }

    /* renamed from: g */
    protected AbstractC0501f m1800g(int i) {
        if (i != 34) {
            return m1803i(i);
        }
        if (this.f1713d + 9 > this.f1714e) {
            return m1786E();
        }
        byte[] bArr = this.f1820R;
        int[] iArr = f1812L;
        int i2 = this.f1713d;
        this.f1713d = i2 + 1;
        int i3 = bArr[i2] & 255;
        if (iArr[i3] != 0) {
            return i3 == 34 ? C0496a.m1814d() : m1767a(0, i3, 0);
        }
        int i4 = this.f1713d;
        this.f1713d = i4 + 1;
        int i5 = bArr[i4] & 255;
        if (iArr[i5] != 0) {
            return i5 == 34 ? m1775b(i3, 1) : m1767a(i3, i5, 1);
        }
        int i6 = (i3 << 8) | i5;
        int i7 = this.f1713d;
        this.f1713d = i7 + 1;
        int i8 = bArr[i7] & 255;
        if (iArr[i8] != 0) {
            return i8 == 34 ? m1775b(i6, 2) : m1767a(i6, i8, 2);
        }
        int i9 = (i6 << 8) | i8;
        int i10 = this.f1713d;
        this.f1713d = i10 + 1;
        int i11 = bArr[i10] & 255;
        if (iArr[i11] != 0) {
            return i11 == 34 ? m1775b(i9, 3) : m1767a(i9, i11, 3);
        }
        int i12 = (i9 << 8) | i11;
        int i13 = this.f1713d;
        this.f1713d = i13 + 1;
        int i14 = bArr[i13] & 255;
        if (iArr[i14] != 0) {
            return i14 == 34 ? m1775b(i12, 4) : m1767a(i12, i14, 4);
        }
        this.f1822V = i12;
        return m1792a(i14, iArr);
    }

    /* renamed from: g */
    protected void m1801g(String str) {
        m1798a(str, "'null', 'true', 'false' or NaN");
    }

    /* renamed from: h */
    protected AbstractC0501f m1802h(int i) {
        int[] iArr = f1812L;
        int i2 = 2;
        int i3 = i;
        while (this.f1714e - this.f1713d >= 4) {
            byte[] bArr = this.f1820R;
            int i4 = this.f1713d;
            this.f1713d = i4 + 1;
            int i5 = bArr[i4] & 255;
            if (iArr[i5] != 0) {
                return i5 == 34 ? m1770a(this.f1817O, i2, i3, 1) : m1793a(this.f1817O, i2, i3, i5, 1);
            }
            int i6 = (i3 << 8) | i5;
            byte[] bArr2 = this.f1820R;
            int i7 = this.f1713d;
            this.f1713d = i7 + 1;
            int i8 = bArr2[i7] & 255;
            if (iArr[i8] != 0) {
                return i8 == 34 ? m1770a(this.f1817O, i2, i6, 2) : m1793a(this.f1817O, i2, i6, i8, 2);
            }
            int i9 = (i6 << 8) | i8;
            byte[] bArr3 = this.f1820R;
            int i10 = this.f1713d;
            this.f1713d = i10 + 1;
            int i11 = bArr3[i10] & 255;
            if (iArr[i11] != 0) {
                return i11 == 34 ? m1770a(this.f1817O, i2, i9, 3) : m1793a(this.f1817O, i2, i9, i11, 3);
            }
            int i12 = (i9 << 8) | i11;
            byte[] bArr4 = this.f1820R;
            int i13 = this.f1713d;
            this.f1713d = i13 + 1;
            i3 = bArr4[i13] & 255;
            if (iArr[i3] != 0) {
                return i3 == 34 ? m1770a(this.f1817O, i2, i12, 4) : m1793a(this.f1817O, i2, i12, i3, 4);
            }
            if (i2 >= this.f1817O.length) {
                this.f1817O = m1774a(this.f1817O, i2);
            }
            this.f1817O[i2] = i12;
            i2++;
        }
        return m1793a(this.f1817O, i2, 0, i3, 0);
    }

    /* renamed from: i */
    protected AbstractC0501f m1803i(int i) {
        int[] iArr;
        int i2;
        int i3;
        int i4;
        if (i == 39 && m1911a(EnumC0519i.ALLOW_SINGLE_QUOTES)) {
            return m1787F();
        }
        if (!m1911a(EnumC0519i.ALLOW_UNQUOTED_FIELD_NAMES)) {
            m1649b(i, "was expecting double-quote to start field name");
        }
        int[] m1671d = C0482b.m1671d();
        if (m1671d[i] != 0) {
            m1649b(i, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        int i5 = 0;
        int i6 = 0;
        int i7 = i;
        int i8 = 0;
        int[] iArr2 = this.f1817O;
        while (true) {
            if (i5 < 4) {
                int i9 = i5 + 1;
                i3 = i7 | (i6 << 8);
                i4 = i8;
                iArr = iArr2;
                i2 = i9;
            } else {
                if (i8 >= iArr2.length) {
                    iArr2 = m1774a(iArr2, iArr2.length);
                    this.f1817O = iArr2;
                }
                int i10 = i8 + 1;
                iArr2[i8] = i6;
                iArr = iArr2;
                i2 = 1;
                i3 = i7;
                i4 = i10;
            }
            if (this.f1713d >= this.f1714e && !mo1626r()) {
                m1655e(" in field name");
            }
            int i11 = this.f1820R[this.f1713d] & 255;
            if (m1671d[i11] != 0) {
                break;
            }
            this.f1713d++;
            i6 = i3;
            i5 = i2;
            iArr2 = iArr;
            i8 = i4;
            i7 = i11;
        }
        if (i2 > 0) {
            if (i4 >= iArr.length) {
                iArr = m1774a(iArr, iArr.length);
                this.f1817O = iArr;
            }
            iArr[i4] = i3;
            i4++;
        }
        AbstractC0501f m1826a = this.f1816N.m1826a(iArr, i4);
        return m1826a == null ? m1769a(iArr, i4, i2) : m1826a;
    }

    /* renamed from: j */
    protected EnumC0522l m1804j(int i) {
        switch (i) {
            case 39:
                if (m1911a(EnumC0519i.ALLOW_SINGLE_QUOTES)) {
                    return m1790I();
                }
                break;
            case 43:
                if (this.f1713d >= this.f1714e && !mo1626r()) {
                    m1637C();
                }
                byte[] bArr = this.f1820R;
                int i2 = this.f1713d;
                this.f1713d = i2 + 1;
                return m1794a(bArr[i2] & 255, false);
            case 73:
                m1797a("Infinity", 1);
                if (!m1911a(EnumC0519i.ALLOW_NON_NUMERIC_NUMBERS)) {
                    m1657f("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                } else {
                    return m1611a("Infinity", Double.POSITIVE_INFINITY);
                }
            case 78:
                m1797a("NaN", 1);
                if (!m1911a(EnumC0519i.ALLOW_NON_NUMERIC_NUMBERS)) {
                    m1657f("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
                    break;
                } else {
                    return m1611a("NaN", Double.NaN);
                }
        }
        if (Character.isJavaIdentifierStart(i)) {
            m1798a("" + ((char) i), "('true', 'false' or 'null')");
        }
        m1649b(i, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
    }

    /* renamed from: k */
    protected int m1805k(int i) {
        char c;
        if (i >= 0) {
            return i;
        }
        if ((i & 224) == 192) {
            i &= 31;
            c = 1;
        } else if ((i & 240) == 224) {
            i &= 15;
            c = 2;
        } else if ((i & 248) == 240) {
            i &= 7;
            c = 3;
        } else {
            m1807m(i & 255);
            c = 1;
        }
        int m1766S = m1766S();
        if ((m1766S & 192) != 128) {
            m1808n(m1766S & 255);
        }
        int i2 = (i << 6) | (m1766S & 63);
        if (c <= 1) {
            return i2;
        }
        int m1766S2 = m1766S();
        if ((m1766S2 & 192) != 128) {
            m1808n(m1766S2 & 255);
        }
        int i3 = (i2 << 6) | (m1766S2 & 63);
        if (c <= 2) {
            return i3;
        }
        int m1766S3 = m1766S();
        if ((m1766S3 & 192) != 128) {
            m1808n(m1766S3 & 255);
        }
        return (i3 << 6) | (m1766S3 & 63);
    }

    /* renamed from: l */
    protected void m1806l(int i) {
        if (i < 32) {
            m1653d(i);
        }
        m1807m(i);
    }

    /* renamed from: m */
    protected void m1807m(int i) {
        m1657f("Invalid UTF-8 start byte 0x" + Integer.toHexString(i));
    }

    /* renamed from: n */
    protected void m1808n(int i) {
        m1657f("Invalid UTF-8 middle byte 0x" + Integer.toHexString(i));
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: p */
    public String mo1757p() {
        if (this.f1728K != EnumC0522l.VALUE_STRING) {
            return super.mo1644a((String) null);
        }
        if (this.f1818P) {
            this.f1818P = false;
            m1788G();
        }
        return this.f1723n.m1900f();
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: r */
    protected final boolean mo1626r() {
        this.f1715f += this.f1714e;
        this.f1717h -= this.f1714e;
        if (this.f1819Q == null) {
            return false;
        }
        int read = this.f1819Q.read(this.f1820R, 0, this.f1820R.length);
        if (read > 0) {
            this.f1713d = 0;
            this.f1714e = read;
            return true;
        }
        mo1627s();
        if (read == 0) {
            throw new IOException("InputStream.read() returned 0 characters when trying to read " + this.f1820R.length + " bytes");
        }
        return false;
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: s */
    protected void mo1627s() {
        if (this.f1819Q != null) {
            if (this.f1711b.m1684c() || m1911a(EnumC0519i.AUTO_CLOSE_SOURCE)) {
                this.f1819Q.close();
            }
            this.f1819Q = null;
        }
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0478a
    /* renamed from: t */
    protected void mo1628t() {
        byte[] bArr;
        super.mo1628t();
        this.f1816N.m1830b();
        if (!this.f1821S || (bArr = this.f1820R) == null) {
            return;
        }
        this.f1820R = null;
        this.f1711b.m1678a(bArr);
    }
}
