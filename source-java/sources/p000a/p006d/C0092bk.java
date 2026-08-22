package p000a.p006d;

import java.io.IOException;
import java.net.InetAddress;
import java.util.Enumeration;
import java.util.Vector;
import org.apache.http.conn.params.ConnManagerParams;
import p000a.C0000a;
import p000a.p004b.C0042g;
import p000a.p007e.C0155e;

/* renamed from: a.d.bk */
/* loaded from: classes.dex */
public final class C0092bk {

    /* renamed from: c */
    int f430c;

    /* renamed from: f */
    C0140t f433f;

    /* renamed from: g */
    long f434g;

    /* renamed from: l */
    private C0000a f436l;

    /* renamed from: m */
    private int f437m;

    /* renamed from: n */
    private int f438n;

    /* renamed from: o */
    private InetAddress f439o;

    /* renamed from: i */
    private static final String f426i = null;

    /* renamed from: j */
    private static final String f427j = null;

    /* renamed from: k */
    private static final String f428k = null;

    /* renamed from: a */
    static C0042g[] f425a = null;

    /* renamed from: e */
    C0094bm f432e = null;

    /* renamed from: h */
    String f435h = null;

    /* renamed from: d */
    Vector f431d = new Vector();

    /* renamed from: b */
    int f429b = 0;

    C0092bk(C0000a c0000a, int i, InetAddress inetAddress, int i2, C0140t c0140t) {
        this.f436l = c0000a;
        this.f437m = i;
        this.f439o = inetAddress;
        this.f438n = i2;
        this.f433f = c0140t;
    }

    /* renamed from: a */
    synchronized C0094bm m259a() {
        if (this.f432e == null) {
            this.f432e = C0094bm.m266a(this.f436l, this.f437m, this.f439o, this.f438n, null);
        }
        return this.f432e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x001f, code lost:
    
        r0 = new p000a.p006d.C0096bo(r3, r4, r5);
        r3.f431d.addElement(r0);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    synchronized C0096bo m260a(String str, String str2) {
        C0096bo c0096bo;
        if (str == null) {
            str = "IPC$";
        }
        Enumeration elements = this.f431d.elements();
        while (true) {
            if (!elements.hasMoreElements()) {
                break;
            }
            c0096bo = (C0096bo) elements.nextElement();
            if (c0096bo.m288a(str, str2)) {
                break;
            }
        }
        return c0096bo;
    }

    /* renamed from: a */
    void m261a(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        synchronized (m259a()) {
            if (abstractC0141u2 != null) {
                abstractC0141u2.f681u = false;
            }
            this.f434g = System.currentTimeMillis() + 35000;
            m264b(abstractC0141u, abstractC0141u2);
            if (abstractC0141u2 == null || !abstractC0141u2.f681u) {
                if (abstractC0141u instanceof C0075au) {
                    C0075au c0075au = (C0075au) abstractC0141u;
                    if (this.f435h != null && c0075au.f336b.endsWith("\\IPC$")) {
                        c0075au.f336b = "\\\\" + this.f435h + "\\IPC$";
                    }
                }
                abstractC0141u.f676p = this.f430c;
                abstractC0141u.f686z = this.f433f;
                try {
                    this.f432e.m278b(abstractC0141u, abstractC0141u2);
                } catch (C0084bc e) {
                    if (abstractC0141u instanceof C0075au) {
                        m262a(true);
                    }
                    abstractC0141u.f665B = null;
                    throw e;
                }
            }
        }
    }

    /* renamed from: a */
    void m262a(boolean z) {
        synchronized (m259a()) {
            if (this.f429b != 2) {
                return;
            }
            this.f429b = 3;
            this.f435h = null;
            Enumeration elements = this.f431d.elements();
            while (elements.hasMoreElements()) {
                ((C0096bo) elements.nextElement()).m287a(z);
            }
            if (!z && this.f432e.f462s.f476g != 0) {
                C0058ad c0058ad = new C0058ad(null);
                c0058ad.f676p = this.f430c;
                try {
                    this.f432e.m278b(c0058ad, null);
                } catch (C0084bc e) {
                }
                this.f430c = 0;
            }
            this.f429b = 0;
            this.f432e.notifyAll();
        }
    }

    /* renamed from: a */
    boolean m263a(C0140t c0140t) {
        return this.f433f == c0140t || this.f433f.equals(c0140t);
    }

    /* renamed from: b */
    void m264b(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        byte[] bArr;
        C0139s c0139s;
        int i;
        byte[] m312b;
        C0084bc c0084bc = null;
        synchronized (m259a()) {
            while (this.f429b != 0) {
                if (this.f429b == 2 || this.f429b == 3) {
                    return;
                }
                try {
                    this.f432e.wait();
                } catch (InterruptedException e) {
                    throw new C0084bc(e.getMessage(), e);
                }
            }
            try {
                this.f429b = 1;
                byte[] bArr2 = new byte[0];
                try {
                    this.f432e.m277b();
                    C0094bm c0094bm = this.f432e;
                    C0155e c0155e = C0094bm.f445c;
                    if (C0155e.f728a >= 4) {
                        C0094bm c0094bm2 = this.f432e;
                        C0094bm.f445c.println("sessionSetup: accountName=" + this.f433f.f655i + ",primaryDomain=" + this.f433f.f654h);
                    }
                    this.f430c = 0;
                    byte[] bArr3 = bArr2;
                    int i2 = 10;
                    C0139s c0139s2 = null;
                    while (true) {
                        switch (i2) {
                            case 10:
                                if (this.f433f != C0140t.f647d && this.f432e.m276a(Integer.MIN_VALUE)) {
                                    bArr = bArr3;
                                    c0139s = c0139s2;
                                    i = 20;
                                    break;
                                } else {
                                    C0071aq c0071aq = new C0071aq(this, abstractC0141u, this.f433f);
                                    C0072ar c0072ar = new C0072ar(abstractC0141u2);
                                    if (this.f432e.m281b(this.f433f)) {
                                        if (!this.f433f.f659m || C0140t.f646c == "") {
                                            c0071aq.f665B = new C0142v(this.f433f.m330c(this.f432e.f462s.f485p), false);
                                        } else {
                                            this.f432e.m268a(C0140t.f650g).m260a(f426i, (String) null).m289b(null, null);
                                        }
                                    }
                                    c0071aq.f686z = this.f433f;
                                    try {
                                        this.f432e.m278b(c0071aq, c0072ar);
                                        e = c0084bc;
                                    } catch (C0143w e2) {
                                        throw e2;
                                    } catch (C0084bc e3) {
                                        e = e3;
                                    }
                                    if (c0072ar.f281b && !"GUEST".equalsIgnoreCase(this.f433f.f655i) && this.f432e.f462s.f476g != 0 && this.f433f != C0140t.f647d) {
                                        throw new C0143w(-1073741715);
                                    }
                                    if (e == null) {
                                        this.f430c = c0072ar.f676p;
                                        if (c0071aq.f665B != null) {
                                            this.f432e.f460q = c0071aq.f665B;
                                        }
                                        this.f429b = 2;
                                        c0084bc = e;
                                        bArr = bArr3;
                                        c0139s = c0139s2;
                                        i = 0;
                                        break;
                                    } else {
                                        throw e;
                                    }
                                }
                                break;
                            case ConnManagerParams.DEFAULT_MAX_TOTAL_CONNECTIONS /* 20 */:
                                if (c0139s2 == null) {
                                    c0139s2 = new C0139s(this.f433f, (this.f432e.f463t & 4) != 0);
                                }
                                C0155e c0155e2 = C0094bm.f445c;
                                if (C0155e.f728a >= 4) {
                                    C0094bm.f445c.println(c0139s2);
                                }
                                if (c0139s2.m310a()) {
                                    this.f435h = c0139s2.m313c();
                                    this.f429b = 2;
                                    bArr = bArr3;
                                    c0139s = c0139s2;
                                    i = 0;
                                    break;
                                } else {
                                    try {
                                        byte[] m311a = c0139s2.m311a(bArr3, 0, bArr3.length);
                                        if (m311a == null) {
                                            bArr = m311a;
                                            c0139s = c0139s2;
                                            i = i2;
                                            break;
                                        } else {
                                            C0071aq c0071aq2 = new C0071aq(this, null, m311a);
                                            C0072ar c0072ar2 = new C0072ar(null);
                                            if (this.f432e.m281b(this.f433f) && (m312b = c0139s2.m312b()) != null) {
                                                c0071aq2.f665B = new C0142v(m312b, true);
                                            }
                                            c0071aq2.f676p = this.f430c;
                                            this.f430c = 0;
                                            try {
                                                this.f432e.m278b(c0071aq2, c0072ar2);
                                            } catch (C0143w e4) {
                                                throw e4;
                                            } catch (C0084bc e5) {
                                                try {
                                                    this.f432e.m369b(true);
                                                    c0084bc = e5;
                                                } catch (Exception e6) {
                                                    c0084bc = e5;
                                                }
                                            }
                                            if (c0072ar2.f281b && !"GUEST".equalsIgnoreCase(this.f433f.f655i)) {
                                                throw new C0143w(-1073741715);
                                            }
                                            if (c0084bc == null) {
                                                this.f430c = c0072ar2.f676p;
                                                if (c0071aq2.f665B != null) {
                                                    this.f432e.f460q = c0071aq2.f665B;
                                                }
                                                bArr = c0072ar2.f282c;
                                                c0139s = c0139s2;
                                                i = i2;
                                                break;
                                            } else {
                                                throw c0084bc;
                                            }
                                        }
                                    } catch (C0084bc e7) {
                                        try {
                                            this.f432e.m369b(true);
                                        } catch (IOException e8) {
                                        }
                                        this.f430c = 0;
                                        throw e7;
                                    }
                                }
                            default:
                                throw new C0084bc("Unexpected session setup state: " + i2);
                        }
                        if (i == 0) {
                            return;
                        }
                        i2 = i;
                        c0139s2 = c0139s;
                        bArr3 = bArr;
                    }
                } catch (C0084bc e9) {
                    m262a(true);
                    this.f429b = 0;
                    throw e9;
                }
            } finally {
                this.f432e.notifyAll();
            }
        }
    }
}
