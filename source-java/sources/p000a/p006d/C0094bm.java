package p000a.p006d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import p000a.C0000a;
import p000a.p007e.C0152b;
import p000a.p007e.C0154d;
import p000a.p007e.C0155e;
import p000a.p007e.p008a.AbstractC0149b;
import p000a.p007e.p008a.AbstractRunnableC0150c;
import p000a.p007e.p008a.C0151d;
import p000a.p007e.p008a.InterfaceC0148a;

/* renamed from: a.d.bm */
/* loaded from: classes.dex */
public class C0094bm extends AbstractRunnableC0150c implements InterfaceC0083bb {

    /* renamed from: a */
    static final byte[] f443a = new byte[65535];

    /* renamed from: b */
    static final C0061ag f444b = new C0061ag();

    /* renamed from: c */
    static C0155e f445c = C0155e.m381a();

    /* renamed from: d */
    static HashMap f446d = null;

    /* renamed from: e */
    InetAddress f448e;

    /* renamed from: f */
    int f449f;

    /* renamed from: g */
    C0000a f450g;

    /* renamed from: h */
    Socket f451h;

    /* renamed from: i */
    int f452i;

    /* renamed from: j */
    int f453j;

    /* renamed from: k */
    OutputStream f454k;

    /* renamed from: l */
    InputStream f455l;

    /* renamed from: m */
    byte[] f456m = new byte[512];

    /* renamed from: n */
    C0144x f457n = new C0144x();

    /* renamed from: o */
    long f458o = System.currentTimeMillis() + 35000;

    /* renamed from: p */
    LinkedList f459p = new LinkedList();

    /* renamed from: q */
    C0142v f460q = null;

    /* renamed from: r */
    LinkedList f461r = new LinkedList();

    /* renamed from: s */
    C0095bn f462s = new C0095bn(this);

    /* renamed from: t */
    int f463t = 51203;

    /* renamed from: u */
    int f464u = 10;

    /* renamed from: v */
    int f465v = 65535;

    /* renamed from: w */
    int f466w = 65535;

    /* renamed from: x */
    int f467x = 4180;

    /* renamed from: y */
    int f468y = 0;

    /* renamed from: z */
    boolean f469z = true;

    /* renamed from: A */
    String f447A = null;

    C0094bm(C0000a c0000a, int i, InetAddress inetAddress, int i2) {
        this.f450g = c0000a;
        this.f452i = i;
        this.f448e = inetAddress;
        this.f449f = i2;
    }

    /* renamed from: a */
    static synchronized C0094bm m265a(C0000a c0000a, int i) {
        C0094bm m266a;
        synchronized (C0094bm.class) {
            m266a = m266a(c0000a, i, f363W, 0, null);
        }
        return m266a;
    }

    /* renamed from: a */
    static synchronized C0094bm m266a(C0000a c0000a, int i, InetAddress inetAddress, int i2, String str) {
        C0094bm c0094bm;
        synchronized (C0094bm.class) {
            synchronized (f368ab) {
                ListIterator listIterator = f368ab.listIterator();
                while (true) {
                    if (!listIterator.hasNext()) {
                        c0094bm = new C0094bm(c0000a, i, inetAddress, i2);
                        f368ab.add(0, c0094bm);
                        break;
                    }
                    c0094bm = (C0094bm) listIterator.next();
                    if (c0094bm.m280b(c0000a, i, inetAddress, i2, str) && c0094bm.f461r.size() < 250) {
                        break;
                    }
                }
            }
        }
        return c0094bm;
    }

    /* renamed from: a */
    private void m267a(int i, AbstractC0141u abstractC0141u) {
        synchronized (this.f456m) {
            if (i == 139) {
                m270a();
            } else {
                if (i == 0) {
                    i = 445;
                }
                this.f451h = new Socket();
                if (this.f448e != null) {
                    this.f451h.bind(new InetSocketAddress(this.f448e, this.f449f));
                }
                this.f451h.connect(new InetSocketAddress(this.f450g.m10e(), i), 35000);
                this.f451h.setSoTimeout(35000);
                this.f454k = this.f451h.getOutputStream();
                this.f455l = this.f451h.getInputStream();
            }
            int i2 = this.f453j + 1;
            this.f453j = i2;
            if (i2 == 32000) {
                this.f453j = 1;
            }
            f444b.f677q = this.f453j;
            int a2 = f444b.mo183a(this.f456m, 4);
            C0152b.m371a(a2 & 65535, this.f456m, 0);
            C0155e c0155e = f445c;
            if (C0155e.f728a >= 4) {
                f445c.println(f444b);
                C0155e c0155e2 = f445c;
                if (C0155e.f728a >= 6) {
                    C0154d.m380a(f445c, this.f456m, 4, a2);
                }
            }
            this.f454k.write(this.f456m, 0, a2 + 4);
            this.f454k.flush();
            if (mo284d() == null) {
                throw new IOException("transport closed in negotiate");
            }
            int m374a = C0152b.m374a(this.f456m, 2) & 65535;
            if (m374a < 33 || m374a + 4 > this.f456m.length) {
                throw new IOException("Invalid payload size: " + m374a);
            }
            m365a(this.f455l, this.f456m, 36, m374a - 32);
            abstractC0141u.mo184b(this.f456m, 4);
            C0155e c0155e3 = f445c;
            if (C0155e.f728a >= 4) {
                f445c.println(abstractC0141u);
                C0155e c0155e4 = f445c;
                if (C0155e.f728a >= 6) {
                    C0154d.m380a(f445c, this.f456m, 4, a2);
                }
            }
        }
    }

    /* renamed from: a */
    synchronized C0092bk m268a(C0140t c0140t) {
        C0092bk c0092bk;
        ListIterator listIterator = this.f461r.listIterator();
        while (true) {
            if (listIterator.hasNext()) {
                c0092bk = (C0092bk) listIterator.next();
                if (c0092bk.m263a(c0140t)) {
                    c0092bk.f433f = c0140t;
                    break;
                }
            } else {
                long j = this.f458o;
                long currentTimeMillis = System.currentTimeMillis();
                if (j < currentTimeMillis) {
                    this.f458o = 35000 + currentTimeMillis;
                    ListIterator listIterator2 = this.f461r.listIterator();
                    while (listIterator2.hasNext()) {
                        C0092bk c0092bk2 = (C0092bk) listIterator2.next();
                        if (c0092bk2.f434g < currentTimeMillis) {
                            c0092bk2.m262a(false);
                        }
                    }
                }
                c0092bk = new C0092bk(this.f450g, this.f452i, this.f448e, this.f449f, c0140t);
                c0092bk.f432e = this;
                this.f461r.add(c0092bk);
            }
        }
        return c0092bk;
    }

    /* renamed from: a */
    C0126f m269a(C0140t c0140t, String str, int i) {
        C0096bo m260a = m268a(c0140t).m260a("IPC$", (String) null);
        C0102bu c0102bu = new C0102bu();
        m260a.m286a(new C0101bt(str), c0102bu);
        if (c0102bu.f525S == 0) {
            return null;
        }
        if (i == 0 || c0102bu.f525S < i) {
            i = c0102bu.f525S;
        }
        C0126f c0126f = new C0126f();
        String[] strArr = new String[4];
        long currentTimeMillis = System.currentTimeMillis() + 300000;
        int i2 = 0;
        while (true) {
            c0126f.f606g = c0140t.f659m;
            c0126f.f601b = c0102bu.f527U[i2].f529a;
            c0126f.f607h = currentTimeMillis;
            if (str.equals("")) {
                c0126f.f602c = c0102bu.f527U[i2].f530b.substring(1).toLowerCase();
            } else {
                m274a(c0102bu.f527U[i2].f531c, strArr);
                c0126f.f602c = strArr[1];
                c0126f.f603d = strArr[2];
                c0126f.f605f = strArr[3];
            }
            c0126f.f600a = c0102bu.f528a;
            i2++;
            if (i2 == i) {
                return c0126f.f608i;
            }
            c0126f.m307a(new C0126f());
            c0126f = c0126f.f608i;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to find switch 'out' block (already processed)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:202)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:100)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:103)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* renamed from: a */
    void m270a() {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000a.p006d.C0094bm.m270a():void");
    }

    /* renamed from: a */
    void m271a(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        abstractC0141u2.f672l = C0084bc.m188b(abstractC0141u2.f672l);
        switch (abstractC0141u2.f672l) {
            case -2147483643:
            case -1073741802:
            case 0:
                if (abstractC0141u2.f685y) {
                    throw new C0084bc("Signature verification failed.");
                }
                return;
            case -1073741790:
            case -1073741718:
            case -1073741715:
            case -1073741714:
            case -1073741713:
            case -1073741712:
            case -1073741711:
            case -1073741710:
            case -1073741428:
            case -1073741260:
                throw new C0143w(abstractC0141u2.f672l);
            case -1073741225:
                if (abstractC0141u.f686z == null) {
                    throw new C0084bc(abstractC0141u2.f672l, (Throwable) null);
                }
                C0126f m269a = m269a(abstractC0141u.f686z, abstractC0141u.f664A, 1);
                if (m269a == null) {
                    throw new C0084bc(abstractC0141u2.f672l, (Throwable) null);
                }
                C0085bd.f377e.m304a(abstractC0141u.f664A, m269a);
                throw m269a;
            default:
                throw new C0084bc(abstractC0141u2.f672l, (Throwable) null);
        }
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: a */
    protected void mo272a(InterfaceC0148a interfaceC0148a) {
        int i = this.f453j + 1;
        this.f453j = i;
        if (i == 32000) {
            this.f453j = 1;
        }
        ((AbstractC0141u) interfaceC0148a).f677q = this.f453j;
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: a */
    protected void mo273a(AbstractC0149b abstractC0149b) {
        AbstractC0141u abstractC0141u = (AbstractC0141u) abstractC0149b;
        abstractC0141u.f680t = this.f469z;
        abstractC0141u.f682v = (this.f467x & Integer.MIN_VALUE) == Integer.MIN_VALUE;
        synchronized (f443a) {
            System.arraycopy(this.f456m, 0, f443a, 0, 36);
            int m374a = 65535 & C0152b.m374a(f443a, 2);
            if (m374a < 33 || m374a + 4 > this.f466w) {
                throw new IOException("Invalid payload size: " + m374a);
            }
            int m377c = C0152b.m377c(f443a, 9) & (-1);
            if (abstractC0141u.f667g == 46 && (m377c == 0 || m377c == -2147483643)) {
                C0069ao c0069ao = (C0069ao) abstractC0141u;
                m365a(this.f455l, f443a, 36, 27);
                abstractC0141u.mo184b(f443a, 4);
                int i = c0069ao.f263E - 59;
                if (c0069ao.f679s > 0 && i > 0 && i < 4) {
                    m365a(this.f455l, f443a, 63, i);
                }
                if (c0069ao.f262D > 0) {
                    m365a(this.f455l, c0069ao.f264b, c0069ao.f265c, c0069ao.f262D);
                }
            } else {
                m365a(this.f455l, f443a, 36, m374a - 32);
                abstractC0141u.mo184b(f443a, 4);
                if (abstractC0141u instanceof AbstractC0074at) {
                    ((AbstractC0074at) abstractC0141u).nextElement();
                }
            }
            if (this.f460q != null && abstractC0141u.f672l == 0) {
                this.f460q.m354a(f443a, 4, abstractC0141u);
            }
            C0155e c0155e = f445c;
            if (C0155e.f728a >= 4) {
                f445c.println(abstractC0149b);
                C0155e c0155e2 = f445c;
                if (C0155e.f728a >= 6) {
                    C0154d.m380a(f445c, f443a, 4, m374a);
                }
            }
        }
    }

    /* renamed from: a */
    void m274a(String str, String[] strArr) {
        int i;
        int i2;
        int i3 = 0;
        int length = strArr.length - 1;
        int length2 = str.length();
        int i4 = 0;
        int i5 = 0;
        while (i5 != length) {
            if (i4 == length2 || str.charAt(i4) == '\\') {
                int i6 = i5 + 1;
                strArr[i5] = str.substring(i3, i4);
                i = i4 + 1;
                i2 = i6;
            } else {
                int i7 = i3;
                i2 = i5;
                i = i7;
            }
            int i8 = i4 + 1;
            if (i4 >= length2) {
                while (i2 < strArr.length) {
                    strArr[i2] = "";
                    i2++;
                }
                return;
            } else {
                i4 = i8;
                int i9 = i;
                i5 = i2;
                i3 = i9;
            }
        }
        strArr[length] = str.substring(i3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: a */
    protected void mo275a(boolean z) {
        ListIterator listIterator = this.f461r.listIterator();
        while (listIterator.hasNext()) {
            try {
                ((C0092bk) listIterator.next()).m262a(z);
            } finally {
                this.f460q = null;
                this.f451h = null;
                this.f447A = null;
            }
        }
        this.f451h.shutdownOutput();
        this.f454k.close();
        this.f455l.close();
        this.f451h.close();
    }

    /* renamed from: a */
    boolean m276a(int i) {
        try {
            m367a(30000L);
            return (this.f467x & i) == i;
        } catch (IOException e) {
            throw new C0084bc(e.getMessage(), e);
        }
    }

    /* renamed from: b */
    public void m277b() {
        try {
            super.m367a(30000L);
        } catch (C0151d e) {
            throw new C0084bc("Failed to connect: " + this.f450g, e);
        }
    }

    /* renamed from: b */
    void m278b(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        long j = 30000;
        m277b();
        abstractC0141u.f673m |= this.f463t;
        abstractC0141u.f680t = this.f469z;
        abstractC0141u.f666C = abstractC0141u2;
        if (abstractC0141u.f665B == null) {
            abstractC0141u.f665B = this.f460q;
        }
        try {
            if (abstractC0141u2 == null) {
                m283c(abstractC0141u);
                return;
            }
            if (abstractC0141u instanceof AbstractC0073as) {
                abstractC0141u2.f667g = abstractC0141u.f667g;
                AbstractC0073as abstractC0073as = (AbstractC0073as) abstractC0141u;
                AbstractC0074at abstractC0074at = (AbstractC0074at) abstractC0141u2;
                abstractC0073as.f301U = this.f465v;
                abstractC0074at.mo178e();
                try {
                    C0108c.m295a(abstractC0073as, abstractC0074at);
                    abstractC0073as.nextElement();
                    if (abstractC0073as.hasMoreElements()) {
                        C0144x c0144x = new C0144x();
                        super.m368a(abstractC0073as, c0144x, 30000L);
                        if (c0144x.f672l != 0) {
                            m271a(abstractC0073as, c0144x);
                        }
                        abstractC0073as.nextElement();
                    } else {
                        mo272a((InterfaceC0148a) abstractC0073as);
                    }
                    synchronized (this) {
                        abstractC0141u2.f681u = false;
                        abstractC0074at.f712b_ = false;
                        try {
                            try {
                                this.f719H.put(abstractC0073as, abstractC0074at);
                                do {
                                    m283c(abstractC0073as);
                                    if (!abstractC0073as.hasMoreElements()) {
                                        break;
                                    }
                                } while (abstractC0073as.nextElement() != null);
                                abstractC0074at.f711a_ = System.currentTimeMillis() + 30000;
                                while (abstractC0074at.hasMoreElements()) {
                                    wait(j);
                                    j = abstractC0074at.f711a_ - System.currentTimeMillis();
                                    if (j <= 0) {
                                        throw new C0151d(this + " timedout waiting for response to " + abstractC0073as);
                                    }
                                }
                                if (abstractC0141u2.f672l != 0) {
                                    m271a(abstractC0073as, abstractC0074at);
                                }
                            } catch (InterruptedException e) {
                                throw new C0151d(e);
                            }
                        } finally {
                            this.f719H.remove(abstractC0073as);
                        }
                    }
                } finally {
                    C0108c.m296a(abstractC0073as.f302V);
                    C0108c.m296a(abstractC0074at.f321O);
                }
            } else {
                abstractC0141u2.f667g = abstractC0141u.f667g;
                super.m368a(abstractC0141u, abstractC0141u2, 30000L);
            }
            m271a(abstractC0141u, abstractC0141u2);
        } catch (C0084bc e2) {
            throw e2;
        } catch (IOException e3) {
            throw new C0084bc(e3.getMessage(), e3);
        }
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: b */
    protected void mo279b(InterfaceC0148a interfaceC0148a) {
        synchronized (f443a) {
            AbstractC0141u abstractC0141u = (AbstractC0141u) interfaceC0148a;
            int mo183a = abstractC0141u.mo183a(f443a, 4);
            C0152b.m371a(65535 & mo183a, f443a, 0);
            C0155e c0155e = f445c;
            if (C0155e.f728a >= 4) {
                AbstractC0141u abstractC0141u2 = abstractC0141u;
                do {
                    f445c.println(abstractC0141u2);
                    if (!(abstractC0141u2 instanceof AbstractC0081b)) {
                        break;
                    } else {
                        abstractC0141u2 = ((AbstractC0081b) abstractC0141u2).f359a;
                    }
                } while (abstractC0141u2 != null);
                C0155e c0155e2 = f445c;
                if (C0155e.f728a >= 6) {
                    C0154d.m380a(f445c, f443a, 4, mo183a);
                }
            }
            this.f454k.write(f443a, 0, mo183a + 4);
        }
    }

    /* renamed from: b */
    boolean m280b(C0000a c0000a, int i, InetAddress inetAddress, int i2, String str) {
        if (str == null) {
            str = c0000a.m9d();
        }
        return (this.f447A == null || str.equalsIgnoreCase(this.f447A)) && c0000a.equals(this.f450g) && (i == 0 || i == this.f452i || (i == 445 && this.f452i == 139)) && ((inetAddress == this.f448e || (inetAddress != null && inetAddress.equals(this.f448e))) && i2 == this.f449f);
    }

    /* renamed from: b */
    boolean m281b(C0140t c0140t) {
        return ((this.f463t & 4) == 0 || this.f460q != null || c0140t == C0140t.f648e || C0140t.f648e.equals(c0140t)) ? false : true;
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: c */
    protected void mo282c() {
        C0062ah c0062ah = new C0062ah(this.f462s);
        try {
            m267a(this.f452i, c0062ah);
        } catch (ConnectException e) {
            this.f452i = (this.f452i == 0 || this.f452i == 445) ? 139 : 445;
            m267a(this.f452i, c0062ah);
        } catch (NoRouteToHostException e2) {
            this.f452i = (this.f452i == 0 || this.f452i == 445) ? 139 : 445;
            m267a(this.f452i, c0062ah);
        }
        if (c0062ah.f233a > 10) {
            throw new C0084bc("This client does not support the negotiated dialect.");
        }
        if ((this.f462s.f473d & Integer.MIN_VALUE) == Integer.MIN_VALUE || this.f462s.f484o != 8) {
        }
        this.f447A = this.f450g.m9d();
        if (this.f462s.f479j) {
            this.f463t |= 4;
        } else {
            if (this.f462s.f478i) {
            }
            this.f463t &= 65531;
        }
        this.f464u = Math.min(this.f464u, this.f462s.f470a);
        if (this.f464u < 1) {
            this.f464u = 1;
        }
        this.f465v = Math.min(this.f465v, this.f462s.f471b);
        this.f467x &= this.f462s.f473d;
        if ((this.f462s.f473d & Integer.MIN_VALUE) == Integer.MIN_VALUE) {
            this.f467x |= Integer.MIN_VALUE;
        }
        if ((this.f467x & 4) == 0) {
            this.f469z = false;
            this.f463t &= 32767;
        }
    }

    /* renamed from: c */
    protected void m283c(InterfaceC0148a interfaceC0148a) {
        try {
            mo279b(interfaceC0148a);
        } catch (IOException e) {
            C0155e c0155e = f445c;
            if (C0155e.f728a > 2) {
                e.printStackTrace(f445c);
            }
            try {
                m369b(true);
            } catch (IOException e2) {
                e2.printStackTrace(f445c);
            }
            throw e;
        }
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: d */
    protected InterfaceC0148a mo284d() {
        while (m365a(this.f455l, this.f456m, 0, 4) >= 4) {
            if (this.f456m[0] != -123) {
                if (m365a(this.f455l, this.f456m, 4, 32) < 32) {
                    return null;
                }
                C0155e c0155e = f445c;
                if (C0155e.f728a >= 4) {
                    f445c.println("New data read: " + this);
                    C0154d.m380a(f445c, this.f456m, 4, 32);
                }
                while (true) {
                    if (this.f456m[0] == 0 && this.f456m[1] == 0 && this.f456m[4] == -1 && this.f456m[5] == 83 && this.f456m[6] == 77 && this.f456m[7] == 66) {
                        this.f457n.f677q = C0152b.m376b(this.f456m, 34) & 65535;
                        return this.f457n;
                    }
                    for (int i = 0; i < 35; i++) {
                        this.f456m[i] = this.f456m[i + 1];
                    }
                    int read = this.f455l.read();
                    if (read == -1) {
                        return null;
                    }
                    this.f456m[35] = (byte) read;
                }
            }
        }
        return null;
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    /* renamed from: e */
    protected void mo285e() {
        int m374a = C0152b.m374a(this.f456m, 2) & 65535;
        if (m374a < 33 || m374a + 4 > this.f466w) {
            this.f455l.skip(this.f455l.available());
        } else {
            this.f455l.skip(m374a - 32);
        }
    }

    @Override // p000a.p007e.p008a.AbstractRunnableC0150c
    public String toString() {
        return super.toString() + "[" + this.f450g + ":" + this.f452i + "]";
    }
}
