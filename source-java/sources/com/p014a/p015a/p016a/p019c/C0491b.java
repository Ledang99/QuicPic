package com.p014a.p015a.p016a.p019c;

import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.C0516f;
import java.util.HashSet;

/* renamed from: com.a.a.a.c.b */
/* loaded from: classes.dex */
public class C0491b {

    /* renamed from: a */
    protected final Object f1794a;

    /* renamed from: b */
    protected String f1795b;

    /* renamed from: c */
    protected String f1796c;

    /* renamed from: d */
    protected HashSet f1797d;

    private C0491b(Object obj) {
        this.f1794a = obj;
    }

    /* renamed from: a */
    public static C0491b m1714a(AbstractC0518h abstractC0518h) {
        return new C0491b(abstractC0518h);
    }

    /* renamed from: a */
    public C0491b m1715a() {
        return new C0491b(this.f1794a);
    }

    /* renamed from: a */
    public boolean m1716a(String str) {
        if (this.f1795b == null) {
            this.f1795b = str;
            return false;
        }
        if (str.equals(this.f1795b)) {
            return true;
        }
        if (this.f1796c == null) {
            this.f1796c = str;
            return false;
        }
        if (str.equals(this.f1796c)) {
            return true;
        }
        if (this.f1797d == null) {
            this.f1797d = new HashSet(16);
            this.f1797d.add(this.f1795b);
            this.f1797d.add(this.f1796c);
        }
        return !this.f1797d.add(str);
    }

    /* renamed from: b */
    public void m1717b() {
        this.f1795b = null;
        this.f1796c = null;
        this.f1797d = null;
    }

    /* renamed from: c */
    public C0516f m1718c() {
        if (this.f1794a instanceof AbstractC0518h) {
            return ((AbstractC0518h) this.f1794a).mo1620e();
        }
        return null;
    }
}
