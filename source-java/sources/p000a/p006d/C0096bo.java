package p000a.p006d;

import org.apache.http.message.TokenParser;
import org.apache.http.util.LangUtils;
import p000a.p007e.C0155e;

/* renamed from: a.d.bo */
/* loaded from: classes.dex */
class C0096bo {

    /* renamed from: j */
    private static int f488j;

    /* renamed from: a */
    int f489a;

    /* renamed from: b */
    int f490b;

    /* renamed from: c */
    String f491c;

    /* renamed from: d */
    String f492d;

    /* renamed from: e */
    String f493e;

    /* renamed from: f */
    C0092bk f494f;

    /* renamed from: g */
    boolean f495g;

    /* renamed from: h */
    boolean f496h;

    /* renamed from: i */
    int f497i;

    C0096bo(C0092bk c0092bk, String str, String str2) {
        this.f492d = "?????";
        this.f494f = c0092bk;
        this.f491c = str.toUpperCase();
        if (str2 != null && !str2.startsWith("??")) {
            this.f492d = str2;
        }
        this.f493e = this.f492d;
        this.f489a = 0;
    }

    /* renamed from: a */
    void m286a(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        synchronized (this.f494f.m259a()) {
            if (abstractC0141u2 != null) {
                abstractC0141u2.f681u = false;
            }
            m289b(abstractC0141u, abstractC0141u2);
            if (abstractC0141u == null || (abstractC0141u2 != null && abstractC0141u2.f681u)) {
                return;
            }
            if (!this.f492d.equals("A:")) {
                switch (abstractC0141u.f667g) {
                    case -94:
                    case 4:
                    case 45:
                    case 46:
                    case 47:
                    case 113:
                        break;
                    case LangUtils.HASH_OFFSET /* 37 */:
                    case 50:
                        switch (((AbstractC0073as) abstractC0141u).f299S & 255) {
                            case 0:
                            case 16:
                            case 35:
                            case 38:
                            case 83:
                            case 84:
                            case 104:
                            case 215:
                                break;
                            default:
                                throw new C0084bc("Invalid operation for " + this.f492d + " service");
                        }
                    default:
                        throw new C0084bc("Invalid operation for " + this.f492d + " service" + abstractC0141u);
                }
            }
            abstractC0141u.f674n = this.f490b;
            if (this.f495g && !this.f492d.equals("IPC") && abstractC0141u.f664A != null && abstractC0141u.f664A.length() > 0) {
                abstractC0141u.f673m = 4096;
                abstractC0141u.f664A = TokenParser.ESCAPE + this.f494f.m259a().f447A + TokenParser.ESCAPE + this.f491c + abstractC0141u.f664A;
            }
            try {
                this.f494f.m261a(abstractC0141u, abstractC0141u2);
            } catch (C0084bc e) {
                if (e.m190a() == -1073741623) {
                    m287a(true);
                }
                throw e;
            }
        }
    }

    /* renamed from: a */
    void m287a(boolean z) {
        synchronized (this.f494f.m259a()) {
            if (this.f489a != 2) {
                return;
            }
            this.f489a = 3;
            if (!z && this.f490b != 0) {
                try {
                    m286a(new C0077aw(), (AbstractC0141u) null);
                } catch (C0084bc e) {
                    C0094bm c0094bm = this.f494f.f432e;
                    C0155e c0155e = C0094bm.f445c;
                    if (C0155e.f728a > 1) {
                        C0094bm c0094bm2 = this.f494f.f432e;
                        e.printStackTrace(C0094bm.f445c);
                    }
                }
            }
            this.f495g = false;
            this.f496h = false;
            this.f489a = 0;
            this.f494f.f432e.notifyAll();
        }
    }

    /* renamed from: a */
    boolean m288a(String str, String str2) {
        return this.f491c.equalsIgnoreCase(str) && (str2 == null || str2.startsWith("??") || this.f492d.equalsIgnoreCase(str2));
    }

    /* renamed from: b */
    void m289b(AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        synchronized (this.f494f.m259a()) {
            while (this.f489a != 0) {
                if (this.f489a == 2 || this.f489a == 3) {
                    return;
                }
                try {
                    this.f494f.f432e.wait();
                } catch (InterruptedException e) {
                    throw new C0084bc(e.getMessage(), e);
                }
            }
            this.f489a = 1;
            try {
                this.f494f.f432e.m277b();
                String str = "\\\\" + this.f494f.f432e.f447A + TokenParser.ESCAPE + this.f491c;
                this.f492d = this.f493e;
                C0094bm c0094bm = this.f494f.f432e;
                C0155e c0155e = C0094bm.f445c;
                if (C0155e.f728a >= 4) {
                    C0094bm c0094bm2 = this.f494f.f432e;
                    C0094bm.f445c.println("treeConnect: unc=" + str + ",service=" + this.f492d);
                }
                C0076av c0076av = new C0076av(abstractC0141u2);
                this.f494f.m261a(new C0075au(this.f494f, str, this.f492d, abstractC0141u), c0076av);
                this.f490b = c0076av.f674n;
                this.f492d = c0076av.f342d;
                this.f495g = c0076av.f341c;
                int i = f488j;
                f488j = i + 1;
                this.f497i = i;
                this.f489a = 2;
            } catch (C0084bc e2) {
                m287a(true);
                this.f489a = 0;
                throw e2;
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0096bo)) {
            return false;
        }
        C0096bo c0096bo = (C0096bo) obj;
        return m288a(c0096bo.f491c, c0096bo.f492d);
    }
}
