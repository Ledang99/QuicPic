package com.p014a.p015a.p016a;

import org.apache.commons.codec.CharEncoding;

/* renamed from: com.a.a.a.a */
/* loaded from: classes.dex */
public enum EnumC0477a {
    UTF8("UTF-8", false, 8),
    UTF16_BE(CharEncoding.UTF_16BE, true, 16),
    UTF16_LE(CharEncoding.UTF_16LE, false, 16),
    UTF32_BE("UTF-32BE", true, 32),
    UTF32_LE("UTF-32LE", false, 32);


    /* renamed from: f */
    protected final String f1690f;

    /* renamed from: g */
    protected final boolean f1691g;

    /* renamed from: h */
    protected final int f1692h;

    EnumC0477a(String str, boolean z, int i) {
        this.f1690f = str;
        this.f1691g = z;
        this.f1692h = i;
    }

    /* renamed from: a */
    public String m1605a() {
        return this.f1690f;
    }

    /* renamed from: b */
    public boolean m1606b() {
        return this.f1691g;
    }

    /* renamed from: c */
    public int m1607c() {
        return this.f1692h;
    }
}
