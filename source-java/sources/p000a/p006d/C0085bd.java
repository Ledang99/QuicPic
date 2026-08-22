package p000a.p006d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.message.TokenParser;
import org.apache.http.util.LangUtils;
import p000a.C0000a;
import p000a.p001a.AbstractC0028e;
import p000a.p001a.p002a.C0002a;
import p000a.p001a.p002a.C0003b;
import p000a.p004b.C0042g;
import p000a.p007e.C0155e;

/* renamed from: a.d.bd */
/* loaded from: classes.dex */
public class C0085bd extends URLConnection implements InterfaceC0083bb {

    /* renamed from: a */
    static final int f373a = ".".hashCode();

    /* renamed from: b */
    static final int f374b = "..".hashCode();

    /* renamed from: c */
    static C0155e f375c = C0155e.m381a();

    /* renamed from: d */
    static long f376d = 5000;

    /* renamed from: e */
    protected static C0124d f377e = new C0124d();

    /* renamed from: f */
    C0140t f378f;

    /* renamed from: g */
    C0096bo f379g;

    /* renamed from: h */
    String f380h;

    /* renamed from: i */
    int f381i;

    /* renamed from: j */
    int f382j;

    /* renamed from: k */
    boolean f383k;

    /* renamed from: l */
    int f384l;

    /* renamed from: m */
    C0000a[] f385m;

    /* renamed from: n */
    int f386n;

    /* renamed from: o */
    private String f387o;

    /* renamed from: p */
    private String f388p;

    /* renamed from: q */
    private long f389q;

    /* renamed from: r */
    private long f390r;

    /* renamed from: s */
    private int f391s;

    /* renamed from: t */
    private long f392t;

    /* renamed from: u */
    private long f393u;

    /* renamed from: v */
    private long f394v;

    /* renamed from: w */
    private boolean f395w;

    /* renamed from: x */
    private int f396x;

    /* renamed from: y */
    private C0144x f397y;

    /* renamed from: z */
    private C0126f f398z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    C0085bd(C0085bd c0085bd, String str, int i, int i2, long j, long j2, long j3) {
        this(r0);
        URL url;
        if (c0085bd.m232o()) {
            url = new URL((URL) null, "smb://" + str + "/", C0130j.f614a);
        } else {
            url = new URL(c0085bd.url, str + ((i2 & 16) > 0 ? "/" : ""));
        }
        this.f378f = c0085bd.f378f;
        if (c0085bd.f388p != null) {
            this.f379g = c0085bd.f379g;
            this.f398z = c0085bd.f398z;
        }
        int length = str.length() - 1;
        str = str.charAt(length) == '/' ? str.substring(0, length) : str;
        if (c0085bd.f388p == null) {
            this.f380h = "\\";
        } else if (c0085bd.f380h.equals("\\")) {
            this.f380h = TokenParser.ESCAPE + str;
        } else {
            this.f380h = c0085bd.f380h + TokenParser.ESCAPE + str;
        }
        this.f382j = i;
        this.f391s = i2;
        this.f389q = j;
        this.f390r = j2;
        this.f393u = j3;
        this.f395w = true;
        long currentTimeMillis = System.currentTimeMillis() + f376d;
        this.f394v = currentTimeMillis;
        this.f392t = currentTimeMillis;
    }

    public C0085bd(String str) {
        this(new URL((URL) null, str, C0130j.f614a));
    }

    public C0085bd(String str, C0140t c0140t) {
        this(new URL((URL) null, str, C0130j.f614a), c0140t);
    }

    public C0085bd(URL url) {
        this(url, new C0140t(url.getUserInfo()));
    }

    public C0085bd(URL url, C0140t c0140t) {
        super(url);
        this.f396x = 7;
        this.f397y = null;
        this.f398z = null;
        this.f379g = null;
        this.f378f = c0140t == null ? new C0140t(url.getUserInfo()) : c0140t;
        m228k();
    }

    /* renamed from: A */
    private C0144x m192A() {
        if (this.f397y == null) {
            this.f397y = new C0144x();
        }
        return this.f397y;
    }

    /* renamed from: a */
    static String m193a(String str, String str2) {
        int i = 0;
        char[] charArray = str.toCharArray();
        int i2 = 0;
        for (int i3 = 0; i3 < charArray.length; i3++) {
            char c = charArray[i3];
            if (c == '&') {
                if (i > i2 && new String(charArray, i2, i - i2).equalsIgnoreCase(str2)) {
                    int i4 = i + 1;
                    return new String(charArray, i4, i3 - i4);
                }
                i2 = i3 + 1;
            } else if (c == '=') {
                i = i3;
            }
        }
        if (i <= i2 || !new String(charArray, i2, i - i2).equalsIgnoreCase(str2)) {
            return null;
        }
        int i5 = i + 1;
        return new String(charArray, i5, charArray.length - i5);
    }

    /* renamed from: a */
    int m198a(int i, int i2, int i3, int i4) {
        m222e();
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("open0: " + this.f380h);
        }
        if (!this.f379g.f494f.f432e.m276a(16)) {
            C0065ak c0065ak = new C0065ak();
            m208a(new C0064aj(this.f380h, i2, i, null), c0065ak);
            return c0065ak.f249b;
        }
        C0060af c0060af = new C0060af();
        C0059ae c0059ae = new C0059ae(this.f380h, i, i2, this.f396x, i3, i4, null);
        if (this instanceof C0091bj) {
            c0059ae.f216b |= 22;
            c0059ae.f217c |= 131072;
            c0060af.f229N = true;
        }
        m208a(c0059ae, c0060af);
        int i5 = c0060af.f231c;
        this.f391s = c0060af.f219D & 32767;
        this.f392t = System.currentTimeMillis() + f376d;
        this.f395w = true;
        return i5;
    }

    /* renamed from: a */
    C0000a m199a() {
        return this.f386n == 0 ? m211b() : this.f385m[this.f386n - 1];
    }

    /* renamed from: a */
    InterfaceC0131k m200a(String str, int i) {
        m222e();
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("queryPath: " + str);
        }
        if (this.f379g.f494f.f432e.m276a(16)) {
            C0109ca c0109ca = new C0109ca(i);
            m208a(new C0107bz(str, i), c0109ca);
            return c0109ca.f553a;
        }
        C0067am c0067am = new C0067am(this.f379g.f494f.f432e.f462s.f483n * 1000 * 60);
        m208a(new C0066al(str), c0067am);
        return c0067am;
    }

    /* renamed from: a */
    ArrayList m201a(String str, int i, InterfaceC0090bi interfaceC0090bi, InterfaceC0087bf interfaceC0087bf) {
        ArrayList arrayList = new ArrayList();
        m210a(arrayList, false, str, i, interfaceC0090bi, interfaceC0087bf);
        return arrayList;
    }

    /* renamed from: a */
    public void m202a(int i) {
        if (m228k().length() == 1) {
            throw new C0084bc("Invalid operation for workgroups, servers, or shares");
        }
        m204a(i & 12455, 0L, 0L);
    }

    /* renamed from: a */
    void m203a(int i, long j) {
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("close: " + i);
        }
        m208a(new C0145y(i, j), m192A());
    }

    /* renamed from: a */
    void m204a(int i, long j, long j2) {
        m233p();
        int i2 = this.f391s & 16;
        int m198a = m198a(1, 256, i2, i2 != 0 ? 1 : 64);
        m208a(new C0112cd(m198a, i2 | i, j, j2), new C0113ce());
        m203a(m198a, 0L);
        this.f392t = 0L;
    }

    /* renamed from: a */
    void m205a(long j) {
        if (m225h()) {
            m203a(this.f381i, j);
            this.f383k = false;
        }
    }

    /* renamed from: a */
    public void m206a(C0085bd c0085bd) {
        if (m228k().length() == 1 || c0085bd.m228k().length() == 1) {
            throw new C0084bc("Invalid operation for workgroups, servers, or shares");
        }
        m207a((AbstractC0141u) null);
        c0085bd.m207a((AbstractC0141u) null);
        if (!this.f379g.equals(c0085bd.f379g)) {
            throw new C0084bc("Invalid operation for workgroups, servers, or shares");
        }
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("renameTo: " + this.f380h + " -> " + c0085bd.f380h);
        }
        this.f394v = 0L;
        this.f392t = 0L;
        c0085bd.f392t = 0L;
        m208a(new C0070ap(this.f380h, c0085bd.f380h), m192A());
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
    
        r1 = r4;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m207a(AbstractC0141u abstractC0141u) {
        String str;
        C0126f c0126f;
        C0084bc c0084bc = null;
        if (abstractC0141u instanceof C0145y) {
            return;
        }
        m222e();
        C0126f m302a = f377e.m302a(this.f379g.f494f.f432e.f447A, this.f379g.f491c, this.f380h, this.f378f);
        if (m302a == null) {
            if (this.f379g.f496h && !(abstractC0141u instanceof C0137q) && !(abstractC0141u instanceof C0145y) && !(abstractC0141u instanceof C0057ac)) {
                throw new C0084bc(-1073741275, false);
            }
            if (abstractC0141u != null) {
                abstractC0141u.f673m &= -4097;
                return;
            }
            return;
        }
        if (abstractC0141u != null) {
            switch (abstractC0141u.f667g) {
                case LangUtils.HASH_OFFSET /* 37 */:
                case 50:
                    switch (((AbstractC0073as) abstractC0141u).f299S & 255) {
                        case 16:
                            str = null;
                            break;
                        default:
                            str = "A:";
                            break;
                    }
                default:
                    str = "A:";
                    break;
            }
        } else {
            str = null;
        }
        C0126f c0126f2 = m302a;
        while (true) {
            try {
                C0155e c0155e = f375c;
                if (C0155e.f728a >= 2) {
                    f375c.println("DFS redirect: " + c0126f2);
                }
                C0094bm m265a = C0094bm.m265a(C0000a.m0a(c0126f2.f602c), this.url.getPort());
                m265a.m277b();
                this.f379g = m265a.m268a(this.f378f).m260a(c0126f2.f603d, str);
                if (c0126f2 != m302a && c0126f2.f610k != null) {
                    c0126f2.f609j.put(c0126f2.f610k, c0126f2);
                }
            } catch (IOException e) {
                C0084bc c0084bc2 = e instanceof C0084bc ? (C0084bc) e : new C0084bc(c0126f2.f602c, e);
                C0126f c0126f3 = c0126f2.f608i;
                if (c0126f3 == m302a) {
                    c0084bc = c0084bc2;
                    c0126f = c0126f3;
                } else {
                    c0126f2 = c0126f3;
                }
            }
        }
        if (c0084bc != null) {
            throw c0084bc;
        }
        C0155e c0155e2 = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println(c0126f);
        }
        this.f398z = c0126f;
        if (c0126f.f600a < 0) {
            c0126f.f600a = 0;
        } else if (c0126f.f600a > this.f380h.length()) {
            c0126f.f600a = this.f380h.length();
        }
        String substring = this.f380h.substring(c0126f.f600a);
        if (substring.equals("")) {
            substring = "\\";
        }
        if (!c0126f.f605f.equals("")) {
            substring = "\\" + c0126f.f605f + substring;
        }
        this.f380h = substring;
        if (abstractC0141u != null && abstractC0141u.f664A != null && abstractC0141u.f664A.endsWith("\\") && !substring.endsWith("\\")) {
            substring = substring + "\\";
        }
        if (abstractC0141u != null) {
            abstractC0141u.f664A = substring;
            abstractC0141u.f673m |= 4096;
        }
    }

    /* renamed from: a */
    void m208a(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        while (true) {
            m207a(abstractC0141u);
            try {
                this.f379g.m286a(abstractC0141u, abstractC0141u2);
                return;
            } catch (C0126f e) {
                if (e.f606g) {
                    throw e;
                }
                abstractC0141u.mo178e();
            }
        }
    }

    /* renamed from: a */
    void m209a(String str) {
        if (m228k().length() == 1) {
            throw new C0084bc("Invalid operation for workgroups, servers, or shares");
        }
        if (System.currentTimeMillis() > this.f392t) {
            this.f391s = 17;
            this.f389q = 0L;
            this.f390r = 0L;
            this.f395w = false;
            InterfaceC0131k m200a = m200a(m228k(), 257);
            this.f391s = m200a.mo168a();
            this.f389q = m200a.mo169b();
            this.f390r = m200a.mo170c();
            this.f392t = System.currentTimeMillis() + f376d;
            this.f395w = true;
        }
        if ((this.f391s & 1) != 0) {
            m242y();
        }
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("delete: " + str);
        }
        if ((this.f391s & 16) != 0) {
            try {
                for (C0085bd c0085bd : m217b("*", 22, (InterfaceC0090bi) null, (InterfaceC0087bf) null)) {
                    c0085bd.m238u();
                }
            } catch (C0084bc e) {
                if (e.m190a() != -1073741809) {
                    throw e;
                }
            }
            m208a(new C0056ab(str), m192A());
        } else {
            m208a(new C0055aa(str), m192A());
        }
        this.f394v = 0L;
        this.f392t = 0L;
    }

    /* renamed from: a */
    void m210a(ArrayList arrayList, boolean z, String str, int i, InterfaceC0090bi interfaceC0090bi, InterfaceC0087bf interfaceC0087bf) {
        int i2;
        String str2;
        if (interfaceC0087bf == null || !(interfaceC0087bf instanceof C0128h)) {
            i2 = i;
            str2 = str;
        } else {
            C0128h c0128h = (C0128h) interfaceC0087bf;
            if (c0128h.f612a != null) {
                str = c0128h.f612a;
            }
            i2 = c0128h.f613b;
            str2 = str;
        }
        try {
            if (this.url.getHost().length() == 0 || m231n() == 2) {
                m219c(arrayList, z, str2, i2, interfaceC0090bi, interfaceC0087bf);
            } else if (this.f388p == null) {
                m215b(arrayList, z, str2, i2, interfaceC0090bi, interfaceC0087bf);
            } else {
                m220d(arrayList, z, str2, i2, interfaceC0090bi, interfaceC0087bf);
            }
        } catch (MalformedURLException e) {
            throw new C0084bc(this.url.toString(), e);
        } catch (UnknownHostException e2) {
            throw new C0084bc(this.url.toString(), e2);
        }
    }

    /* renamed from: b */
    C0000a m211b() {
        this.f386n = 0;
        String host = this.url.getHost();
        String path = this.url.getPath();
        String query = this.url.getQuery();
        if (query != null) {
            String m193a = m193a(query, "server");
            if (m193a != null && m193a.length() > 0) {
                this.f385m = new C0000a[1];
                this.f385m[0] = C0000a.m0a(m193a);
                return m218c();
            }
            String m193a2 = m193a(query, "address");
            if (m193a2 != null && m193a2.length() > 0) {
                byte[] address = InetAddress.getByName(m193a2).getAddress();
                this.f385m = new C0000a[1];
                this.f385m[0] = new C0000a(InetAddress.getByAddress(host, address));
                return m218c();
            }
        }
        if (host.length() == 0) {
            try {
                C0042g m92a = C0042g.m92a("\u0001\u0002__MSBROWSE__\u0002", 1, (String) null);
                this.f385m = new C0000a[1];
                this.f385m[0] = C0000a.m0a(m92a.m106i());
            } catch (UnknownHostException e) {
                C0140t.m314a();
                if (C0140t.f644a.equals("?")) {
                    throw e;
                }
                this.f385m = C0000a.m4b(C0140t.f644a, true);
            }
        } else if (path.length() == 0 || path.equals("/")) {
            this.f385m = C0000a.m4b(host, true);
        } else {
            this.f385m = C0000a.m4b(host, false);
        }
        return m218c();
    }

    /* renamed from: b */
    public ArrayList m212b(String str, int i) {
        return m201a(str, i, (InterfaceC0090bi) null, (InterfaceC0087bf) null);
    }

    /* renamed from: b */
    void m213b(int i, int i2, int i3, int i4) {
        if (m225h()) {
            return;
        }
        this.f381i = m198a(i, i2, i3, i4);
        this.f383k = true;
        this.f384l = this.f379g.f497i;
    }

    /* renamed from: b */
    public void m214b(long j) {
        if (m228k().length() == 1) {
            throw new C0084bc("Invalid operation for workgroups, servers, or shares");
        }
        m204a(0, 0L, j);
    }

    /* renamed from: b */
    void m215b(ArrayList arrayList, boolean z, String str, int i, InterfaceC0090bi interfaceC0090bi, InterfaceC0087bf interfaceC0087bf) {
        InterfaceC0129i[] m237t;
        String path = this.url.getPath();
        if (z && path.lastIndexOf(47) != path.length() - 1) {
            throw new C0084bc(this.url.toString() + " directory must end with '/'");
        }
        if (m231n() != 4) {
            throw new C0084bc("The requested list operations is invalid: " + this.url.toString());
        }
        HashMap hashMap = new HashMap();
        if (f377e.m305a(m230m(), this.f378f)) {
            try {
                for (InterfaceC0129i interfaceC0129i : m235r()) {
                    if (!hashMap.containsKey(interfaceC0129i)) {
                        hashMap.put(interfaceC0129i, interfaceC0129i);
                    }
                }
            } catch (IOException e) {
                C0155e c0155e = f375c;
                if (C0155e.f728a >= 4) {
                    e.printStackTrace(f375c);
                }
            }
        }
        IOException e2 = null;
        C0000a m211b = m211b();
        loop0: while (m211b != null) {
            try {
                m223f();
                try {
                    m237t = m236s();
                } catch (IOException e3) {
                    C0155e c0155e2 = f375c;
                    if (C0155e.f728a >= 3) {
                        e3.printStackTrace(f375c);
                    }
                    m237t = m237t();
                }
                for (InterfaceC0129i interfaceC0129i2 : m237t) {
                    if (!hashMap.containsKey(interfaceC0129i2)) {
                        hashMap.put(interfaceC0129i2, interfaceC0129i2);
                    }
                }
                break loop0;
            } catch (IOException e4) {
                e2 = e4;
                C0155e c0155e3 = f375c;
                if (C0155e.f728a >= 3) {
                    e2.printStackTrace(f375c);
                }
                m211b = m218c();
            }
        }
        if (e2 != null && hashMap.isEmpty()) {
            if (!(e2 instanceof C0084bc)) {
                throw new C0084bc(this.url.toString(), e2);
            }
            throw ((C0084bc) e2);
        }
        boolean z2 = (i & 2) == 2;
        for (InterfaceC0129i interfaceC0129i3 : hashMap.keySet()) {
            String mo244a = interfaceC0129i3.mo244a();
            if (interfaceC0090bi == null || interfaceC0090bi.m256a(this, mo244a)) {
                if (mo244a.length() > 0) {
                    if (z) {
                        C0085bd c0085bd = new C0085bd(this, mo244a, interfaceC0129i3.mo245b(), 17, 0L, 0L, 0L);
                        if (interfaceC0087bf == null || interfaceC0087bf.mo250a(c0085bd)) {
                            arrayList.add(c0085bd);
                        }
                    } else if (z2 || !mo244a.endsWith("$")) {
                        arrayList.add(interfaceC0129i3);
                    }
                }
            }
        }
    }

    /* renamed from: b */
    protected boolean m216b(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(47);
        int lastIndexOf2 = str2.lastIndexOf(47);
        int length = str.length() - lastIndexOf;
        int length2 = str2.length() - lastIndexOf2;
        if (length > 1 && str.charAt(lastIndexOf + 1) == '.') {
            return true;
        }
        if (length2 <= 1 || str2.charAt(lastIndexOf2 + 1) != '.') {
            return length == length2 && str.regionMatches(true, lastIndexOf, str2, lastIndexOf2, length);
        }
        return true;
    }

    /* renamed from: b */
    C0085bd[] m217b(String str, int i, InterfaceC0090bi interfaceC0090bi, InterfaceC0087bf interfaceC0087bf) {
        ArrayList arrayList = new ArrayList();
        m210a(arrayList, true, str, i, interfaceC0090bi, interfaceC0087bf);
        return (C0085bd[]) arrayList.toArray(new C0085bd[arrayList.size()]);
    }

    /* renamed from: c */
    C0000a m218c() {
        if (this.f386n >= this.f385m.length) {
            return null;
        }
        C0000a[] c0000aArr = this.f385m;
        int i = this.f386n;
        this.f386n = i + 1;
        return c0000aArr[i];
    }

    /* renamed from: c */
    void m219c(ArrayList arrayList, boolean z, String str, int i, InterfaceC0090bi interfaceC0090bi, InterfaceC0087bf interfaceC0087bf) {
        C0133m c0133m;
        C0132l c0132l;
        boolean z2;
        int m231n = this.url.getHost().length() == 0 ? 0 : m231n();
        if (m231n == 0) {
            m222e();
            C0132l c0132l2 = new C0132l(this.f379g.f494f.f432e.f462s.f474e, Integer.MIN_VALUE);
            c0133m = new C0133m();
            c0132l = c0132l2;
        } else {
            if (m231n != 2) {
                throw new C0084bc("The requested list operations is invalid: " + this.url.toString());
            }
            C0132l c0132l3 = new C0132l(this.url.getHost(), -1);
            c0133m = new C0133m();
            c0132l = c0132l3;
        }
        boolean z3 = (i & 2) == 2;
        do {
            m208a(c0132l, c0133m);
            if (c0133m.f322P != 0 && c0133m.f322P != 234) {
                throw new C0084bc(c0133m.f322P, true);
            }
            z2 = c0133m.f322P == 234;
            int i2 = z2 ? c0133m.f323Q - 1 : c0133m.f323Q;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 >= i2) {
                    break;
                }
                InterfaceC0129i interfaceC0129i = c0133m.f324R[i4];
                String mo244a = interfaceC0129i.mo244a();
                if ((interfaceC0090bi == null || interfaceC0090bi.m256a(this, mo244a)) && mo244a.length() > 0) {
                    if (z) {
                        C0085bd c0085bd = new C0085bd(this, mo244a, interfaceC0129i.mo245b(), 17, 0L, 0L, 0L);
                        if (interfaceC0087bf == null || interfaceC0087bf.mo250a(c0085bd)) {
                            arrayList.add(c0085bd);
                        }
                    } else if (z3 || !mo244a.endsWith("$")) {
                        arrayList.add(interfaceC0129i);
                    }
                }
                i3 = i4 + 1;
            }
            if (m231n() != 2) {
                return;
            }
            c0132l.f299S = (byte) -41;
            c0132l.mo174a(0, c0133m.f621a);
            c0133m.mo178e();
        } while (z2);
    }

    @Override // java.net.URLConnection
    public void connect() {
        if (m224g() && this.f379g.f494f.f432e.f447A == null) {
            this.f379g.m287a(true);
        }
        if (m224g()) {
            return;
        }
        m228k();
        m211b();
        while (true) {
            try {
                m223f();
                return;
            } catch (C0143w e) {
                throw e;
            } catch (C0084bc e2) {
                if (m218c() == null) {
                    throw e2;
                }
                C0155e c0155e = f375c;
                if (C0155e.f728a >= 3) {
                    e2.printStackTrace(f375c);
                }
            }
        }
    }

    /* renamed from: d */
    void m220d(ArrayList arrayList, boolean z, String str, int i, InterfaceC0090bi interfaceC0090bi, InterfaceC0087bf interfaceC0087bf) {
        int hashCode;
        String m228k = m228k();
        String path = this.url.getPath();
        if (z && path.lastIndexOf(47) != path.length() - 1) {
            throw new C0084bc(this.url.toString() + " directory must end with '/'");
        }
        C0097bp c0097bp = new C0097bp(m228k, str, i);
        C0098bq c0098bq = new C0098bq();
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("doFindFirstNext: " + c0097bp.f664A);
        }
        m208a(c0097bp, c0098bq);
        int i2 = c0098bq.f507a;
        C0100bs c0100bs = new C0100bs(i2, c0098bq.f509af, c0098bq.f508ae);
        c0098bq.f318L = (byte) 2;
        while (true) {
            for (int i3 = 0; i3 < c0098bq.f323Q; i3++) {
                InterfaceC0129i interfaceC0129i = c0098bq.f324R[i3];
                String mo244a = interfaceC0129i.mo244a();
                if ((mo244a.length() >= 3 || (((hashCode = mo244a.hashCode()) != f373a && hashCode != f374b) || (!mo244a.equals(".") && !mo244a.equals("..")))) && ((interfaceC0090bi == null || interfaceC0090bi.m256a(this, mo244a)) && mo244a.length() > 0)) {
                    if (z) {
                        C0085bd c0085bd = new C0085bd(this, mo244a, 1, interfaceC0129i.mo246c(), interfaceC0129i.mo247d(), interfaceC0129i.mo248e(), interfaceC0129i.mo249f());
                        if (interfaceC0087bf == null || interfaceC0087bf.mo250a(c0085bd)) {
                            arrayList.add(c0085bd);
                        }
                    } else {
                        arrayList.add(interfaceC0129i);
                    }
                }
            }
            if (c0098bq.f503S || c0098bq.f323Q == 0) {
                try {
                    m208a(new C0057ac(i2), m192A());
                    return;
                } catch (C0084bc e) {
                    C0155e c0155e2 = f375c;
                    if (C0155e.f728a >= 4) {
                        e.printStackTrace(f375c);
                        return;
                    }
                    return;
                }
            }
            c0100bs.mo174a(c0098bq.f509af, c0098bq.f508ae);
            c0098bq.mo178e();
            m208a(c0100bs, c0098bq);
        }
    }

    /* renamed from: d */
    boolean m221d() {
        return this.f386n < this.f385m.length;
    }

    /* renamed from: e */
    void m222e() {
        try {
            connect();
        } catch (C0084bc e) {
            throw e;
        } catch (UnknownHostException e2) {
            throw new C0084bc("Failed to connect to server", e2);
        } catch (IOException e3) {
            throw new C0084bc("Failed to connect to server", e3);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0085bd) {
            C0085bd c0085bd = (C0085bd) obj;
            if (this == c0085bd) {
                return true;
            }
            if (m216b(this.url.getPath(), c0085bd.url.getPath())) {
                m228k();
                c0085bd.m228k();
                if (this.f387o.equalsIgnoreCase(c0085bd.f387o)) {
                    try {
                        return m199a().equals(c0085bd.m199a());
                    } catch (UnknownHostException e) {
                        return m230m().equalsIgnoreCase(c0085bd.m230m());
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    void m223f() {
        C0094bm m265a;
        C0000a m199a = m199a();
        if (this.f379g != null) {
            m265a = this.f379g.f494f.f432e;
        } else {
            m265a = C0094bm.m265a(m199a, this.url.getPort());
            this.f379g = m265a.m268a(this.f378f).m260a(this.f388p, (String) null);
        }
        String m229l = m229l();
        this.f379g.f496h = f377e.m302a(m229l, this.f379g.f491c, null, this.f378f) != null;
        if (this.f379g.f496h) {
            this.f379g.f489a = 2;
        }
        try {
            C0155e c0155e = f375c;
            if (C0155e.f728a >= 3) {
                f375c.println("doConnect: " + m199a);
            }
            this.f379g.m289b(null, null);
        } catch (C0143w e) {
            if (this.f388p == null) {
                this.f379g = m265a.m268a(C0140t.f648e).m260a((String) null, (String) null);
                this.f379g.m289b(null, null);
                return;
            }
            C0140t m308a = AbstractC0138r.m308a(this.url.toString(), e);
            if (m308a == null) {
                C0155e c0155e2 = f375c;
                if (C0155e.f728a >= 1 && m221d()) {
                    e.printStackTrace(f375c);
                }
                throw e;
            }
            this.f378f = m308a;
            this.f379g = m265a.m268a(this.f378f).m260a(this.f388p, (String) null);
            this.f379g.f496h = f377e.m302a(m229l, this.f379g.f491c, null, this.f378f) != null;
            if (this.f379g.f496h) {
                this.f379g.f489a = 2;
            }
            this.f379g.m289b(null, null);
        }
    }

    /* renamed from: g */
    boolean m224g() {
        return this.f379g != null && this.f379g.f489a == 2;
    }

    @Override // java.net.URLConnection
    public int getContentLength() {
        try {
            return (int) (m239v() & 4294967295L);
        } catch (C0084bc e) {
            return 0;
        }
    }

    @Override // java.net.URLConnection
    public long getDate() {
        try {
            return m234q();
        } catch (C0084bc e) {
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public InputStream getInputStream() {
        return new C0088bg(this);
    }

    @Override // java.net.URLConnection
    public long getLastModified() {
        try {
            return m234q();
        } catch (C0084bc e) {
            return 0L;
        }
    }

    @Override // java.net.URLConnection
    public OutputStream getOutputStream() {
        return new C0089bh(this);
    }

    /* renamed from: h */
    boolean m225h() {
        return this.f383k && m224g() && this.f384l == this.f379g.f497i;
    }

    public int hashCode() {
        int hashCode;
        try {
            hashCode = m199a().hashCode();
        } catch (UnknownHostException e) {
            hashCode = m230m().toUpperCase().hashCode();
        }
        m228k();
        return hashCode + this.f387o.toUpperCase().hashCode();
    }

    /* renamed from: i */
    void m226i() {
        m205a(0L);
    }

    /* renamed from: j */
    public String m227j() {
        m228k();
        if (this.f387o.length() <= 1) {
            return this.f388p != null ? this.f388p + '/' : this.url.getHost().length() > 0 ? this.url.getHost() + '/' : "smb://";
        }
        int length = this.f387o.length() - 2;
        while (this.f387o.charAt(length) != '/') {
            length--;
        }
        return this.f387o.substring(length + 1);
    }

    /* renamed from: k */
    String m228k() {
        int i;
        if (this.f380h == null) {
            char[] charArray = this.url.getPath().toCharArray();
            char[] cArr = new char[charArray.length];
            int length = charArray.length;
            char c = 0;
            int i2 = 0;
            int i3 = 0;
            while (i3 < length) {
                switch (c) {
                    case 0:
                        if (charArray[i3] != '/') {
                            return null;
                        }
                        cArr[i2] = charArray[i3];
                        i2++;
                        i = i3;
                        c = 1;
                        continue;
                        i3 = i + 1;
                    case 1:
                        if (charArray[i3] == '/') {
                            i = i3;
                        } else if (charArray[i3] == '.' && (i3 + 1 >= length || charArray[i3 + 1] == '/')) {
                            i = i3 + 1;
                        } else if (i3 + 1 >= length || charArray[i3] != '.' || charArray[i3 + 1] != '.' || (i3 + 2 < length && charArray[i3 + 2] != '/')) {
                            c = 2;
                            break;
                        } else {
                            i = i3 + 2;
                            if (i2 != 1) {
                                do {
                                    i2--;
                                    if (i2 > 1) {
                                    }
                                } while (cArr[i2 - 1] != '/');
                            }
                        }
                        i3 = i + 1;
                        break;
                    case 2:
                        break;
                    default:
                        i = i3;
                        continue;
                        i3 = i + 1;
                }
                if (charArray[i3] == '/') {
                    c = 1;
                }
                cArr[i2] = charArray[i3];
                i2++;
                i = i3;
                i3 = i + 1;
            }
            this.f387o = new String(cArr, 0, i2);
            if (i2 > 1) {
                int i4 = i2 - 1;
                int indexOf = this.f387o.indexOf(47, 1);
                if (indexOf < 0) {
                    this.f388p = this.f387o.substring(1);
                    this.f380h = "\\";
                } else if (indexOf == i4) {
                    this.f388p = this.f387o.substring(1, indexOf);
                    this.f380h = "\\";
                } else {
                    this.f388p = this.f387o.substring(1, indexOf);
                    String str = this.f387o;
                    if (cArr[i4] != '/') {
                        i4++;
                    }
                    this.f380h = str.substring(indexOf, i4);
                    this.f380h = this.f380h.replace('/', TokenParser.ESCAPE);
                }
            } else {
                this.f388p = null;
                this.f380h = "\\";
            }
        }
        return this.f380h;
    }

    /* renamed from: l */
    String m229l() {
        return this.f398z != null ? this.f398z.f602c : m230m();
    }

    /* renamed from: m */
    public String m230m() {
        String host = this.url.getHost();
        if (host.length() == 0) {
            return null;
        }
        return host;
    }

    /* renamed from: n */
    public int m231n() {
        int m107j;
        if (this.f382j == 0) {
            if (m228k().length() > 1) {
                this.f382j = 1;
            } else if (this.f388p != null) {
                m222e();
                if (this.f388p.equals("IPC$")) {
                    this.f382j = 16;
                } else if (this.f379g.f492d.equals("LPT1:")) {
                    this.f382j = 32;
                } else if (this.f379g.f492d.equals("COMM")) {
                    this.f382j = 64;
                } else {
                    this.f382j = 8;
                }
            } else if (this.url.getAuthority() == null || this.url.getAuthority().length() == 0) {
                this.f382j = 2;
            } else {
                try {
                    C0000a m199a = m199a();
                    if ((m199a.m8c() instanceof C0042g) && ((m107j = ((C0042g) m199a.m8c()).m107j()) == 29 || m107j == 27)) {
                        this.f382j = 2;
                        return this.f382j;
                    }
                    this.f382j = 4;
                } catch (UnknownHostException e) {
                    throw new C0084bc(this.url.toString(), e);
                }
            }
        }
        return this.f382j;
    }

    /* renamed from: o */
    boolean m232o() {
        int m107j;
        if (this.f382j == 2 || this.url.getHost().length() == 0) {
            this.f382j = 2;
            return true;
        }
        m228k();
        if (this.f388p == null) {
            C0000a m199a = m199a();
            if ((m199a.m8c() instanceof C0042g) && ((m107j = ((C0042g) m199a.m8c()).m107j()) == 29 || m107j == 27)) {
                this.f382j = 2;
                return true;
            }
            this.f382j = 4;
        }
        return false;
    }

    /* renamed from: p */
    public boolean m233p() {
        if (this.f392t > System.currentTimeMillis()) {
            return this.f395w;
        }
        this.f391s = 17;
        this.f389q = 0L;
        this.f390r = 0L;
        this.f395w = false;
        try {
            if (this.url.getHost().length() != 0) {
                if (this.f388p == null) {
                    if (m231n() == 2) {
                        C0000a.m1a(this.url.getHost(), true);
                    } else {
                        C0000a.m0a(this.url.getHost()).m9d();
                    }
                } else if (m228k().length() == 1 || this.f388p.equalsIgnoreCase("IPC$")) {
                    m222e();
                } else {
                    InterfaceC0131k m200a = m200a(m228k(), 257);
                    this.f391s = m200a.mo168a();
                    this.f389q = m200a.mo169b();
                    this.f390r = m200a.mo170c();
                }
            }
            this.f395w = true;
        } catch (C0084bc e) {
            switch (e.m190a()) {
                case -1073741809:
                case -1073741773:
                case -1073741772:
                case -1073741766:
                    break;
                default:
                    throw e;
            }
        } catch (UnknownHostException e2) {
        }
        this.f392t = System.currentTimeMillis() + f376d;
        return this.f395w;
    }

    /* renamed from: q */
    public long m234q() {
        if (m228k().length() <= 1) {
            return 0L;
        }
        m233p();
        return this.f390r;
    }

    /* renamed from: r */
    InterfaceC0129i[] m235r() {
        AbstractC0028e m46a = AbstractC0028e.m46a("ncacn_np:" + m199a().m10e() + "[\\PIPE\\netdfs]", this.f378f);
        try {
            C0002a c0002a = new C0002a(m230m());
            m46a.m48a(c0002a);
            if (c0002a.f18a != 0) {
                throw new C0084bc(c0002a.f18a, true);
            }
            return c0002a.m16c();
        } finally {
            try {
                m46a.mo51b();
            } catch (IOException e) {
                C0155e c0155e = f375c;
                if (C0155e.f728a >= 4) {
                    e.printStackTrace(f375c);
                }
            }
        }
    }

    /* renamed from: s */
    InterfaceC0129i[] m236s() {
        C0003b c0003b = new C0003b(this.url.getHost());
        AbstractC0028e m46a = AbstractC0028e.m46a("ncacn_np:" + m199a().m10e() + "[\\PIPE\\srvsvc]", this.f378f);
        try {
            m46a.m48a(c0003b);
            if (c0003b.f24a != 0) {
                throw new C0084bc(c0003b.f24a, true);
            }
            return c0003b.m17c();
        } finally {
            try {
                m46a.mo51b();
            } catch (IOException e) {
                C0155e c0155e = f375c;
                if (C0155e.f728a >= 4) {
                    e.printStackTrace(f375c);
                }
            }
        }
    }

    /* renamed from: t */
    InterfaceC0129i[] m237t() {
        AbstractC0141u c0135o = new C0135o();
        C0136p c0136p = new C0136p();
        m208a(c0135o, c0136p);
        if (c0136p.f322P != 0) {
            throw new C0084bc(c0136p.f322P, true);
        }
        return c0136p.f324R;
    }

    @Override // java.net.URLConnection
    public String toString() {
        return this.url.toString();
    }

    /* renamed from: u */
    public void m238u() {
        m233p();
        m228k();
        m209a(this.f380h);
    }

    /* renamed from: v */
    public long m239v() {
        if (this.f394v > System.currentTimeMillis()) {
            return this.f393u;
        }
        if (m231n() == 8) {
            C0105bx c0105bx = new C0105bx(1);
            m208a(new C0104bw(1), c0105bx);
            this.f393u = c0105bx.f543a.mo162a();
        } else if (m228k().length() <= 1 || this.f382j == 16) {
            this.f393u = 0L;
        } else {
            this.f393u = m200a(m228k(), 258).mo171d();
        }
        this.f394v = System.currentTimeMillis() + f376d;
        return this.f393u;
    }

    /* renamed from: w */
    public void m240w() {
        String m228k = m228k();
        if (m228k.length() == 1) {
            throw new C0084bc("Invalid operation for workgroups, servers, or shares");
        }
        C0155e c0155e = f375c;
        if (C0155e.f728a >= 3) {
            f375c.println("mkdir: " + m228k);
        }
        m208a(new C0146z(m228k), m192A());
        this.f394v = 0L;
        this.f392t = 0L;
    }

    /* renamed from: x */
    public int m241x() {
        if (m228k().length() == 1) {
            return 0;
        }
        m233p();
        return this.f391s & 32767;
    }

    /* renamed from: y */
    public void m242y() {
        m202a(m241x() & (-2));
    }

    /* renamed from: z */
    public InterfaceC0129i m243z() {
        this.f392t = 0L;
        m233p();
        return new C0086be(this);
    }
}
