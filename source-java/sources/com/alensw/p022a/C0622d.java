package com.alensw.p022a;

import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* renamed from: com.alensw.a.d */
/* loaded from: classes.dex */
public class C0622d {

    /* renamed from: a */
    public String f2403a;

    /* renamed from: b */
    public String f2404b;

    /* renamed from: c */
    public char f2405c;

    /* renamed from: d */
    public int f2406d;

    /* renamed from: e */
    public int f2407e;

    /* renamed from: f */
    public long f2408f;

    public C0622d(File file, char c, int i) {
        this.f2403a = file.getParent();
        this.f2404b = file.getName();
        this.f2405c = c;
        this.f2406d = i;
        this.f2407e = i;
    }

    public C0622d(String str, String str2, char c, int i, int i2, long j) {
        this.f2403a = str;
        this.f2404b = str2;
        this.f2405c = c;
        this.f2406d = i;
        this.f2407e = i2 == 0 ? i : i2;
        this.f2408f = j;
    }

    /* renamed from: a */
    public String m2351a() {
        return C0742b.m2993b(this.f2403a, this.f2404b);
    }

    /* renamed from: a */
    public void m2352a(C0622d c0622d) {
        this.f2403a = c0622d.f2403a;
        this.f2404b = c0622d.f2404b;
        this.f2405c = c0622d.f2405c;
        this.f2406d = c0622d.f2406d;
        this.f2407e = c0622d.f2407e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0622d)) {
            return false;
        }
        C0622d c0622d = (C0622d) obj;
        return this.f2406d == c0622d.f2406d && (this.f2403a == c0622d.f2403a || this.f2403a.equals(c0622d.f2403a)) && (this.f2404b == c0622d.f2404b || this.f2404b.equals(c0622d.f2404b));
    }

    public int hashCode() {
        return this.f2403a.hashCode() + this.f2404b.hashCode() + this.f2406d;
    }

    public String toString() {
        return this.f2403a + '/' + this.f2404b;
    }
}
