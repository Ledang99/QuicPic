package com.p014a.p015a.p016a;

import java.io.Closeable;

/* renamed from: com.a.a.a.h */
/* loaded from: classes.dex */
public abstract class AbstractC0518h implements Closeable {

    /* renamed from: a */
    protected int f1929a;

    protected AbstractC0518h() {
    }

    /* renamed from: a */
    public double mo1640a(double d) {
        return d;
    }

    /* renamed from: a */
    public int mo1641a(int i) {
        return i;
    }

    /* renamed from: a */
    public long mo1642a(long j) {
        return j;
    }

    /* renamed from: a */
    public abstract EnumC0522l mo1643a();

    /* renamed from: a */
    public abstract String mo1644a(String str);

    /* renamed from: a */
    public boolean m1911a(EnumC0519i enumC0519i) {
        return (this.f1929a & enumC0519i.m1921c()) != 0;
    }

    /* renamed from: a */
    public boolean mo1646a(boolean z) {
        return z;
    }

    /* renamed from: b */
    protected C0517g m1912b(String str) {
        return new C0517g(str, mo1620e());
    }

    /* renamed from: b */
    public abstract AbstractC0518h mo1648b();

    /* renamed from: c */
    public abstract EnumC0522l mo1650c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close();

    /* renamed from: d */
    public abstract String mo1619d();

    /* renamed from: e */
    public abstract C0516f mo1620e();

    /* renamed from: f */
    public abstract String mo1656f();

    /* renamed from: g */
    public abstract int mo1621g();

    /* renamed from: h */
    public abstract long mo1622h();

    /* renamed from: i */
    public abstract double mo1623i();

    /* renamed from: j */
    public boolean m1913j() {
        EnumC0522l mo1650c = mo1650c();
        if (mo1650c == EnumC0522l.VALUE_TRUE) {
            return true;
        }
        if (mo1650c == EnumC0522l.VALUE_FALSE) {
            return false;
        }
        throw new C0517g("Current token (" + mo1650c + ") not of boolean type", mo1620e());
    }

    /* renamed from: k */
    public abstract Object mo1624k();

    /* renamed from: l */
    public int m1914l() {
        return mo1641a(0);
    }

    /* renamed from: m */
    public long m1915m() {
        return mo1642a(0L);
    }

    /* renamed from: n */
    public double m1916n() {
        return mo1640a(0.0d);
    }

    /* renamed from: o */
    public boolean m1917o() {
        return mo1646a(false);
    }

    /* renamed from: p */
    public String mo1757p() {
        return mo1644a((String) null);
    }
}
