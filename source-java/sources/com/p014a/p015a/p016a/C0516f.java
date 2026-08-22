package com.p014a.p015a.p016a;

import java.io.Serializable;

/* renamed from: com.a.a.a.f */
/* loaded from: classes.dex */
public class C0516f implements Serializable {

    /* renamed from: a */
    public static final C0516f f1923a = new C0516f("N/A", -1, -1, -1, -1);

    /* renamed from: b */
    final long f1924b;

    /* renamed from: c */
    final long f1925c;

    /* renamed from: d */
    final int f1926d;

    /* renamed from: e */
    final int f1927e;

    /* renamed from: f */
    final transient Object f1928f;

    public C0516f(Object obj, long j, int i, int i2) {
        this(obj, -1L, j, i, i2);
    }

    public C0516f(Object obj, long j, long j2, int i, int i2) {
        this.f1928f = obj;
        this.f1924b = j;
        this.f1925c = j2;
        this.f1926d = i;
        this.f1927e = i2;
    }

    /* renamed from: a */
    public long m1910a() {
        return this.f1924b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C0516f)) {
            return false;
        }
        C0516f c0516f = (C0516f) obj;
        if (this.f1928f == null) {
            if (c0516f.f1928f != null) {
                return false;
            }
        } else if (!this.f1928f.equals(c0516f.f1928f)) {
            return false;
        }
        return this.f1926d == c0516f.f1926d && this.f1927e == c0516f.f1927e && this.f1925c == c0516f.f1925c && m1910a() == c0516f.m1910a();
    }

    public int hashCode() {
        return ((((this.f1928f == null ? 1 : this.f1928f.hashCode()) ^ this.f1926d) + this.f1927e) ^ ((int) this.f1925c)) + ((int) this.f1924b);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(80);
        sb.append("[Source: ");
        if (this.f1928f == null) {
            sb.append("UNKNOWN");
        } else {
            sb.append(this.f1928f.toString());
        }
        sb.append("; line: ");
        sb.append(this.f1926d);
        sb.append(", column: ");
        sb.append(this.f1927e);
        sb.append(']');
        return sb.toString();
    }
}
