package com.alensw.p023b.p031h;

/* renamed from: com.alensw.b.h.m */
/* loaded from: classes.dex */
public class C0717m {

    /* renamed from: a */
    public static int f2721a = 8;

    /* renamed from: b */
    public static int f2722b = 256;

    /* renamed from: a */
    public static final int m2868a(int i) {
        return i & 15;
    }

    /* renamed from: a */
    public static final int m2869a(int i, int i2, int i3) {
        return ((i >> (f2721a + i3)) << 4) | i3 | ((i2 >> (f2721a + i3)) << 18);
    }

    /* renamed from: b */
    public static final int m2870b(int i) {
        return 1 << (i & 15);
    }

    /* renamed from: c */
    public static final int m2871c(int i) {
        return ((i >> 4) & 16383) << ((i & 15) + f2721a);
    }

    /* renamed from: d */
    public static final int m2872d(int i) {
        return ((i >> 18) & 16383) << ((i & 15) + f2721a);
    }

    /* renamed from: e */
    public static String m2873e(int i) {
        return "(" + m2871c(i) + "," + m2872d(i) + ")x" + m2870b(i);
    }
}
