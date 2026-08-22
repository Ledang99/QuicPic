package com.p014a.p015a.p016a;

/* renamed from: com.a.a.a.c */
/* loaded from: classes.dex */
public enum EnumC0489c {
    INTERN_FIELD_NAMES(true),
    CANONICALIZE_FIELD_NAMES(true);


    /* renamed from: c */
    private final boolean f1784c;

    EnumC0489c(boolean z) {
        this.f1784c = z;
    }

    /* renamed from: a */
    public static int m1703a() {
        int i = 0;
        for (EnumC0489c enumC0489c : values()) {
            if (enumC0489c.m1704b()) {
                i |= enumC0489c.m1705c();
            }
        }
        return i;
    }

    /* renamed from: b */
    public boolean m1704b() {
        return this.f1784c;
    }

    /* renamed from: c */
    public int m1705c() {
        return 1 << ordinal();
    }
}
