package com.p014a.p015a.p016a.p020d;

/* renamed from: com.a.a.a.d.e */
/* loaded from: classes.dex */
final class C0500e {

    /* renamed from: a */
    private final String f1862a;

    /* renamed from: b */
    private final C0500e f1863b;

    /* renamed from: c */
    private final int f1864c;

    public C0500e(String str, C0500e c0500e) {
        this.f1862a = str;
        this.f1863b = c0500e;
        this.f1864c = c0500e == null ? 1 : c0500e.f1864c + 1;
    }

    /* renamed from: a */
    public String m1855a() {
        return this.f1862a;
    }

    /* renamed from: a */
    public String m1856a(char[] cArr, int i, int i2) {
        String str = this.f1862a;
        C0500e c0500e = this.f1863b;
        while (true) {
            if (str.length() == i2) {
                int i3 = 0;
                while (str.charAt(i3) == cArr[i + i3] && (i3 = i3 + 1) < i2) {
                }
                if (i3 == i2) {
                    return str;
                }
            }
            if (c0500e == null) {
                return null;
            }
            str = c0500e.m1855a();
            c0500e = c0500e.m1857b();
        }
    }

    /* renamed from: b */
    public C0500e m1857b() {
        return this.f1863b;
    }

    /* renamed from: c */
    public int m1858c() {
        return this.f1864c;
    }
}
