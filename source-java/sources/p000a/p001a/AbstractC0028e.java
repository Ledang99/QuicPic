package p000a.p001a;

import java.io.IOException;
import p000a.p001a.p003b.C0021a;
import p000a.p006d.C0108c;
import p000a.p006d.C0140t;

/* renamed from: a.a.e */
/* loaded from: classes.dex */
public abstract class AbstractC0028e implements InterfaceC0026c {

    /* renamed from: g */
    private static int f59g = 1;

    /* renamed from: a */
    protected C0020b f60a;

    /* renamed from: b */
    protected int f61b = 4280;

    /* renamed from: c */
    protected int f62c = this.f61b;

    /* renamed from: d */
    protected int f63d = 0;

    /* renamed from: f */
    protected InterfaceC0031h f64f = null;

    /* renamed from: a */
    protected static C0020b m45a(String str) {
        char[] charArray = str.toCharArray();
        int i = 0;
        C0020b c0020b = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        char c = 0;
        do {
            char c2 = charArray[i];
            switch (c) {
                case 0:
                    if (c2 == ':') {
                        str3 = str.substring(i2, i);
                        i2 = i + 1;
                        c = 1;
                        break;
                    }
                    break;
                case 1:
                    if (c2 == '\\') {
                        i2 = i + 1;
                        break;
                    } else {
                        c = 2;
                    }
                case 2:
                    if (c2 == '[') {
                        if (str.substring(i2, i).trim().length() == 0) {
                        }
                        c0020b = new C0020b(str3, str.substring(i2, i));
                        i2 = i + 1;
                        c = 5;
                        break;
                    }
                    break;
                case 3:
                case 4:
                default:
                    i = charArray.length;
                    break;
                case 5:
                    if (c2 != '=') {
                        if (c2 == ',' || c2 == ']') {
                            String trim = str.substring(i2, i).trim();
                            if (str2 == null) {
                                str2 = "endpoint";
                            }
                            c0020b.m25a(str2, trim);
                            str2 = null;
                            break;
                        }
                    } else {
                        str2 = str.substring(i2, i).trim();
                        i2 = i + 1;
                        break;
                    }
                    break;
            }
            i++;
        } while (i < charArray.length);
        if (c0020b == null || c0020b.f42c == null) {
            throw new C0027d("Invalid binding URL: " + str);
        }
        return c0020b;
    }

    /* renamed from: a */
    public static AbstractC0028e m46a(String str, C0140t c0140t) {
        if (str.startsWith("ncacn_np:")) {
            return new C0030g(str, c0140t);
        }
        throw new C0027d("DCERPC transport not supported: " + str);
    }

    /* renamed from: a */
    public void m47a() {
        synchronized (this) {
            try {
                this.f63d = 1;
                m48a(new C0001a(this.f60a, this));
            } catch (IOException e) {
                this.f63d = 0;
                throw e;
            }
        }
    }

    /* renamed from: a */
    public void m48a(AbstractC0029f abstractC0029f) {
        boolean z;
        int i = 24;
        if (this.f63d == 0) {
            m47a();
        }
        boolean z2 = true;
        byte[] m297a = C0108c.m297a();
        try {
            C0021a c0021a = new C0021a(m297a, 0);
            abstractC0029f.f66g = 3;
            int i2 = f59g;
            f59g = i2 + 1;
            abstractC0029f.f68i = i2;
            abstractC0029f.mo20e(c0021a);
            if (this.f64f != null) {
                c0021a.m32b(0);
                this.f64f.m55a(c0021a);
            }
            int m33c = c0021a.m33c() - 24;
            int i3 = 0;
            while (i3 < m33c) {
                int i4 = m33c - i3;
                if (i4 + 24 > this.f61b) {
                    abstractC0029f.f66g &= -3;
                    i4 = this.f61b - 24;
                    z = z2;
                } else {
                    abstractC0029f.f66g |= 2;
                    abstractC0029f.f69j = i4;
                    z = false;
                }
                abstractC0029f.f67h = i4 + 24;
                if (i3 > 0) {
                    abstractC0029f.f66g &= -2;
                }
                if ((abstractC0029f.f66g & 3) != 3) {
                    c0021a.f50d = i3;
                    c0021a.m28a();
                    abstractC0029f.m53c(c0021a);
                    c0021a.m43h(abstractC0029f.f69j);
                    c0021a.m42g(0);
                    c0021a.m42g(abstractC0029f.mo14b());
                }
                mo49a(m297a, i3, abstractC0029f.f67h, z);
                i3 = i4 + i3;
                z2 = z;
            }
            mo50a(m297a, z2);
            c0021a.m28a();
            c0021a.m32b(8);
            c0021a.m34c(c0021a.m37e());
            if (this.f64f != null) {
                this.f64f.m56b(c0021a);
            }
            c0021a.m32b(0);
            abstractC0029f.m54d(c0021a);
            if (abstractC0029f.f65f == 2 && !abstractC0029f.m52b(2)) {
                i = abstractC0029f.f67h;
            }
            byte[] bArr = null;
            C0021a c0021a2 = null;
            while (!abstractC0029f.m52b(2)) {
                if (bArr == null) {
                    bArr = new byte[this.f62c];
                    c0021a2 = new C0021a(bArr, 0);
                }
                mo50a(bArr, z2);
                c0021a2.m28a();
                c0021a2.m32b(8);
                c0021a2.m34c(c0021a2.m37e());
                if (this.f64f != null) {
                    this.f64f.m56b(c0021a2);
                }
                c0021a2.m28a();
                abstractC0029f.m54d(c0021a2);
                int i5 = abstractC0029f.f67h - 24;
                if (i + i5 > m297a.length) {
                    byte[] bArr2 = new byte[i + i5];
                    System.arraycopy(m297a, 0, bArr2, 0, i);
                    m297a = bArr2;
                }
                System.arraycopy(bArr, 24, m297a, i, i5);
                i += i5;
            }
            abstractC0029f.mo21f(new C0021a(m297a, 0));
            C0108c.m296a(m297a);
            C0027d mo12a = abstractC0029f.mo12a();
            if (mo12a != null) {
                throw mo12a;
            }
        } catch (Throwable th) {
            C0108c.m296a(m297a);
            throw th;
        }
    }

    /* renamed from: a */
    protected abstract void mo49a(byte[] bArr, int i, int i2, boolean z);

    /* renamed from: a */
    protected abstract void mo50a(byte[] bArr, boolean z);

    /* renamed from: b */
    public abstract void mo51b();

    public String toString() {
        return this.f60a.toString();
    }
}
