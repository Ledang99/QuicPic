package com.p014a.p015a.p016a;

/* renamed from: com.a.a.a.e */
/* loaded from: classes.dex */
public enum EnumC0506e {
    AUTO_CLOSE_TARGET(true),
    AUTO_CLOSE_JSON_CONTENT(true),
    QUOTE_FIELD_NAMES(true),
    QUOTE_NON_NUMERIC_NUMBERS(true),
    WRITE_NUMBERS_AS_STRINGS(false),
    WRITE_BIGDECIMAL_AS_PLAIN(false),
    FLUSH_PASSED_TO_STREAM(true),
    ESCAPE_NON_ASCII(false),
    STRICT_DUPLICATE_DETECTION(false);


    /* renamed from: j */
    private final boolean f1886j;

    /* renamed from: k */
    private final int f1887k = 1 << ordinal();

    EnumC0506e(boolean z) {
        this.f1886j = z;
    }

    /* renamed from: a */
    public static int m1864a() {
        int i = 0;
        for (EnumC0506e enumC0506e : values()) {
            if (enumC0506e.m1865b()) {
                i |= enumC0506e.m1866c();
            }
        }
        return i;
    }

    /* renamed from: b */
    public boolean m1865b() {
        return this.f1886j;
    }

    /* renamed from: c */
    public int m1866c() {
        return this.f1887k;
    }
}
