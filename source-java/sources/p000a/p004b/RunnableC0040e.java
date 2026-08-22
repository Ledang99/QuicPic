package p000a.p004b;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.StringTokenizer;
import org.apache.http.protocol.HttpRequestExecutor;
import p000a.p007e.C0154d;
import p000a.p007e.C0155e;

/* renamed from: a.b.e */
/* loaded from: classes.dex */
class RunnableC0040e implements Runnable {

    /* renamed from: c */
    private static final InetAddress f100c = null;

    /* renamed from: d */
    private static final String f101d = null;

    /* renamed from: e */
    private static C0155e f102e = C0155e.m381a();

    /* renamed from: a */
    InetAddress f103a;

    /* renamed from: b */
    InetAddress f104b;

    /* renamed from: f */
    private final Object f105f;

    /* renamed from: g */
    private int f106g;

    /* renamed from: h */
    private int f107h;

    /* renamed from: i */
    private byte[] f108i;

    /* renamed from: j */
    private byte[] f109j;

    /* renamed from: k */
    private DatagramSocket f110k;

    /* renamed from: l */
    private DatagramPacket f111l;

    /* renamed from: m */
    private DatagramPacket f112m;

    /* renamed from: n */
    private HashMap f113n;

    /* renamed from: o */
    private Thread f114o;

    /* renamed from: p */
    private int f115p;

    /* renamed from: q */
    private int[] f116q;

    RunnableC0040e() {
        this(0, f100c);
    }

    RunnableC0040e(int i, InetAddress inetAddress) {
        this.f105f = new Object();
        this.f113n = new HashMap();
        this.f115p = 0;
        this.f106g = i;
        this.f103a = inetAddress;
        try {
            this.f104b = InetAddress.getByName("255.255.255.255");
        } catch (UnknownHostException e) {
        }
        this.f108i = new byte[576];
        this.f109j = new byte[576];
        this.f112m = new DatagramPacket(this.f108i, 576, this.f104b, 137);
        this.f111l = new DatagramPacket(this.f109j, 576);
        if (f101d == null || f101d.length() == 0) {
            if (C0042g.m99c() == null) {
                this.f116q = new int[2];
                this.f116q[0] = 1;
                this.f116q[1] = 2;
                return;
            } else {
                this.f116q = new int[3];
                this.f116q[0] = 1;
                this.f116q[1] = 3;
                this.f116q[2] = 2;
                return;
            }
        }
        int[] iArr = new int[3];
        StringTokenizer stringTokenizer = new StringTokenizer(f101d, ",");
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (trim.equalsIgnoreCase("LMHOSTS")) {
                iArr[i2] = 1;
                i2++;
            } else if (trim.equalsIgnoreCase("WINS")) {
                if (C0042g.m99c() == null) {
                    C0155e c0155e = f102e;
                    if (C0155e.f728a > 1) {
                        f102e.println("NetBIOS resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else {
                    iArr[i2] = 3;
                    i2++;
                }
            } else if (trim.equalsIgnoreCase("BCAST")) {
                iArr[i2] = 2;
                i2++;
            } else if (!trim.equalsIgnoreCase("DNS")) {
                C0155e c0155e2 = f102e;
                if (C0155e.f728a > 1) {
                    f102e.println("unknown resolver method: " + trim);
                }
            }
        }
        this.f116q = new int[i2];
        System.arraycopy(iArr, 0, this.f116q, 0, i2);
    }

    /* renamed from: a */
    int m71a() {
        int i = this.f115p + 1;
        this.f115p = i;
        if ((i & 65535) == 0) {
            this.f115p = 1;
        }
        return this.f115p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0071, code lost:
    
        continue;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    C0042g m72a(C0037b c0037b, InetAddress inetAddress) {
        int i = 2;
        C0038c c0038c = new C0038c(c0037b);
        C0039d c0039d = new C0039d();
        if (inetAddress != null) {
            c0038c.f141y = inetAddress;
            c0038c.f132p = inetAddress.getAddress()[3] == -1;
            do {
                try {
                    m74a(c0038c, c0039d, HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                    if (!c0039d.f126j || c0039d.f121e != 0) {
                        i--;
                        if (i <= 0) {
                            break;
                        }
                    } else {
                        int length = c0039d.f118b.length - 1;
                        c0039d.f118b[length].f151f.f99e = inetAddress.hashCode();
                        return c0039d.f118b[length];
                    }
                } catch (IOException e) {
                    C0155e c0155e = f102e;
                    if (C0155e.f728a > 1) {
                        e.printStackTrace(f102e);
                    }
                    throw new UnknownHostException(c0037b.f96b);
                }
            } while (c0038c.f132p);
            throw new UnknownHostException(c0037b.f96b);
        }
        for (int i2 = 0; i2 < this.f116q.length; i2++) {
            switch (this.f116q[i2]) {
                case 1:
                    C0042g m61a = C0036a.m61a(c0037b);
                    if (m61a != null) {
                        m61a.f151f.f99e = 0;
                        return m61a;
                    }
                    continue;
                case 2:
                case 3:
                    if (this.f116q[i2] != 3 || c0037b.f96b == "\u0001\u0002__MSBROWSE__\u0002" || c0037b.f98d == 29) {
                        c0038c.f141y = this.f104b;
                        c0038c.f132p = true;
                    } else {
                        c0038c.f141y = C0042g.m99c();
                        c0038c.f132p = false;
                    }
                    int i3 = 2;
                    while (true) {
                        int i4 = i3 - 1;
                        if (i3 > 0) {
                            try {
                                m74a(c0038c, c0039d, HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                                if (c0039d.f126j && c0039d.f121e == 0) {
                                    c0039d.f118b[0].f151f.f99e = c0038c.f141y.hashCode();
                                    return c0039d.f118b[0];
                                }
                                if (this.f116q[i2] != 3) {
                                    i3 = i4;
                                }
                            } catch (IOException e2) {
                                C0155e c0155e2 = f102e;
                                if (C0155e.f728a > 1) {
                                    e2.printStackTrace(f102e);
                                }
                                throw new UnknownHostException(c0037b.f96b);
                            }
                        }
                    }
                    break;
                default:
                    continue;
            }
        }
        throw new UnknownHostException(c0037b.f96b);
    }

    /* renamed from: a */
    void m73a(int i) {
        this.f107h = 0;
        this.f107h = Math.max(5000, i);
        if (this.f110k == null) {
            this.f110k = new DatagramSocket(this.f106g, this.f103a);
            this.f114o = new Thread(this, "JCIFS-NameServiceClient");
            this.f114o.setDaemon(true);
            this.f114o.start();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005e, code lost:
    
        r4 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
    
        if (r13 <= 0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0064, code lost:
    
        r12.wait(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006a, code lost:
    
        if (r12.f126j == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r11.f135s != r12.f137u) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0072, code lost:
    
        r10.f113n.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
    
        r12.f126j = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0099, code lost:
    
        r13 = (int) (r13 - (java.lang.System.currentTimeMillis() - r4));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009d, code lost:
    
        r10.f113n.remove(r1);
        r2 = r10.f105f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a4, code lost:
    
        monitor-enter(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ab, code lost:
    
        if (p000a.p004b.C0042g.m96a(r11.f141y) != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b6, code lost:
    
        if (r11.f141y != p000a.p004b.C0042g.m99c()) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b8, code lost:
    
        p000a.p004b.C0042g.m101d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bb, code lost:
    
        r11.f141y = p000a.p004b.C0042g.m99c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c1, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ad, code lost:
    
        monitor-exit(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0087, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0088, code lost:
    
        r10.f113n.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x008d, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x007c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0086, code lost:
    
        throw new java.io.IOException(r0.getMessage());
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:? -> B:58:0x0079). Please report as a decompilation issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m74a(AbstractC0041f abstractC0041f, AbstractC0041f abstractC0041f2, int i) {
        Integer num;
        Integer num2 = null;
        int length = C0042g.f142a.length;
        if (length == 0) {
            length = 1;
        }
        synchronized (abstractC0041f2) {
            while (true) {
                int i2 = length - 1;
                if (length <= 0) {
                    break;
                }
                try {
                    synchronized (this.f105f) {
                        try {
                            abstractC0041f.f119c = m71a();
                            num = new Integer(abstractC0041f.f119c);
                            try {
                                this.f112m.setAddress(abstractC0041f.f141y);
                                this.f112m.setLength(abstractC0041f.m81g(this.f108i, 0));
                                abstractC0041f2.f126j = false;
                                this.f113n.put(num, abstractC0041f2);
                                m73a(i + 1000);
                                this.f110k.send(this.f112m);
                                C0155e c0155e = f102e;
                                if (C0155e.f728a > 3) {
                                    f102e.println(abstractC0041f);
                                    C0154d.m380a(f102e, this.f108i, 0, this.f112m.getLength());
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                    throw th;
                } catch (InterruptedException e) {
                    e = e;
                } catch (Throwable th3) {
                    th = th3;
                    num = num2;
                }
                length = i2;
                num2 = num;
            }
        }
    }

    /* renamed from: a */
    C0042g[] m75a(C0042g c0042g) {
        C0046k c0046k = new C0046k(c0042g);
        C0045j c0045j = new C0045j(new C0037b("*\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000", 0, null));
        c0045j.f141y = c0042g.m105h();
        int i = 2;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                throw new UnknownHostException(c0042g.f151f.f96b);
            }
            try {
                m74a(c0045j, c0046k, HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                if (c0046k.f126j && c0046k.f121e == 0) {
                    int hashCode = c0045j.f141y.hashCode();
                    for (int i3 = 0; i3 < c0046k.f171z.length; i3++) {
                        c0046k.f171z[i3].f151f.f99e = hashCode;
                    }
                    return c0046k.f171z;
                }
                i = i2;
            } catch (IOException e) {
                C0155e c0155e = f102e;
                if (C0155e.f728a > 1) {
                    e.printStackTrace(f102e);
                }
                throw new UnknownHostException(c0042g.toString());
            }
        }
    }

    /* renamed from: b */
    void m76b() {
        synchronized (this.f105f) {
            if (this.f110k != null) {
                this.f110k.close();
                this.f110k = null;
            }
            this.f114o = null;
            this.f113n.clear();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.f114o == Thread.currentThread()) {
            try {
                this.f111l.setLength(576);
                this.f110k.setSoTimeout(this.f107h);
                this.f110k.receive(this.f111l);
                C0155e c0155e = f102e;
                if (C0155e.f728a > 3) {
                    f102e.println("NetBIOS: new data read from socket");
                }
                AbstractC0041f abstractC0041f = (AbstractC0041f) this.f113n.get(new Integer(AbstractC0041f.m80f(this.f109j, 0)));
                if (abstractC0041f != null && !abstractC0041f.f126j) {
                    synchronized (abstractC0041f) {
                        abstractC0041f.m82h(this.f109j, 0);
                        abstractC0041f.f126j = true;
                        C0155e c0155e2 = f102e;
                        if (C0155e.f728a > 3) {
                            f102e.println(abstractC0041f);
                            C0154d.m380a(f102e, this.f109j, 0, this.f111l.getLength());
                        }
                        abstractC0041f.notify();
                    }
                }
            } catch (SocketTimeoutException e) {
                return;
            } catch (Exception e2) {
                C0155e c0155e3 = f102e;
                if (C0155e.f728a > 2) {
                    e2.printStackTrace(f102e);
                }
                return;
            } finally {
                m76b();
            }
        }
    }
}
