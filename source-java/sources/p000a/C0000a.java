package p000a;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.StringTokenizer;
import p000a.p004b.C0036a;
import p000a.p004b.C0042g;
import p000a.p007e.C0155e;

/* renamed from: a.a */
/* loaded from: classes.dex */
public class C0000a {

    /* renamed from: c */
    private static int[] f0c;

    /* renamed from: d */
    private static InetAddress f1d;

    /* renamed from: e */
    private static C0155e f2e = C0155e.m381a();

    /* renamed from: a */
    Object f3a;

    /* renamed from: b */
    String f4b;

    static {
        String str = null;
        InetAddress m99c = C0042g.m99c();
        try {
            f1d = InetAddress.getByName("255.255.255.255");
        } catch (UnknownHostException e) {
        }
        if (0 == 0 || str.length() == 0) {
            if (m99c == null) {
                f0c = new int[3];
                f0c[0] = 3;
                f0c[1] = 2;
                f0c[2] = 1;
                return;
            }
            f0c = new int[4];
            f0c[0] = 3;
            f0c[1] = 0;
            f0c[2] = 2;
            f0c[3] = 1;
            return;
        }
        int[] iArr = new int[4];
        StringTokenizer stringTokenizer = new StringTokenizer(null, ",");
        int i = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String trim = stringTokenizer.nextToken().trim();
            if (trim.equalsIgnoreCase("LMHOSTS")) {
                iArr[i] = 3;
                i++;
            } else if (trim.equalsIgnoreCase("WINS")) {
                if (m99c == null) {
                    C0155e c0155e = f2e;
                    if (C0155e.f728a > 1) {
                        f2e.println("UniAddress resolveOrder specifies WINS however the jcifs.netbios.wins property has not been set");
                    }
                } else {
                    iArr[i] = 0;
                    i++;
                }
            } else if (trim.equalsIgnoreCase("BCAST")) {
                iArr[i] = 1;
                i++;
            } else if (trim.equalsIgnoreCase("DNS")) {
                iArr[i] = 2;
                i++;
            } else {
                C0155e c0155e2 = f2e;
                if (C0155e.f728a > 1) {
                    f2e.println("unknown resolver method: " + trim);
                }
            }
        }
        f0c = new int[i];
        System.arraycopy(iArr, 0, f0c, 0, i);
    }

    public C0000a(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException();
        }
        this.f3a = obj;
    }

    /* renamed from: a */
    public static C0000a m0a(String str) {
        return m1a(str, false);
    }

    /* renamed from: a */
    public static C0000a m1a(String str, boolean z) {
        return m4b(str, z)[0];
    }

    /* renamed from: a */
    static C0042g m2a(String str, InetAddress inetAddress) {
        C0049c c0049c = new C0049c(2);
        C0035b c0035b = new C0035b(c0049c, str, C0042g.m96a(inetAddress) ? 27 : 29, null, inetAddress);
        C0035b c0035b2 = new C0035b(c0049c, str, 32, null, inetAddress);
        c0035b.setDaemon(true);
        c0035b2.setDaemon(true);
        try {
            synchronized (c0049c) {
                c0035b.start();
                c0035b2.start();
                while (c0049c.f176a > 0 && c0035b.f86e == null && c0035b2.f86e == null) {
                    c0049c.wait();
                }
            }
            if (c0035b.f86e != null) {
                return c0035b.f86e;
            }
            if (c0035b2.f86e != null) {
                return c0035b2.f86e;
            }
            throw c0035b.f88g;
        } catch (InterruptedException e) {
            throw new UnknownHostException(str);
        }
    }

    /* renamed from: b */
    static boolean m3b(String str) {
        if (!Character.isDigit(str.charAt(0))) {
            return false;
        }
        int length = str.length();
        char[] charArray = str.toCharArray();
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            if (!Character.isDigit(charArray[i2])) {
                return false;
            }
            if (i3 == length && i == 3) {
                return true;
            }
            if (i3 >= length || charArray[i3] != '.') {
                i2 = i3;
            } else {
                i++;
                i2 = i3 + 1;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static C0000a[] m4b(String str, boolean z) {
        C0042g m2a;
        if (str == null || str.length() == 0) {
            throw new UnknownHostException();
        }
        if (m3b(str)) {
            return new C0000a[]{new C0000a(C0042g.m91a(str))};
        }
        for (int i = 0; i < f0c.length; i++) {
            switch (f0c[i]) {
                case 0:
                    if (str != "\u0001\u0002__MSBROWSE__\u0002" && str.length() <= 15) {
                        m2a = z ? m2a(str, C0042g.m99c()) : C0042g.m93a(str, 32, null, C0042g.m99c());
                        return new C0000a[]{new C0000a(m2a)};
                    }
                    break;
                case 1:
                    if (str.length() <= 15) {
                        m2a = z ? m2a(str, f1d) : C0042g.m93a(str, 32, null, f1d);
                        return new C0000a[]{new C0000a(m2a)};
                    }
                case 2:
                    if (m5c(str)) {
                        throw new UnknownHostException(str);
                    }
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    C0000a[] c0000aArr = new C0000a[allByName.length];
                    for (int i2 = 0; i2 < allByName.length; i2++) {
                        c0000aArr[i2] = new C0000a(allByName[i2]);
                    }
                    return c0000aArr;
                case 3:
                    C0042g m62a = C0036a.m62a(str);
                    if (m62a != null) {
                        m2a = m62a;
                        return new C0000a[]{new C0000a(m2a)};
                    }
                default:
                    throw new UnknownHostException(str);
            }
        }
        throw new UnknownHostException(str);
    }

    /* renamed from: c */
    static boolean m5c(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (!Character.isDigit(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public String m6a() {
        if (this.f3a instanceof C0042g) {
            return ((C0042g) this.f3a).m102e();
        }
        this.f4b = ((InetAddress) this.f3a).getHostName();
        if (m3b(this.f4b)) {
            this.f4b = "*SMBSERVER     ";
        } else {
            int indexOf = this.f4b.indexOf(46);
            if (indexOf > 1 && indexOf < 15) {
                this.f4b = this.f4b.substring(0, indexOf).toUpperCase();
            } else if (this.f4b.length() > 15) {
                this.f4b = "*SMBSERVER     ";
            } else {
                this.f4b = this.f4b.toUpperCase();
            }
        }
        return this.f4b;
    }

    /* renamed from: b */
    public String m7b() {
        if (this.f3a instanceof C0042g) {
            return ((C0042g) this.f3a).m103f();
        }
        if (this.f4b == "*SMBSERVER     ") {
            return null;
        }
        this.f4b = "*SMBSERVER     ";
        return this.f4b;
    }

    /* renamed from: c */
    public Object m8c() {
        return this.f3a;
    }

    /* renamed from: d */
    public String m9d() {
        return this.f3a instanceof C0042g ? ((C0042g) this.f3a).m104g() : ((InetAddress) this.f3a).getHostName();
    }

    /* renamed from: e */
    public String m10e() {
        return this.f3a instanceof C0042g ? ((C0042g) this.f3a).m106i() : ((InetAddress) this.f3a).getHostAddress();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0000a) && this.f3a.equals(((C0000a) obj).f3a);
    }

    public int hashCode() {
        return this.f3a.hashCode();
    }

    public String toString() {
        return this.f3a.toString();
    }
}
