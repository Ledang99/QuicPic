package com.alensw.bean;

/* renamed from: com.alensw.bean.n */
/* loaded from: classes.dex */
class C0757n {

    /* renamed from: a */
    long f2846a;

    /* renamed from: b */
    String f2847b;

    public C0757n(long j, String str) {
        this.f2846a = j;
        this.f2847b = str == null ? "" : str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        C0757n c0757n = (C0757n) obj;
        return this.f2846a == c0757n.f2846a && this.f2847b.equals(c0757n.f2847b);
    }

    public int hashCode() {
        return ((int) this.f2846a) + this.f2847b.hashCode();
    }
}
