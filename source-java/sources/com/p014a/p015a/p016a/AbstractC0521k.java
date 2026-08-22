package com.p014a.p015a.p016a;

/* renamed from: com.a.a.a.k */
/* loaded from: classes.dex */
public abstract class AbstractC0521k {

    /* renamed from: a */
    protected int f1944a;

    /* renamed from: b */
    protected int f1945b;

    protected AbstractC0521k() {
    }

    /* renamed from: a */
    public final boolean m1924a() {
        return this.f1944a == 1;
    }

    /* renamed from: b */
    public final boolean m1925b() {
        return this.f1944a == 0;
    }

    /* renamed from: c */
    public final boolean m1926c() {
        return this.f1944a == 2;
    }

    /* renamed from: d */
    public final String m1927d() {
        switch (this.f1944a) {
            case 0:
                return "ROOT";
            case 1:
                return "ARRAY";
            case 2:
                return "OBJECT";
            default:
                return "?";
        }
    }

    /* renamed from: e */
    public final int m1928e() {
        if (this.f1945b < 0) {
            return 0;
        }
        return this.f1945b;
    }
}
