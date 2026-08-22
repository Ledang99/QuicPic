package com.p014a.p015a.p016a;

import com.p014a.p015a.p016a.p018b.AbstractC0484d;
import com.p014a.p015a.p016a.p018b.C0483c;
import com.p014a.p015a.p016a.p019c.C0490a;
import com.p014a.p015a.p016a.p020d.C0496a;
import com.p014a.p015a.p016a.p020d.C0499d;
import com.p014a.p015a.p016a.p021e.C0508b;
import com.p014a.p015a.p016a.p021e.C0512f;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.ref.SoftReference;

/* renamed from: com.a.a.a.b */
/* loaded from: classes.dex */
public class C0480b implements Serializable {

    /* renamed from: e */
    protected final transient C0499d f1734e;

    /* renamed from: f */
    protected final transient C0496a f1735f;

    /* renamed from: g */
    protected AbstractC0523m f1736g;

    /* renamed from: h */
    protected int f1737h;

    /* renamed from: i */
    protected int f1738i;

    /* renamed from: j */
    protected int f1739j;

    /* renamed from: k */
    protected AbstractC0484d f1740k;

    /* renamed from: l */
    protected InterfaceC0524n f1741l;

    /* renamed from: a */
    protected static final int f1729a = EnumC0489c.m1703a();

    /* renamed from: b */
    protected static final int f1730b = EnumC0519i.m1918a();

    /* renamed from: c */
    protected static final int f1731c = EnumC0506e.m1864a();

    /* renamed from: m */
    private static final InterfaceC0524n f1733m = C0512f.f1907a;

    /* renamed from: d */
    protected static final ThreadLocal f1732d = new ThreadLocal();

    public C0480b() {
        this((AbstractC0523m) null);
    }

    public C0480b(AbstractC0523m abstractC0523m) {
        this.f1734e = C0499d.m1837a();
        this.f1735f = C0496a.m1809a();
        this.f1737h = f1729a;
        this.f1738i = f1730b;
        this.f1739j = f1731c;
        this.f1741l = f1733m;
        this.f1736g = abstractC0523m;
    }

    /* renamed from: a */
    protected C0483c m1658a(Object obj, boolean z) {
        return new C0483c(m1659a(), obj, z);
    }

    /* renamed from: a */
    public C0508b m1659a() {
        SoftReference softReference = (SoftReference) f1732d.get();
        C0508b c0508b = softReference == null ? null : (C0508b) softReference.get();
        if (c0508b != null) {
            return c0508b;
        }
        C0508b c0508b2 = new C0508b();
        f1732d.set(new SoftReference(c0508b2));
        return c0508b2;
    }

    /* renamed from: a */
    public AbstractC0518h m1660a(InputStream inputStream) {
        C0483c m1658a = m1658a((Object) inputStream, false);
        if (this.f1740k != null) {
            inputStream = this.f1740k.m1688a(m1658a, inputStream);
        }
        return m1661a(inputStream, m1658a);
    }

    /* renamed from: a */
    protected AbstractC0518h m1661a(InputStream inputStream, C0483c c0483c) {
        return new C0490a(c0483c, inputStream).m1711a(this.f1738i, this.f1736g, this.f1735f, this.f1734e, m1662a(EnumC0489c.CANONICALIZE_FIELD_NAMES), m1662a(EnumC0489c.INTERN_FIELD_NAMES));
    }

    /* renamed from: a */
    public final boolean m1662a(EnumC0489c enumC0489c) {
        return (this.f1737h & enumC0489c.m1705c()) != 0;
    }
}
