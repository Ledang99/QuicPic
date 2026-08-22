package com.p014a.p015a.p016a.p017a;

import com.p014a.p015a.p016a.C0516f;
import com.p014a.p015a.p016a.EnumC0519i;
import com.p014a.p015a.p016a.EnumC0522l;
import com.p014a.p015a.p016a.p018b.C0483c;
import com.p014a.p015a.p016a.p018b.C0486f;
import com.p014a.p015a.p016a.p019c.C0491b;
import com.p014a.p015a.p016a.p019c.C0492c;
import com.p014a.p015a.p016a.p021e.C0511e;
import com.p014a.p015a.p016a.p021e.C0514h;
import java.math.BigDecimal;
import java.math.BigInteger;

/* renamed from: com.a.a.a.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC0478a extends AbstractC0479b {

    /* renamed from: s */
    static final BigInteger f1693s = BigInteger.valueOf(-2147483648L);

    /* renamed from: t */
    static final BigInteger f1694t = BigInteger.valueOf(2147483647L);

    /* renamed from: u */
    static final BigInteger f1695u = BigInteger.valueOf(Long.MIN_VALUE);

    /* renamed from: v */
    static final BigInteger f1696v = BigInteger.valueOf(Long.MAX_VALUE);

    /* renamed from: w */
    static final BigDecimal f1697w = new BigDecimal(f1695u);

    /* renamed from: x */
    static final BigDecimal f1698x = new BigDecimal(f1696v);

    /* renamed from: y */
    static final BigDecimal f1699y = new BigDecimal(f1693s);

    /* renamed from: z */
    static final BigDecimal f1700z = new BigDecimal(f1694t);

    /* renamed from: B */
    protected int f1702B;

    /* renamed from: C */
    protected long f1703C;

    /* renamed from: D */
    protected double f1704D;

    /* renamed from: E */
    protected BigInteger f1705E;

    /* renamed from: F */
    protected BigDecimal f1706F;

    /* renamed from: G */
    protected boolean f1707G;

    /* renamed from: H */
    protected int f1708H;

    /* renamed from: I */
    protected int f1709I;

    /* renamed from: J */
    protected int f1710J;

    /* renamed from: b */
    protected final C0483c f1711b;

    /* renamed from: c */
    protected boolean f1712c;

    /* renamed from: l */
    protected C0492c f1721l;

    /* renamed from: m */
    protected EnumC0522l f1722m;

    /* renamed from: n */
    protected final C0514h f1723n;

    /* renamed from: r */
    protected byte[] f1727r;

    /* renamed from: d */
    protected int f1713d = 0;

    /* renamed from: e */
    protected int f1714e = 0;

    /* renamed from: f */
    protected long f1715f = 0;

    /* renamed from: g */
    protected int f1716g = 1;

    /* renamed from: h */
    protected int f1717h = 0;

    /* renamed from: i */
    protected long f1718i = 0;

    /* renamed from: j */
    protected int f1719j = 1;

    /* renamed from: k */
    protected int f1720k = 0;

    /* renamed from: o */
    protected char[] f1724o = null;

    /* renamed from: p */
    protected boolean f1725p = false;

    /* renamed from: q */
    protected C0511e f1726q = null;

    /* renamed from: A */
    protected int f1701A = 0;

    protected AbstractC0478a(C0483c c0483c, int i) {
        this.f1929a = i;
        this.f1711b = c0483c;
        this.f1723n = c0483c.m1685d();
        this.f1721l = C0492c.m1719a(EnumC0519i.STRICT_DUPLICATE_DETECTION.m1919a(i) ? C0491b.m1714a(this) : null);
    }

    /* renamed from: a */
    private void m1608a(int i, char[] cArr, int i2, int i3) {
        String m1900f = this.f1723n.m1900f();
        try {
            if (C0486f.m1696a(cArr, i2, i3, this.f1707G)) {
                this.f1703C = Long.parseLong(m1900f);
                this.f1701A = 2;
            } else {
                this.f1705E = new BigInteger(m1900f);
                this.f1701A = 4;
            }
        } catch (NumberFormatException e) {
            m1645a("Malformed numeric value '" + m1900f + "'", e);
        }
    }

    /* renamed from: f */
    private void m1609f(int i) {
        try {
            if (i == 16) {
                this.f1706F = this.f1723n.m1902h();
                this.f1701A = 16;
            } else {
                this.f1704D = this.f1723n.m1903i();
                this.f1701A = 8;
            }
        } catch (NumberFormatException e) {
            m1645a("Malformed numeric value '" + this.f1723n.m1900f() + "'", e);
        }
    }

    /* renamed from: A */
    protected char mo1610A() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    protected final EnumC0522l m1611a(String str, double d) {
        this.f1723n.m1892a(str);
        this.f1704D = d;
        this.f1701A = 8;
        return EnumC0522l.VALUE_NUMBER_FLOAT;
    }

    /* renamed from: a */
    protected final EnumC0522l m1612a(boolean z, int i) {
        this.f1707G = z;
        this.f1708H = i;
        this.f1709I = 0;
        this.f1710J = 0;
        this.f1701A = 0;
        return EnumC0522l.VALUE_NUMBER_INT;
    }

    /* renamed from: a */
    protected final EnumC0522l m1613a(boolean z, int i, int i2, int i3) {
        return (i2 >= 1 || i3 >= 1) ? m1616b(z, i, i2, i3) : m1612a(z, i);
    }

    /* renamed from: a */
    protected void m1614a(int i, char c) {
        m1657f("Unexpected close marker '" + ((char) i) + "': expected '" + c + "' (for " + this.f1721l.m1927d() + " starting at " + ("" + this.f1721l.m1722a(this.f1711b.m1675a())) + ")");
    }

    /* renamed from: a */
    protected void m1615a(int i, String str) {
        String str2 = "Unexpected character (" + m1635e(i) + ") in numeric value";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        m1657f(str2);
    }

    /* renamed from: b */
    protected final EnumC0522l m1616b(boolean z, int i, int i2, int i3) {
        this.f1707G = z;
        this.f1708H = i;
        this.f1709I = i2;
        this.f1710J = i3;
        this.f1701A = 0;
        return EnumC0522l.VALUE_NUMBER_FLOAT;
    }

    /* renamed from: b */
    protected void m1617b(int i) {
        if (this.f1728K != EnumC0522l.VALUE_NUMBER_INT) {
            if (this.f1728K == EnumC0522l.VALUE_NUMBER_FLOAT) {
                m1609f(i);
                return;
            } else {
                m1657f("Current token (" + this.f1728K + ") not numeric, can not use numeric value accessors");
                return;
            }
        }
        char[] m1899e = this.f1723n.m1899e();
        int m1898d = this.f1723n.m1898d();
        int i2 = this.f1708H;
        if (this.f1707G) {
            m1898d++;
        }
        if (i2 <= 9) {
            int m1693a = C0486f.m1693a(m1899e, m1898d, i2);
            if (this.f1707G) {
                m1693a = -m1693a;
            }
            this.f1702B = m1693a;
            this.f1701A = 1;
            return;
        }
        if (i2 > 18) {
            m1608a(i, m1899e, m1898d, i2);
            return;
        }
        long m1697b = C0486f.m1697b(m1899e, m1898d, i2);
        if (this.f1707G) {
            m1697b = -m1697b;
        }
        if (i2 == 10) {
            if (this.f1707G) {
                if (m1697b >= -2147483648L) {
                    this.f1702B = (int) m1697b;
                    this.f1701A = 1;
                    return;
                }
            } else if (m1697b <= 2147483647L) {
                this.f1702B = (int) m1697b;
                this.f1701A = 1;
                return;
            }
        }
        this.f1703C = m1697b;
        this.f1701A = 2;
    }

    /* renamed from: c */
    protected void m1618c(String str) {
        m1657f("Invalid numeric value: " + str);
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f1712c) {
            return;
        }
        this.f1712c = true;
        try {
            mo1627s();
        } finally {
            mo1628t();
        }
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: d */
    public String mo1619d() {
        return (this.f1728K == EnumC0522l.START_OBJECT || this.f1728K == EnumC0522l.START_ARRAY) ? this.f1721l.m1727g().m1726f() : this.f1721l.m1726f();
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: e */
    public C0516f mo1620e() {
        return new C0516f(this.f1711b.m1675a(), -1L, this.f1715f + this.f1713d, this.f1716g, (this.f1713d - this.f1717h) + 1);
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: g */
    public int mo1621g() {
        if ((this.f1701A & 1) == 0) {
            if (this.f1701A == 0) {
                m1617b(1);
            }
            if ((this.f1701A & 1) == 0) {
                m1630v();
            }
        }
        return this.f1702B;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: h */
    public long mo1622h() {
        if ((this.f1701A & 2) == 0) {
            if (this.f1701A == 0) {
                m1617b(2);
            }
            if ((this.f1701A & 2) == 0) {
                m1631w();
            }
        }
        return this.f1703C;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: i */
    public double mo1623i() {
        if ((this.f1701A & 8) == 0) {
            if (this.f1701A == 0) {
                m1617b(8);
            }
            if ((this.f1701A & 8) == 0) {
                m1632x();
            }
        }
        return this.f1704D;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: k */
    public Object mo1624k() {
        return null;
    }

    /* renamed from: q */
    protected final void m1625q() {
        if (mo1626r()) {
            return;
        }
        m1636B();
    }

    /* renamed from: r */
    protected abstract boolean mo1626r();

    /* renamed from: s */
    protected abstract void mo1627s();

    /* renamed from: t */
    protected void mo1628t() {
        this.f1723n.m1890a();
        char[] cArr = this.f1724o;
        if (cArr != null) {
            this.f1724o = null;
            this.f1711b.m1683b(cArr);
        }
    }

    @Override // com.p014a.p015a.p016a.p017a.AbstractC0479b
    /* renamed from: u */
    protected void mo1629u() {
        if (this.f1721l.m1925b()) {
            return;
        }
        m1655e(": expected close marker for " + this.f1721l.m1927d() + " (from " + this.f1721l.m1722a(this.f1711b.m1675a()) + ")");
    }

    /* renamed from: v */
    protected void m1630v() {
        if ((this.f1701A & 2) != 0) {
            int i = (int) this.f1703C;
            if (i != this.f1703C) {
                m1657f("Numeric value (" + mo1656f() + ") out of range of int");
            }
            this.f1702B = i;
        } else if ((this.f1701A & 4) != 0) {
            if (f1693s.compareTo(this.f1705E) > 0 || f1694t.compareTo(this.f1705E) < 0) {
                m1633y();
            }
            this.f1702B = this.f1705E.intValue();
        } else if ((this.f1701A & 8) != 0) {
            if (this.f1704D < -2.147483648E9d || this.f1704D > 2.147483647E9d) {
                m1633y();
            }
            this.f1702B = (int) this.f1704D;
        } else if ((this.f1701A & 16) != 0) {
            if (f1699y.compareTo(this.f1706F) > 0 || f1700z.compareTo(this.f1706F) < 0) {
                m1633y();
            }
            this.f1702B = this.f1706F.intValue();
        } else {
            m1638D();
        }
        this.f1701A |= 1;
    }

    /* renamed from: w */
    protected void m1631w() {
        if ((this.f1701A & 1) != 0) {
            this.f1703C = this.f1702B;
        } else if ((this.f1701A & 4) != 0) {
            if (f1695u.compareTo(this.f1705E) > 0 || f1696v.compareTo(this.f1705E) < 0) {
                m1634z();
            }
            this.f1703C = this.f1705E.longValue();
        } else if ((this.f1701A & 8) != 0) {
            if (this.f1704D < -9.223372036854776E18d || this.f1704D > 9.223372036854776E18d) {
                m1634z();
            }
            this.f1703C = (long) this.f1704D;
        } else if ((this.f1701A & 16) != 0) {
            if (f1697w.compareTo(this.f1706F) > 0 || f1698x.compareTo(this.f1706F) < 0) {
                m1634z();
            }
            this.f1703C = this.f1706F.longValue();
        } else {
            m1638D();
        }
        this.f1701A |= 2;
    }

    /* renamed from: x */
    protected void m1632x() {
        if ((this.f1701A & 16) != 0) {
            this.f1704D = this.f1706F.doubleValue();
        } else if ((this.f1701A & 4) != 0) {
            this.f1704D = this.f1705E.doubleValue();
        } else if ((this.f1701A & 2) != 0) {
            this.f1704D = this.f1703C;
        } else if ((this.f1701A & 1) != 0) {
            this.f1704D = this.f1702B;
        } else {
            m1638D();
        }
        this.f1701A |= 8;
    }

    /* renamed from: y */
    protected void m1633y() {
        m1657f("Numeric value (" + mo1656f() + ") out of range of int (-2147483648 - 2147483647)");
    }

    /* renamed from: z */
    protected void m1634z() {
        m1657f("Numeric value (" + mo1656f() + ") out of range of long (-9223372036854775808 - 9223372036854775807)");
    }
}
