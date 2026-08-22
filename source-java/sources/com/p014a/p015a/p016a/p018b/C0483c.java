package com.p014a.p015a.p016a.p018b;

import com.p014a.p015a.p016a.EnumC0477a;
import com.p014a.p015a.p016a.p021e.C0508b;
import com.p014a.p015a.p016a.p021e.C0514h;
import com.p014a.p015a.p016a.p021e.EnumC0509c;
import com.p014a.p015a.p016a.p021e.EnumC0510d;

/* renamed from: com.a.a.a.b.c */
/* loaded from: classes.dex */
public class C0483c {

    /* renamed from: a */
    protected final Object f1758a;

    /* renamed from: b */
    protected EnumC0477a f1759b;

    /* renamed from: c */
    protected final boolean f1760c;

    /* renamed from: d */
    protected final C0508b f1761d;

    /* renamed from: e */
    protected byte[] f1762e = null;

    /* renamed from: f */
    protected byte[] f1763f = null;

    /* renamed from: g */
    protected byte[] f1764g = null;

    /* renamed from: h */
    protected char[] f1765h = null;

    /* renamed from: i */
    protected char[] f1766i = null;

    /* renamed from: j */
    protected char[] f1767j = null;

    public C0483c(C0508b c0508b, Object obj, boolean z) {
        this.f1761d = c0508b;
        this.f1758a = obj;
        this.f1760c = z;
    }

    /* renamed from: g */
    private IllegalArgumentException m1674g() {
        return new IllegalArgumentException("Trying to release buffer not owned by the context");
    }

    /* renamed from: a */
    public Object m1675a() {
        return this.f1758a;
    }

    /* renamed from: a */
    public void m1676a(EnumC0477a enumC0477a) {
        this.f1759b = enumC0477a;
    }

    /* renamed from: a */
    protected void m1677a(Object obj) {
        if (obj != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
    }

    /* renamed from: a */
    public void m1678a(byte[] bArr) {
        if (bArr != null) {
            m1679a(bArr, this.f1762e);
            this.f1762e = null;
            this.f1761d.m1875a(EnumC0509c.READ_IO_BUFFER, bArr);
        }
    }

    /* renamed from: a */
    protected void m1679a(byte[] bArr, byte[] bArr2) {
        if (bArr != bArr2 && bArr.length <= bArr2.length) {
            throw m1674g();
        }
    }

    /* renamed from: a */
    public void m1680a(char[] cArr) {
        if (cArr != null) {
            m1681a(cArr, this.f1765h);
            this.f1765h = null;
            this.f1761d.m1876a(EnumC0510d.TOKEN_BUFFER, cArr);
        }
    }

    /* renamed from: a */
    protected void m1681a(char[] cArr, char[] cArr2) {
        if (cArr != cArr2 && cArr.length <= cArr2.length) {
            throw m1674g();
        }
    }

    /* renamed from: b */
    public EnumC0477a m1682b() {
        return this.f1759b;
    }

    /* renamed from: b */
    public void m1683b(char[] cArr) {
        if (cArr != null) {
            m1681a(cArr, this.f1767j);
            this.f1767j = null;
            this.f1761d.m1876a(EnumC0510d.NAME_COPY_BUFFER, cArr);
        }
    }

    /* renamed from: c */
    public boolean m1684c() {
        return this.f1760c;
    }

    /* renamed from: d */
    public C0514h m1685d() {
        return new C0514h(this.f1761d);
    }

    /* renamed from: e */
    public byte[] m1686e() {
        m1677a((Object) this.f1762e);
        byte[] m1877a = this.f1761d.m1877a(EnumC0509c.READ_IO_BUFFER);
        this.f1762e = m1877a;
        return m1877a;
    }

    /* renamed from: f */
    public char[] m1687f() {
        m1677a((Object) this.f1765h);
        char[] m1879a = this.f1761d.m1879a(EnumC0510d.TOKEN_BUFFER);
        this.f1765h = m1879a;
        return m1879a;
    }
}
