package p000a.p004b;

import java.net.InetAddress;

/* renamed from: a.b.f */
/* loaded from: classes.dex */
abstract class AbstractC0041f {

    /* renamed from: a */
    int f117a;

    /* renamed from: b */
    C0042g[] f118b;

    /* renamed from: c */
    int f119c;

    /* renamed from: d */
    int f120d;

    /* renamed from: e */
    int f121e;

    /* renamed from: g */
    int f123g;

    /* renamed from: h */
    int f124h;

    /* renamed from: i */
    int f125i;

    /* renamed from: j */
    boolean f126j;

    /* renamed from: k */
    boolean f127k;

    /* renamed from: l */
    boolean f128l;

    /* renamed from: m */
    boolean f129m;

    /* renamed from: o */
    boolean f131o;

    /* renamed from: q */
    C0037b f133q;

    /* renamed from: r */
    C0037b f134r;

    /* renamed from: s */
    int f135s;

    /* renamed from: u */
    int f137u;

    /* renamed from: v */
    int f138v;

    /* renamed from: w */
    int f139w;

    /* renamed from: x */
    int f140x;

    /* renamed from: y */
    InetAddress f141y;

    /* renamed from: n */
    boolean f130n = true;

    /* renamed from: p */
    boolean f132p = true;

    /* renamed from: f */
    int f122f = 1;

    /* renamed from: t */
    int f136t = 1;

    AbstractC0041f() {
    }

    /* renamed from: a */
    static void m77a(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
    }

    /* renamed from: d */
    static int m78d(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    /* renamed from: e */
    static int m79e(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: f */
    static int m80f(byte[] bArr, int i) {
        return m78d(bArr, i);
    }

    /* renamed from: a */
    abstract int mo68a(byte[] bArr, int i);

    /* renamed from: b */
    abstract int mo69b(byte[] bArr, int i);

    /* renamed from: c */
    abstract int mo70c(byte[] bArr, int i);

    /* renamed from: g */
    int m81g(byte[] bArr, int i) {
        int m83i = m83i(bArr, i) + i;
        return (m83i + mo68a(bArr, m83i)) - i;
    }

    /* renamed from: h */
    int m82h(byte[] bArr, int i) {
        int m84j = m84j(bArr, i) + i;
        return (m84j + mo69b(bArr, m84j)) - i;
    }

    /* renamed from: i */
    int m83i(byte[] bArr, int i) {
        m77a(this.f119c, bArr, i);
        bArr[i + 2] = (byte) ((this.f130n ? 1 : 0) + ((this.f120d << 3) & 120) + (this.f127k ? 128 : 0) + (this.f128l ? 4 : 0) + (this.f129m ? 2 : 0));
        bArr[i + 2 + 1] = (byte) ((this.f131o ? 128 : 0) + (this.f132p ? 16 : 0) + (this.f121e & 15));
        m77a(this.f122f, bArr, i + 4);
        m77a(this.f123g, bArr, i + 6);
        m77a(this.f124h, bArr, i + 8);
        m77a(this.f125i, bArr, i + 10);
        return 12;
    }

    /* renamed from: j */
    int m84j(byte[] bArr, int i) {
        this.f119c = m78d(bArr, i);
        this.f127k = (bArr[i + 2] & 128) != 0;
        this.f120d = (bArr[i + 2] & 120) >> 3;
        this.f128l = (bArr[i + 2] & 4) != 0;
        this.f129m = (bArr[i + 2] & 2) != 0;
        this.f130n = (bArr[i + 2] & 1) != 0;
        this.f131o = (bArr[(i + 2) + 1] & 128) != 0;
        this.f132p = (bArr[(i + 2) + 1] & 16) != 0;
        this.f121e = bArr[i + 2 + 1] & 15;
        this.f122f = m78d(bArr, i + 4);
        this.f123g = m78d(bArr, i + 6);
        this.f124h = m78d(bArr, i + 8);
        this.f125i = m78d(bArr, i + 10);
        return 12;
    }

    /* renamed from: k */
    int m85k(byte[] bArr, int i) {
        int m64a = this.f133q.m64a(bArr, i) + i;
        m77a(this.f135s, bArr, m64a);
        int i2 = m64a + 2;
        m77a(this.f136t, bArr, i2);
        return (i2 + 2) - i;
    }

    /* renamed from: l */
    int m86l(byte[] bArr, int i) {
        int m65b = this.f133q.m65b(bArr, i) + i;
        this.f135s = m78d(bArr, m65b);
        int i2 = m65b + 2;
        this.f136t = m78d(bArr, i2);
        return (i2 + 2) - i;
    }

    /* renamed from: m */
    int m87m(byte[] bArr, int i) {
        int m65b;
        if ((bArr[i] & 192) == 192) {
            this.f134r = this.f133q;
            m65b = i + 2;
        } else {
            m65b = this.f134r.m65b(bArr, i) + i;
        }
        this.f137u = m78d(bArr, m65b);
        int i2 = m65b + 2;
        this.f138v = m78d(bArr, i2);
        int i3 = i2 + 2;
        this.f139w = m79e(bArr, i3);
        int i4 = i3 + 4;
        this.f140x = m78d(bArr, i4);
        int i5 = i4 + 2;
        this.f118b = new C0042g[this.f140x / 6];
        int i6 = this.f140x + i5;
        this.f117a = 0;
        while (i5 < i6) {
            i5 += mo70c(bArr, i5);
            this.f117a++;
        }
        return i5 - i;
    }
}
