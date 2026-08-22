package com.p014a.p015a.p016a.p017a;

import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.C0517g;
import com.p014a.p015a.p016a.EnumC0519i;
import com.p014a.p015a.p016a.EnumC0522l;
import com.p014a.p015a.p016a.p021e.C0515i;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.a.a.a.a.b */
/* loaded from: classes.dex */
public abstract class AbstractC0479b extends AbstractC0518h {

    /* renamed from: K */
    protected EnumC0522l f1728K;

    protected AbstractC0479b() {
    }

    /* renamed from: e */
    protected static final String m1635e(int i) {
        char c = (char) i;
        return Character.isISOControl(c) ? "(CTRL-CHAR, code " + i + ")" : i > 255 ? "'" + c + "' (code " + i + " / 0x" + Integer.toHexString(i) + ")" : "'" + c + "' (code " + i + ")";
    }

    /* renamed from: B */
    protected void m1636B() {
        m1655e(" in " + this.f1728K);
    }

    /* renamed from: C */
    protected void m1637C() {
        m1655e(" in a value");
    }

    /* renamed from: D */
    protected final void m1638D() {
        C0515i.m1909a();
    }

    /* renamed from: a */
    protected char m1639a(char c) {
        if (!m1911a(EnumC0519i.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER) && (c != '\'' || !m1911a(EnumC0519i.ALLOW_SINGLE_QUOTES))) {
            m1657f("Unrecognized character escape " + m1635e(c));
        }
        return c;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public double mo1640a(double d) {
        EnumC0522l enumC0522l = this.f1728K;
        if (enumC0522l == null) {
            return d;
        }
        switch (enumC0522l.m1929a()) {
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                String mo1656f = mo1656f();
                if (!m1654d(mo1656f)) {
                    break;
                } else {
                    break;
                }
            case 12:
                Object k = mo1624k();
                if (k instanceof Number) {
                    break;
                }
                break;
        }
        return d;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public int mo1641a(int i) {
        EnumC0522l enumC0522l = this.f1728K;
        if (enumC0522l == null) {
            return i;
        }
        switch (enumC0522l.m1929a()) {
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                String mo1656f = mo1656f();
                if (!m1654d(mo1656f)) {
                    break;
                } else {
                    break;
                }
            case 12:
                Object k = mo1624k();
                if (k instanceof Number) {
                    break;
                }
                break;
        }
        return i;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public long mo1642a(long j) {
        EnumC0522l enumC0522l = this.f1728K;
        if (enumC0522l == null) {
            return j;
        }
        switch (enumC0522l.m1929a()) {
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                String mo1656f = mo1656f();
                if (!m1654d(mo1656f)) {
                    break;
                } else {
                    break;
                }
            case 12:
                Object k = mo1624k();
                if (k instanceof Number) {
                    break;
                }
                break;
        }
        return j;
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public abstract EnumC0522l mo1643a();

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public String mo1644a(String str) {
        return (this.f1728K == EnumC0522l.VALUE_STRING || !(this.f1728K == null || this.f1728K == EnumC0522l.VALUE_NULL || !this.f1728K.m1933e())) ? mo1656f() : str;
    }

    /* renamed from: a */
    protected final void m1645a(String str, Throwable th) {
        throw m1647b(str, th);
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: a */
    public boolean mo1646a(boolean z) {
        EnumC0522l enumC0522l = this.f1728K;
        if (enumC0522l != null) {
            switch (enumC0522l.m1929a()) {
                case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                    String trim = mo1656f().trim();
                    if ("true".equals(trim)) {
                        return true;
                    }
                    if ("false".equals(trim)) {
                        return false;
                    }
                    if (m1654d(trim)) {
                        return false;
                    }
                    break;
                case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                    return mo1621g() != 0;
                case 9:
                    return true;
                case 10:
                case 11:
                    return false;
                case 12:
                    Object k = mo1624k();
                    if (k instanceof Boolean) {
                        return ((Boolean) k).booleanValue();
                    }
                    break;
            }
        }
        return z;
    }

    /* renamed from: b */
    protected final C0517g m1647b(String str, Throwable th) {
        return new C0517g(str, mo1620e(), th);
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: b */
    public AbstractC0518h mo1648b() {
        if (this.f1728K == EnumC0522l.START_OBJECT || this.f1728K == EnumC0522l.START_ARRAY) {
            int i = 1;
            while (true) {
                EnumC0522l mo1643a = mo1643a();
                if (mo1643a != null) {
                    if (!mo1643a.m1931c()) {
                        if (mo1643a.m1932d() && i - 1 == 0) {
                            break;
                        }
                    } else {
                        i++;
                    }
                } else {
                    mo1629u();
                    break;
                }
            }
        }
        return this;
    }

    /* renamed from: b */
    protected void m1649b(int i, String str) {
        if (i < 0) {
            m1636B();
        }
        String str2 = "Unexpected character (" + m1635e(i) + ")";
        if (str != null) {
            str2 = str2 + ": " + str;
        }
        m1657f(str2);
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: c */
    public EnumC0522l mo1650c() {
        return this.f1728K;
    }

    /* renamed from: c */
    protected void m1651c(int i) {
        m1649b(i, "Expected space separating root-level values");
    }

    /* renamed from: c */
    protected void m1652c(int i, String str) {
        if (!m1911a(EnumC0519i.ALLOW_UNQUOTED_CONTROL_CHARS) || i >= 32) {
            m1657f("Illegal unquoted character (" + m1635e((char) i) + "): has to be escaped using backslash to be included in " + str);
        }
    }

    /* renamed from: d */
    protected void m1653d(int i) {
        m1657f("Illegal character (" + m1635e((char) i) + "): only regular white space (\\r, \\n, \\t) is allowed between tokens");
    }

    /* renamed from: d */
    protected boolean m1654d(String str) {
        return "null".equals(str);
    }

    /* renamed from: e */
    protected void m1655e(String str) {
        m1657f("Unexpected end-of-input" + str);
    }

    @Override // com.p014a.p015a.p016a.AbstractC0518h
    /* renamed from: f */
    public abstract String mo1656f();

    /* renamed from: f */
    protected final void m1657f(String str) {
        throw m1912b(str);
    }

    /* renamed from: u */
    protected abstract void mo1629u();
}
