package com.p014a.p015a.p016a;

/* renamed from: com.a.a.a.l */
/* loaded from: classes.dex */
public enum EnumC0522l {
    NOT_AVAILABLE(null, -1),
    START_OBJECT("{", 1),
    END_OBJECT("}", 2),
    START_ARRAY("[", 3),
    END_ARRAY("]", 4),
    FIELD_NAME(null, 5),
    VALUE_EMBEDDED_OBJECT(null, 12),
    VALUE_STRING(null, 6),
    VALUE_NUMBER_INT(null, 7),
    VALUE_NUMBER_FLOAT(null, 8),
    VALUE_TRUE("true", 9),
    VALUE_FALSE("false", 10),
    VALUE_NULL("null", 11);


    /* renamed from: n */
    final String f1960n;

    /* renamed from: o */
    final char[] f1961o;

    /* renamed from: p */
    final byte[] f1962p;

    /* renamed from: q */
    final int f1963q;

    /* renamed from: r */
    final boolean f1964r;

    /* renamed from: s */
    final boolean f1965s;

    /* renamed from: t */
    final boolean f1966t;

    /* renamed from: u */
    final boolean f1967u;

    /* renamed from: v */
    final boolean f1968v;

    EnumC0522l(String str, int i) {
        if (str == null) {
            this.f1960n = null;
            this.f1961o = null;
            this.f1962p = null;
        } else {
            this.f1960n = str;
            this.f1961o = str.toCharArray();
            int length = this.f1961o.length;
            this.f1962p = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                this.f1962p[i2] = (byte) this.f1961o[i2];
            }
        }
        this.f1963q = i;
        this.f1967u = i == 10 || i == 9;
        this.f1966t = i == 7 || i == 8;
        this.f1964r = i == 1 || i == 3;
        this.f1965s = i == 2 || i == 4;
        this.f1968v = (this.f1964r || this.f1965s || i == 5 || i == -1) ? false : true;
    }

    /* renamed from: a */
    public final int m1929a() {
        return this.f1963q;
    }

    /* renamed from: b */
    public final String m1930b() {
        return this.f1960n;
    }

    /* renamed from: c */
    public final boolean m1931c() {
        return this.f1964r;
    }

    /* renamed from: d */
    public final boolean m1932d() {
        return this.f1965s;
    }

    /* renamed from: e */
    public final boolean m1933e() {
        return this.f1968v;
    }
}
