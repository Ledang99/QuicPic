package p012b.p013a;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: b.a.hg */
/* loaded from: classes.dex */
public class C0411hg {

    /* renamed from: a */
    public static C0411hg f1514a;

    /* renamed from: c */
    private File f1516c;

    /* renamed from: e */
    private long f1518e;

    /* renamed from: h */
    private C0412hh f1521h;

    /* renamed from: b */
    private final String f1515b = "umeng_it.cache";

    /* renamed from: d */
    private C0274ce f1517d = null;

    /* renamed from: g */
    private Set f1520g = new HashSet();

    /* renamed from: f */
    private long f1519f = 86400000;

    C0411hg(Context context) {
        this.f1521h = null;
        this.f1516c = new File(context.getFilesDir(), "umeng_it.cache");
        this.f1521h = new C0412hh(context);
        this.f1521h.m1390b();
    }

    /* renamed from: a */
    public static synchronized C0411hg m1378a(Context context) {
        C0411hg c0411hg;
        synchronized (C0411hg.class) {
            if (f1514a == null) {
                f1514a = new C0411hg(context);
                f1514a.m1383a(new C0434ic(context));
                f1514a.m1383a(new C0436ie(context));
                f1514a.m1383a(new C0281cl(context));
                f1514a.m1383a(new C0439ih(context));
                f1514a.m1383a(new C0438ig(context));
                f1514a.m1383a(new C0437if());
                f1514a.m1386d();
            }
            c0411hg = f1514a;
        }
        return c0411hg;
    }

    /* renamed from: a */
    private void m1379a(C0274ce c0274ce) {
        byte[] m1326a;
        if (c0274ce != null) {
            try {
                synchronized (this) {
                    m1326a = new C0395gr().m1326a(c0274ce);
                }
                if (m1326a != null) {
                    C0385gh.m1301a(this.f1516c, m1326a);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: f */
    private void m1380f() {
        C0274ce c0274ce = new C0274ce();
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        for (AbstractC0215a abstractC0215a : this.f1520g) {
            if (abstractC0215a.m626c()) {
                if (abstractC0215a.m627d() != null) {
                    hashMap.put(abstractC0215a.m625b(), abstractC0215a.m627d());
                }
                if (abstractC0215a.m628e() != null && !abstractC0215a.m628e().isEmpty()) {
                    arrayList.addAll(abstractC0215a.m628e());
                }
            }
        }
        c0274ce.m866a(arrayList);
        c0274ce.m867a(hashMap);
        synchronized (this) {
            this.f1517d = c0274ce;
        }
    }

    /* renamed from: g */
    private C0274ce m1381g() {
        FileInputStream fileInputStream;
        Throwable th;
        if (!this.f1516c.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(this.f1516c);
            try {
                try {
                    byte[] m1305b = C0385gh.m1305b(fileInputStream);
                    C0274ce c0274ce = new C0274ce();
                    new C0392go().m1325a(c0274ce, m1305b);
                    C0385gh.m1306c(fileInputStream);
                    return c0274ce;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    C0385gh.m1306c(fileInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                C0385gh.m1306c(fileInputStream);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
            C0385gh.m1306c(fileInputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public void m1382a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f1518e >= this.f1519f) {
            boolean z = false;
            for (AbstractC0215a abstractC0215a : this.f1520g) {
                if (abstractC0215a.m626c()) {
                    if (abstractC0215a.m624a()) {
                        z = true;
                        if (!abstractC0215a.m626c()) {
                            this.f1521h.m1391b(abstractC0215a.m625b());
                        }
                    }
                    z = z;
                }
            }
            if (z) {
                m1380f();
                this.f1521h.m1388a();
                m1387e();
            }
            this.f1518e = currentTimeMillis;
        }
    }

    /* renamed from: a */
    public boolean m1383a(AbstractC0215a abstractC0215a) {
        if (this.f1521h.m1389a(abstractC0215a.m625b())) {
            return this.f1520g.add(abstractC0215a);
        }
        return false;
    }

    /* renamed from: b */
    public C0274ce m1384b() {
        return this.f1517d;
    }

    /* renamed from: c */
    public void m1385c() {
        boolean z = false;
        for (AbstractC0215a abstractC0215a : this.f1520g) {
            if (abstractC0215a.m626c()) {
                if (abstractC0215a.m628e() != null && !abstractC0215a.m628e().isEmpty()) {
                    abstractC0215a.m623a((List) null);
                    z = true;
                }
                z = z;
            }
        }
        if (z) {
            this.f1517d.m871b(false);
            m1387e();
        }
    }

    /* renamed from: d */
    public void m1386d() {
        C0274ce m1381g = m1381g();
        if (m1381g == null) {
            return;
        }
        ArrayList arrayList = new ArrayList(this.f1520g.size());
        synchronized (this) {
            this.f1517d = m1381g;
            for (AbstractC0215a abstractC0215a : this.f1520g) {
                abstractC0215a.m622a(this.f1517d);
                if (!abstractC0215a.m626c()) {
                    arrayList.add(abstractC0215a);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.f1520g.remove((AbstractC0215a) it.next());
            }
        }
        m1380f();
    }

    /* renamed from: e */
    public void m1387e() {
        if (this.f1517d != null) {
            m1379a(this.f1517d);
        }
    }
}
