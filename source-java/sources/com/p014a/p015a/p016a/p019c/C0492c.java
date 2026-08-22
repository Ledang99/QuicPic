package com.p014a.p015a.p016a.p019c;

import com.p014a.p015a.p016a.AbstractC0521k;
import com.p014a.p015a.p016a.C0516f;
import com.p014a.p015a.p016a.C0517g;
import com.p014a.p015a.p016a.p018b.C0482b;
import org.apache.http.message.TokenParser;

/* renamed from: com.a.a.a.c.c */
/* loaded from: classes.dex */
public final class C0492c extends AbstractC0521k {

    /* renamed from: c */
    protected final C0492c f1798c;

    /* renamed from: d */
    protected final C0491b f1799d;

    /* renamed from: e */
    protected int f1800e;

    /* renamed from: f */
    protected int f1801f;

    /* renamed from: g */
    protected String f1802g;

    /* renamed from: h */
    protected C0492c f1803h = null;

    public C0492c(C0492c c0492c, C0491b c0491b, int i, int i2, int i3) {
        this.f1798c = c0492c;
        this.f1799d = c0491b;
        this.f1944a = i;
        this.f1800e = i2;
        this.f1801f = i3;
        this.f1945b = -1;
    }

    /* renamed from: a */
    public static C0492c m1719a(C0491b c0491b) {
        return new C0492c(null, c0491b, 0, 1, 0);
    }

    /* renamed from: a */
    private void m1720a(C0491b c0491b, String str) {
        if (c0491b.m1716a(str)) {
            throw new C0517g("Duplicate field '" + str + "'", c0491b.m1718c());
        }
    }

    /* renamed from: a */
    public C0492c m1721a(int i, int i2) {
        C0492c c0492c = this.f1803h;
        if (c0492c == null) {
            c0492c = new C0492c(this, this.f1799d == null ? null : this.f1799d.m1715a(), 1, i, i2);
            this.f1803h = c0492c;
        } else {
            c0492c.m1723a(1, i, i2);
        }
        return c0492c;
    }

    /* renamed from: a */
    public C0516f m1722a(Object obj) {
        return new C0516f(obj, -1L, this.f1800e, this.f1801f);
    }

    /* renamed from: a */
    protected void m1723a(int i, int i2, int i3) {
        this.f1944a = i;
        this.f1945b = -1;
        this.f1800e = i2;
        this.f1801f = i3;
        this.f1802g = null;
        if (this.f1799d != null) {
            this.f1799d.m1717b();
        }
    }

    /* renamed from: a */
    public void m1724a(String str) {
        this.f1802g = str;
        if (this.f1799d != null) {
            m1720a(this.f1799d, str);
        }
    }

    /* renamed from: b */
    public C0492c m1725b(int i, int i2) {
        C0492c c0492c = this.f1803h;
        if (c0492c == null) {
            c0492c = new C0492c(this, this.f1799d == null ? null : this.f1799d.m1715a(), 2, i, i2);
            this.f1803h = c0492c;
        } else {
            c0492c.m1723a(2, i, i2);
        }
        return c0492c;
    }

    /* renamed from: f */
    public String m1726f() {
        return this.f1802g;
    }

    /* renamed from: g */
    public C0492c m1727g() {
        return this.f1798c;
    }

    /* renamed from: h */
    public boolean m1728h() {
        int i = this.f1945b + 1;
        this.f1945b = i;
        return this.f1944a != 0 && i > 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        switch (this.f1944a) {
            case 0:
                sb.append("/");
                break;
            case 1:
                sb.append('[');
                sb.append(m1928e());
                sb.append(']');
                break;
            case 2:
                sb.append('{');
                if (this.f1802g != null) {
                    sb.append(TokenParser.DQUOTE);
                    C0482b.m1667a(sb, this.f1802g);
                    sb.append(TokenParser.DQUOTE);
                } else {
                    sb.append('?');
                }
                sb.append('}');
                break;
        }
        return sb.toString();
    }
}
