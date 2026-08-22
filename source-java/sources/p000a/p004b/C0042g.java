package p000a.p004b;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import p000a.p007e.C0154d;

/* renamed from: a.b.g */
/* loaded from: classes.dex */
public final class C0042g {

    /* renamed from: e */
    static C0042g f146e;

    /* renamed from: f */
    C0037b f151f;

    /* renamed from: g */
    int f152g;

    /* renamed from: h */
    int f153h;

    /* renamed from: i */
    boolean f154i;

    /* renamed from: j */
    boolean f155j;

    /* renamed from: k */
    boolean f156k;

    /* renamed from: l */
    boolean f157l;

    /* renamed from: m */
    boolean f158m;

    /* renamed from: n */
    boolean f159n;

    /* renamed from: o */
    byte[] f160o;

    /* renamed from: p */
    String f161p;

    /* renamed from: a */
    static final InetAddress[] f142a = new InetAddress[0];

    /* renamed from: q */
    private static final RunnableC0040e f147q = new RunnableC0040e();

    /* renamed from: r */
    private static int f148r = 0;

    /* renamed from: s */
    private static final HashMap f149s = new HashMap();

    /* renamed from: t */
    private static final HashMap f150t = new HashMap();

    /* renamed from: b */
    static final C0037b f143b = new C0037b("0.0.0.0", 0, null);

    /* renamed from: c */
    static final C0042g f144c = new C0042g(f143b, 0, false, 0);

    /* renamed from: d */
    static final byte[] f145d = {0, 0, 0, 0, 0, 0};

    static {
        InetAddress inetAddress;
        String str;
        String str2 = null;
        f149s.put(f143b, new C0043h(f143b, f144c, -1L));
        InetAddress inetAddress2 = f147q.f103a;
        if (inetAddress2 == null) {
            try {
                inetAddress = InetAddress.getLocalHost();
            } catch (UnknownHostException e) {
                try {
                    inetAddress = InetAddress.getByName("127.0.0.1");
                } catch (UnknownHostException e2) {
                    inetAddress = inetAddress2;
                }
            }
        } else {
            inetAddress = inetAddress2;
        }
        if (0 == 0 || str2.length() == 0) {
            byte[] address = inetAddress.getAddress();
            str = "JCIFS" + (address[2] & 255) + "_" + (address[3] & 255) + "_" + C0154d.m378a((int) (Math.random() * 255.0d), 2);
        } else {
            str = null;
        }
        C0037b c0037b = new C0037b(str, 0, null);
        f146e = new C0042g(c0037b, inetAddress.hashCode(), false, 0, false, false, true, false, f145d);
        m95a(c0037b, f146e, -1L);
    }

    C0042g(C0037b c0037b, int i, boolean z, int i2) {
        this.f151f = c0037b;
        this.f152g = i;
        this.f154i = z;
        this.f153h = i2;
    }

    C0042g(C0037b c0037b, int i, boolean z, int i2, boolean z2, boolean z3, boolean z4, boolean z5, byte[] bArr) {
        this.f151f = c0037b;
        this.f152g = i;
        this.f154i = z;
        this.f153h = i2;
        this.f155j = z2;
        this.f156k = z3;
        this.f157l = z4;
        this.f158m = z5;
        this.f160o = bArr;
        this.f159n = true;
    }

    /* renamed from: a */
    public static C0042g m88a() {
        return f146e;
    }

    /* renamed from: a */
    static C0042g m89a(C0037b c0037b) {
        C0042g c0042g;
        synchronized (f149s) {
            C0043h c0043h = (C0043h) f149s.get(c0037b);
            if (c0043h != null && c0043h.f164c < System.currentTimeMillis() && c0043h.f164c >= 0) {
                c0043h = null;
            }
            c0042g = c0043h != null ? c0043h.f163b : null;
        }
        return c0042g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001a, code lost:
    
        r0 = (p000a.p004b.C0042g) m98b(r2);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static C0042g m90a(C0037b c0037b, InetAddress inetAddress) {
        if (c0037b.f98d == 29 && inetAddress == null) {
            inetAddress = f147q.f104b;
        }
        c0037b.f99e = inetAddress != null ? inetAddress.hashCode() : 0;
        C0042g m89a = m89a(c0037b);
        if (m89a == null && m89a == null) {
            try {
                m89a = f147q.m72a(c0037b, inetAddress);
            } catch (UnknownHostException e) {
                m89a = f144c;
            } finally {
                m94a(c0037b, m89a);
                m100c(c0037b);
            }
        }
        if (m89a == f144c) {
            throw new UnknownHostException(c0037b.toString());
        }
        return m89a;
    }

    /* renamed from: a */
    public static C0042g m91a(String str) {
        return m92a(str, 0, (String) null);
    }

    /* renamed from: a */
    public static C0042g m92a(String str, int i, String str2) {
        return m93a(str, i, str2, null);
    }

    /* renamed from: a */
    public static C0042g m93a(String str, int i, String str2, InetAddress inetAddress) {
        int i2;
        if (str == null || str.length() == 0) {
            return m88a();
        }
        if (!Character.isDigit(str.charAt(0))) {
            return m90a(new C0037b(str, i, str2), inetAddress);
        }
        char[] charArray = str.toCharArray();
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < charArray.length; i5 = i2 + 1) {
            char c = charArray[i5];
            if (c < '0' || c > '9') {
                return m90a(new C0037b(str, i, str2), inetAddress);
            }
            char c2 = c;
            i2 = i5;
            int i6 = 0;
            while (c2 != '.') {
                if (c2 < '0' || c2 > '9') {
                    return m90a(new C0037b(str, i, str2), inetAddress);
                }
                i6 = ((i6 * 10) + c2) - 48;
                i2++;
                if (i2 >= charArray.length) {
                    break;
                }
                c2 = charArray[i2];
            }
            if (i6 > 255) {
                return m90a(new C0037b(str, i, str2), inetAddress);
            }
            i4 = (i4 << 8) + i6;
            i3++;
        }
        return (i3 != 4 || str.endsWith(".")) ? m90a(new C0037b(str, i, str2), inetAddress) : new C0042g(f143b, i4, false, 0);
    }

    /* renamed from: a */
    static void m94a(C0037b c0037b, C0042g c0042g) {
        m95a(c0037b, c0042g, System.currentTimeMillis() + 30000);
    }

    /* renamed from: a */
    static void m95a(C0037b c0037b, C0042g c0042g, long j) {
        synchronized (f149s) {
            C0043h c0043h = (C0043h) f149s.get(c0037b);
            if (c0043h == null) {
                f149s.put(c0037b, new C0043h(c0037b, c0042g, j));
            } else {
                c0043h.f163b = c0042g;
                c0043h.f164c = j;
            }
        }
    }

    /* renamed from: a */
    public static boolean m96a(InetAddress inetAddress) {
        for (int i = 0; inetAddress != null && i < f142a.length; i++) {
            if (inetAddress.hashCode() == f142a[i].hashCode()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static C0037b m97b() {
        return f146e.f151f;
    }

    /* renamed from: b */
    private static Object m98b(C0037b c0037b) {
        C0042g m89a;
        synchronized (f150t) {
            if (f150t.containsKey(c0037b)) {
                while (f150t.containsKey(c0037b)) {
                    try {
                        f150t.wait();
                    } catch (InterruptedException e) {
                    }
                }
                m89a = m89a(c0037b);
                if (m89a == null) {
                    synchronized (f150t) {
                        f150t.put(c0037b, c0037b);
                    }
                }
            } else {
                f150t.put(c0037b, c0037b);
                m89a = null;
            }
        }
        return m89a;
    }

    /* renamed from: c */
    public static InetAddress m99c() {
        if (f142a.length == 0) {
            return null;
        }
        return f142a[f148r];
    }

    /* renamed from: c */
    private static void m100c(C0037b c0037b) {
        synchronized (f150t) {
            f150t.remove(c0037b);
            f150t.notifyAll();
        }
    }

    /* renamed from: d */
    static InetAddress m101d() {
        f148r = f148r + 1 < f142a.length ? f148r + 1 : 0;
        if (f142a.length == 0) {
            return null;
        }
        return f142a[f148r];
    }

    /* renamed from: e */
    public String m102e() {
        int i = 0;
        this.f161p = this.f151f.f96b;
        if (!Character.isDigit(this.f161p.charAt(0))) {
            switch (this.f151f.f98d) {
                case 27:
                case 28:
                case 29:
                    this.f161p = "*SMBSERVER     ";
                    break;
            }
        } else {
            int length = this.f161p.length();
            char[] charArray = this.f161p.toCharArray();
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                int i3 = i2 + 1;
                if (!Character.isDigit(charArray[i2])) {
                    break;
                }
                if (i3 == length && i == 3) {
                    this.f161p = "*SMBSERVER     ";
                    break;
                }
                if (i3 >= length || charArray[i3] != '.') {
                    i2 = i3;
                } else {
                    i++;
                    i2 = i3 + 1;
                }
            }
        }
        return this.f161p;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof C0042g) && ((C0042g) obj).f152g == this.f152g;
    }

    /* renamed from: f */
    public String m103f() {
        if (this.f161p == this.f151f.f96b) {
            this.f161p = "*SMBSERVER     ";
        } else if (this.f161p == "*SMBSERVER     ") {
            try {
                C0042g[] m75a = f147q.m75a(this);
                if (this.f151f.f98d == 29) {
                    for (int i = 0; i < m75a.length; i++) {
                        if (m75a[i].f151f.f98d == 32) {
                            return m75a[i].f151f.f96b;
                        }
                    }
                    return null;
                }
                if (this.f159n) {
                    this.f161p = null;
                    return this.f151f.f96b;
                }
            } catch (UnknownHostException e) {
                this.f161p = null;
            }
        } else {
            this.f161p = null;
        }
        return this.f161p;
    }

    /* renamed from: g */
    public String m104g() {
        return this.f151f == f143b ? m106i() : this.f151f.f96b;
    }

    /* renamed from: h */
    public InetAddress m105h() {
        return InetAddress.getByName(m106i());
    }

    public int hashCode() {
        return this.f152g;
    }

    /* renamed from: i */
    public String m106i() {
        return ((this.f152g >>> 24) & 255) + "." + ((this.f152g >>> 16) & 255) + "." + ((this.f152g >>> 8) & 255) + "." + ((this.f152g >>> 0) & 255);
    }

    /* renamed from: j */
    public int m107j() {
        return this.f151f.f98d;
    }

    public String toString() {
        return this.f151f.toString() + "/" + m106i();
    }
}
