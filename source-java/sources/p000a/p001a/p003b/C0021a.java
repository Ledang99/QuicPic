package p000a.p001a.p003b;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import org.apache.commons.codec.CharEncoding;
import p000a.p007e.C0152b;

/* renamed from: a.a.b.a */
/* loaded from: classes.dex */
public class C0021a {

    /* renamed from: a */
    int f47a;

    /* renamed from: b */
    HashMap f48b;

    /* renamed from: c */
    public byte[] f49c;

    /* renamed from: d */
    public int f50d;

    /* renamed from: e */
    public int f51e;

    /* renamed from: f */
    public int f52f = 0;

    /* renamed from: g */
    public C0021a f53g = this;

    public C0021a(byte[] bArr, int i) {
        this.f49c = bArr;
        this.f51e = i;
        this.f50d = i;
    }

    /* renamed from: a */
    private int m26a(Object obj) {
        if (this.f48b == null) {
            this.f48b = new HashMap();
            this.f47a = 1;
        }
        C0022b c0022b = (C0022b) this.f48b.get(obj);
        if (c0022b == null) {
            c0022b = new C0022b();
            int i = this.f47a;
            this.f47a = i + 1;
            c0022b.f54a = i;
            c0022b.f55b = obj;
            this.f48b.put(obj, c0022b);
        }
        return c0022b.f54a;
    }

    /* renamed from: a */
    public C0021a m27a(int i) {
        C0021a c0021a = new C0021a(this.f49c, this.f50d);
        c0021a.f51e = i;
        c0021a.f53g = this.f53g;
        return c0021a;
    }

    /* renamed from: a */
    public void m28a() {
        this.f51e = this.f50d;
        this.f52f = 0;
        this.f53g = this;
    }

    /* renamed from: a */
    public void m29a(Object obj, int i) {
        if (obj == null) {
            m43h(0);
        }
        switch (i) {
            case 1:
            case 3:
                m43h(System.identityHashCode(obj));
                break;
            case 2:
                m43h(m26a(obj));
                break;
        }
    }

    /* renamed from: a */
    public void m30a(String str) {
        m38e(4);
        int i = this.f51e;
        int length = str.length();
        C0152b.m375b(length + 1, this.f49c, i);
        int i2 = i + 4;
        C0152b.m375b(0, this.f49c, i2);
        int i3 = i2 + 4;
        C0152b.m375b(length + 1, this.f49c, i3);
        int i4 = i3 + 4;
        try {
            System.arraycopy(str.getBytes(CharEncoding.UTF_16LE), 0, this.f49c, i4, length * 2);
        } catch (UnsupportedEncodingException e) {
        }
        int i5 = i4 + (length * 2);
        int i6 = i5 + 1;
        this.f49c[i5] = 0;
        this.f49c[i6] = 0;
        m36d((i6 + 1) - this.f51e);
    }

    /* renamed from: b */
    public int m31b() {
        return this.f51e;
    }

    /* renamed from: b */
    public void m32b(int i) {
        this.f51e = i;
    }

    /* renamed from: c */
    public int m33c() {
        return this.f53g.f52f;
    }

    /* renamed from: c */
    public void m34c(int i) {
        this.f53g.f52f = i;
    }

    /* renamed from: d */
    public int m35d() {
        int i = this.f49c[this.f51e] & 255;
        m36d(1);
        return i;
    }

    /* renamed from: d */
    public void m36d(int i) {
        this.f51e += i;
        if (this.f51e - this.f50d > this.f53g.f52f) {
            this.f53g.f52f = this.f51e - this.f50d;
        }
    }

    /* renamed from: e */
    public int m37e() {
        m38e(2);
        short m376b = C0152b.m376b(this.f49c, this.f51e);
        m36d(2);
        return m376b;
    }

    /* renamed from: e */
    public int m38e(int i) {
        int i2 = i - 1;
        int i3 = this.f51e - this.f50d;
        int i4 = ((i2 ^ (-1)) & (i3 + i2)) - i3;
        m36d(i4);
        return i4;
    }

    /* renamed from: f */
    public int m39f() {
        m38e(4);
        int m377c = C0152b.m377c(this.f49c, this.f51e);
        m36d(4);
        return m377c;
    }

    /* renamed from: f */
    public void m40f(int i) {
        this.f49c[this.f51e] = (byte) (i & 255);
        m36d(1);
    }

    /* renamed from: g */
    public String m41g() {
        String str;
        int i;
        m38e(4);
        int i2 = this.f51e;
        int m377c = C0152b.m377c(this.f49c, i2);
        int i3 = i2 + 12;
        if (m377c != 0) {
            int i4 = (m377c - 1) * 2;
            try {
                if (i4 < 0 || i4 > 65535) {
                    throw new C0023c("invalid array conformance");
                }
                str = new String(this.f49c, i3, i4, CharEncoding.UTF_16LE);
                i = i4 + 2 + i3;
            } catch (UnsupportedEncodingException e) {
                str = null;
                i = i3;
            }
        } else {
            str = null;
            i = i3;
        }
        m36d(i - this.f51e);
        return str;
    }

    /* renamed from: g */
    public void m42g(int i) {
        m38e(2);
        C0152b.m373a((short) i, this.f49c, this.f51e);
        m36d(2);
    }

    /* renamed from: h */
    public void m43h(int i) {
        m38e(4);
        C0152b.m375b(i, this.f49c, this.f51e);
        m36d(4);
    }
}
