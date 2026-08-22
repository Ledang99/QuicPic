package p000a.p006d;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import org.apache.commons.codec.CharEncoding;
import p000a.p007e.C0154d;
import p000a.p007e.C0155e;
import p000a.p007e.p008a.AbstractC0149b;
import p000a.p007e.p008a.InterfaceC0148a;

/* renamed from: a.d.u */
/* loaded from: classes.dex */
abstract class AbstractC0141u extends AbstractC0149b implements InterfaceC0083bb, InterfaceC0148a {

    /* renamed from: e */
    static C0155e f662e = C0155e.m381a();

    /* renamed from: f */
    static final byte[] f663f = {-1, 83, 77, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: A */
    String f664A;

    /* renamed from: C */
    AbstractC0141u f666C;

    /* renamed from: g */
    byte f667g;

    /* renamed from: i */
    int f669i;

    /* renamed from: j */
    int f670j;

    /* renamed from: l */
    int f672l;

    /* renamed from: m */
    int f673m;

    /* renamed from: n */
    int f674n;

    /* renamed from: p */
    int f676p;

    /* renamed from: q */
    int f677q;

    /* renamed from: r */
    int f678r;

    /* renamed from: s */
    int f679s;

    /* renamed from: t */
    boolean f680t;

    /* renamed from: u */
    boolean f681u;

    /* renamed from: v */
    boolean f682v;

    /* renamed from: x */
    int f684x;

    /* renamed from: y */
    boolean f685y;

    /* renamed from: w */
    long f683w = 1;

    /* renamed from: z */
    C0140t f686z = null;

    /* renamed from: B */
    C0142v f665B = null;

    /* renamed from: h */
    byte f668h = 24;

    /* renamed from: o */
    int f675o = f365Y;

    /* renamed from: k */
    int f671k = 0;

    AbstractC0141u() {
    }

    /* renamed from: a */
    static void m332a(long j, byte[] bArr, int i) {
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
    }

    /* renamed from: b */
    static void m333b(long j, byte[] bArr, int i) {
        bArr[i] = (byte) j;
        int i2 = i + 1;
        long j2 = j >> 8;
        bArr[i2] = (byte) j2;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (j2 >> 8);
        bArr[i3 + 1] = (byte) (r2 >> 8);
    }

    /* renamed from: c */
    static void m334c(long j, byte[] bArr, int i) {
        bArr[i] = (byte) j;
        int i2 = i + 1;
        long j2 = j >> 8;
        bArr[i2] = (byte) j2;
        int i3 = i2 + 1;
        long j3 = j2 >> 8;
        bArr[i3] = (byte) j3;
        int i4 = i3 + 1;
        long j4 = j3 >> 8;
        bArr[i4] = (byte) j4;
        int i5 = i4 + 1;
        long j5 = j4 >> 8;
        bArr[i5] = (byte) j5;
        int i6 = i5 + 1;
        long j6 = j5 >> 8;
        bArr[i6] = (byte) j6;
        int i7 = i6 + 1;
        bArr[i7] = (byte) (j6 >> 8);
        bArr[i7 + 1] = (byte) (r2 >> 8);
    }

    /* renamed from: d */
    static void m335d(long j, byte[] bArr, int i) {
        if (j != 0) {
            j = (11644473600000L + j) * 10000;
        }
        m334c(j, bArr, i);
    }

    /* renamed from: e */
    static void m336e(long j, byte[] bArr, int i) {
        if (j == 0 || j == -1) {
            m333b(-1L, bArr, i);
            return;
        }
        synchronized (f366Z) {
            if (f366Z.inDaylightTime(new Date())) {
                if (!f366Z.inDaylightTime(new Date(j))) {
                    j -= 3600000;
                }
            } else if (f366Z.inDaylightTime(new Date(j))) {
                j += 3600000;
            }
        }
        m333b((int) (j / 1000), bArr, i);
    }

    /* renamed from: f */
    static int m337f(byte[] bArr, int i) {
        return (bArr[i] & 255) + ((bArr[i + 1] & 255) << 8);
    }

    /* renamed from: g */
    static int m338g(byte[] bArr, int i) {
        return (bArr[i] & 255) + ((bArr[i + 1] & 255) << 8) + ((bArr[i + 2] & 255) << 16) + ((bArr[i + 3] & 255) << 24);
    }

    /* renamed from: h */
    static long m339h(byte[] bArr, int i) {
        return (m338g(bArr, i) & 4294967295L) + (m338g(bArr, i + 4) << 32);
    }

    /* renamed from: i */
    static long m340i(byte[] bArr, int i) {
        return (((m338g(bArr, i) & 4294967295L) | (m338g(bArr, i + 4) << 32)) / 10000) - 11644473600000L;
    }

    /* renamed from: j */
    static long m341j(byte[] bArr, int i) {
        return m338g(bArr, i) * 1000;
    }

    /* renamed from: a */
    int m342a(String str, int i) {
        int length = str.length() + 1;
        if (!this.f680t) {
            return length;
        }
        int length2 = (str.length() * 2) + 2;
        return i % 2 != 0 ? length2 + 1 : length2;
    }

    /* renamed from: a */
    int m343a(String str, byte[] bArr, int i) {
        return m344a(str, bArr, i, this.f680t);
    }

    /* renamed from: a */
    int m344a(String str, byte[] bArr, int i, boolean z) {
        int i2;
        int i3;
        try {
            try {
                if (z) {
                    if ((i - this.f669i) % 2 != 0) {
                        i3 = i + 1;
                        try {
                            bArr[i] = 0;
                        } catch (UnsupportedEncodingException e) {
                            i2 = i3;
                            e = e;
                            C0155e c0155e = f662e;
                            if (C0155e.f728a > 1) {
                                e.printStackTrace(f662e);
                            }
                            return i2 - i;
                        }
                    } else {
                        i3 = i;
                    }
                    System.arraycopy(str.getBytes(CharEncoding.UTF_16LE), 0, bArr, i3, str.length() * 2);
                    int length = (str.length() * 2) + i3;
                    i3 = length + 1;
                    bArr[length] = 0;
                    i2 = i3 + 1;
                    bArr[i3] = 0;
                } else {
                    byte[] bytes = str.getBytes(f367aa);
                    System.arraycopy(bytes, 0, bArr, i, bytes.length);
                    int length2 = i + bytes.length;
                    i2 = length2 + 1;
                    bArr[length2] = 0;
                }
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                i2 = i;
            }
        } catch (UnsupportedEncodingException e3) {
            e = e3;
        }
        return i2 - i;
    }

    /* renamed from: a */
    int mo183a(byte[] bArr, int i) {
        this.f669i = i;
        int m350l = m350l(bArr, i) + i;
        this.f678r = mo163n(bArr, m350l + 1);
        bArr[m350l] = (byte) ((this.f678r / 2) & 255);
        int i2 = this.f678r + m350l + 1;
        this.f678r /= 2;
        this.f679s = mo164o(bArr, i2 + 2);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (this.f679s & 255);
        bArr[i3] = (byte) ((this.f679s >> 8) & 255);
        this.f670j = ((i3 + 1) + this.f679s) - i;
        if (this.f665B != null) {
            this.f665B.m353a(bArr, this.f669i, this.f670j, this, this.f666C);
        }
        return this.f670j;
    }

    /* renamed from: a */
    String m345a(byte[] bArr, int i, int i2, int i3, boolean z) {
        int i4 = 0;
        try {
            if (!z) {
                while (i < i2 && bArr[i + i4] != 0) {
                    if (i4 > i3) {
                        C0155e c0155e = f662e;
                        if (C0155e.f728a > 0) {
                            C0154d.m380a(System.err, bArr, i, i3 < 128 ? i3 + 8 : 128);
                        }
                        throw new RuntimeException("zero termination not found");
                    }
                    i4++;
                }
                return new String(bArr, i, i4, f367aa);
            }
            if ((i - this.f669i) % 2 != 0) {
                i++;
            }
            while (i + i4 + 1 < i2 && (bArr[i + i4] != 0 || bArr[i + i4 + 1] != 0)) {
                if (i4 > i3) {
                    C0155e c0155e2 = f662e;
                    if (C0155e.f728a > 0) {
                        C0154d.m380a(System.err, bArr, i, i3 < 128 ? i3 + 8 : 128);
                    }
                    throw new RuntimeException("zero termination not found");
                }
                i4 += 2;
            }
            return new String(bArr, i, i4, CharEncoding.UTF_16LE);
        } catch (UnsupportedEncodingException e) {
            C0155e c0155e3 = f662e;
            if (C0155e.f728a > 1) {
                e.printStackTrace(f662e);
            }
            return null;
        }
    }

    /* renamed from: a */
    String m346a(byte[] bArr, int i, int i2, boolean z) {
        int i3 = 0;
        try {
            if (!z) {
                while (bArr[i + i3] != 0) {
                    i3++;
                    if (i3 > i2) {
                        C0155e c0155e = f662e;
                        if (C0155e.f728a > 0) {
                            C0154d.m380a(System.err, bArr, i, i2 < 128 ? i2 + 8 : 128);
                        }
                        throw new RuntimeException("zero termination not found");
                    }
                }
                return new String(bArr, i, i3, f367aa);
            }
            if ((i - this.f669i) % 2 != 0) {
                i++;
            }
            do {
                if (bArr[i + i3] == 0 && bArr[i + i3 + 1] == 0) {
                    return new String(bArr, i, i3, CharEncoding.UTF_16LE);
                }
                i3 += 2;
            } while (i3 <= i2);
            C0155e c0155e2 = f662e;
            if (C0155e.f728a > 0) {
                C0154d.m380a(System.err, bArr, i, i2 < 128 ? i2 + 8 : 128);
            }
            throw new RuntimeException("zero termination not found");
        } catch (UnsupportedEncodingException e) {
            C0155e c0155e3 = f662e;
            if (C0155e.f728a > 1) {
                e.printStackTrace(f662e);
            }
            return null;
        }
    }

    /* renamed from: b */
    int mo184b(byte[] bArr, int i) {
        this.f669i = i;
        int m351m = i + m351m(bArr, i);
        int i2 = m351m + 1;
        this.f678r = bArr[m351m];
        if (this.f678r != 0) {
            int mo165p = mo165p(bArr, i2);
            if (mo165p != this.f678r * 2) {
                C0155e c0155e = f662e;
                if (C0155e.f728a >= 5) {
                    f662e.println("wordCount * 2=" + (this.f678r * 2) + " but readParameterWordsWireFormat returned " + mo165p);
                }
            }
            i2 += this.f678r * 2;
        }
        this.f679s = m337f(bArr, i2);
        int i3 = i2 + 2;
        if (this.f679s != 0) {
            int mo166q = mo166q(bArr, i3);
            if (mo166q != this.f679s) {
                C0155e c0155e2 = f662e;
                if (C0155e.f728a >= 5) {
                    f662e.println("byteCount=" + this.f679s + " but readBytesWireFormat returned " + mo166q);
                }
            }
            i3 += this.f679s;
        }
        this.f670j = i3 - i;
        return this.f670j;
    }

    /* renamed from: c */
    int m347c(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (bArr[i + i3] != 0) {
            int i4 = i3 + 1;
            if (i3 > i2) {
                throw new RuntimeException("zero termination not found: " + this);
            }
            i3 = i4;
        }
        return i3;
    }

    /* renamed from: e */
    void mo178e() {
        this.f668h = (byte) 24;
        this.f673m = 0;
        this.f672l = 0;
        this.f681u = false;
        this.f665B = null;
    }

    public boolean equals(Object obj) {
        return (obj instanceof AbstractC0141u) && ((AbstractC0141u) obj).f677q == this.f677q;
    }

    /* renamed from: f */
    boolean m348f() {
        return (this.f668h & 128) == 128;
    }

    public int hashCode() {
        return this.f677q;
    }

    /* renamed from: k */
    String m349k(byte[] bArr, int i) {
        return m346a(bArr, i, 256, this.f680t);
    }

    /* renamed from: l */
    int m350l(byte[] bArr, int i) {
        System.arraycopy(f663f, 0, bArr, i, f663f.length);
        bArr[i + 4] = this.f667g;
        bArr[i + 9] = this.f668h;
        m332a(this.f673m, bArr, i + 9 + 1);
        int i2 = i + 24;
        m332a(this.f674n, bArr, i2);
        m332a(this.f675o, bArr, i2 + 2);
        m332a(this.f676p, bArr, i2 + 4);
        m332a(this.f677q, bArr, i2 + 6);
        return 32;
    }

    /* renamed from: m */
    int m351m(byte[] bArr, int i) {
        this.f667g = bArr[i + 4];
        this.f672l = m338g(bArr, i + 5);
        this.f668h = bArr[i + 9];
        this.f673m = m337f(bArr, i + 9 + 1);
        this.f674n = m337f(bArr, i + 24);
        this.f675o = m337f(bArr, i + 24 + 2);
        this.f676p = m337f(bArr, i + 24 + 4);
        this.f677q = m337f(bArr, i + 24 + 6);
        return 32;
    }

    /* renamed from: n */
    abstract int mo163n(byte[] bArr, int i);

    /* renamed from: o */
    abstract int mo164o(byte[] bArr, int i);

    /* renamed from: p */
    abstract int mo165p(byte[] bArr, int i);

    /* renamed from: q */
    abstract int mo166q(byte[] bArr, int i);
}
