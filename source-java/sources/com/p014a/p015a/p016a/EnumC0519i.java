package com.p014a.p015a.p016a;

/* renamed from: com.a.a.a.i */
/* loaded from: classes.dex */
public enum EnumC0519i {
    AUTO_CLOSE_SOURCE(true),
    ALLOW_COMMENTS(false),
    ALLOW_YAML_COMMENTS(false),
    ALLOW_UNQUOTED_FIELD_NAMES(false),
    ALLOW_SINGLE_QUOTES(false),
    ALLOW_UNQUOTED_CONTROL_CHARS(false),
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false),
    ALLOW_NUMERIC_LEADING_ZEROS(false),
    ALLOW_NON_NUMERIC_NUMBERS(false),
    STRICT_DUPLICATE_DETECTION(false);


    /* renamed from: k */
    private final boolean f1941k;

    /* renamed from: l */
    private final int f1942l = 1 << ordinal();

    EnumC0519i(boolean z) {
        this.f1941k = z;
    }

    /* renamed from: a */
    public static int m1918a() {
        int i = 0;
        for (EnumC0519i enumC0519i : values()) {
            if (enumC0519i.m1920b()) {
                i |= enumC0519i.m1921c();
            }
        }
        return i;
    }

    /* renamed from: a */
    public boolean m1919a(int i) {
        return (this.f1942l & i) != 0;
    }

    /* renamed from: b */
    public boolean m1920b() {
        return this.f1941k;
    }

    /* renamed from: c */
    public int m1921c() {
        return 1 << ordinal();
    }
}
