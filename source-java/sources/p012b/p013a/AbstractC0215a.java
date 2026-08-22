package p012b.p013a;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* renamed from: b.a.a */
/* loaded from: classes.dex */
public abstract class AbstractC0215a {

    /* renamed from: a */
    private final int f922a = 10;

    /* renamed from: b */
    private final int f923b = 20;

    /* renamed from: c */
    private final String f924c;

    /* renamed from: d */
    private List f925d;

    /* renamed from: e */
    private C0266bx f926e;

    public AbstractC0215a(String str) {
        this.f924c = str;
    }

    /* renamed from: g */
    private boolean m620g() {
        C0266bx c0266bx = this.f926e;
        String m846a = c0266bx == null ? null : c0266bx.m846a();
        int m852d = c0266bx == null ? 0 : c0266bx.m852d();
        String m621a = m621a(mo629f());
        if (m621a == null || m621a.equals(m846a)) {
            return false;
        }
        if (c0266bx == null) {
            c0266bx = new C0266bx();
        }
        c0266bx.m845a(m621a);
        c0266bx.m844a(System.currentTimeMillis());
        c0266bx.m843a(m852d + 1);
        C0259bq c0259bq = new C0259bq();
        c0259bq.m822a(this.f924c);
        c0259bq.m828c(m621a);
        c0259bq.m825b(m846a);
        c0259bq.m821a(c0266bx.m848b());
        if (this.f925d == null) {
            this.f925d = new ArrayList(2);
        }
        this.f925d.add(c0259bq);
        if (this.f925d.size() > 10) {
            this.f925d.remove(0);
        }
        this.f926e = c0266bx;
        return true;
    }

    /* renamed from: a */
    public String m621a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || "unknown".equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    /* renamed from: a */
    public void m622a(C0274ce c0274ce) {
        this.f926e = (C0266bx) c0274ce.m868a().get(this.f924c);
        List<C0259bq> m870b = c0274ce.m870b();
        if (m870b == null || m870b.size() <= 0) {
            return;
        }
        if (this.f925d == null) {
            this.f925d = new ArrayList();
        }
        for (C0259bq c0259bq : m870b) {
            if (this.f924c.equals(c0259bq.f1091a)) {
                this.f925d.add(c0259bq);
            }
        }
    }

    /* renamed from: a */
    public void m623a(List list) {
        this.f925d = list;
    }

    /* renamed from: a */
    public boolean m624a() {
        return m620g();
    }

    /* renamed from: b */
    public String m625b() {
        return this.f924c;
    }

    /* renamed from: c */
    public boolean m626c() {
        return this.f926e == null || this.f926e.m852d() <= 20;
    }

    /* renamed from: d */
    public C0266bx m627d() {
        return this.f926e;
    }

    /* renamed from: e */
    public List m628e() {
        return this.f925d;
    }

    /* renamed from: f */
    public abstract String mo629f();
}
