package p012b.p013a;

import android.content.Context;
import com.p045c.p046a.C1398a;
import com.p045c.p046a.C1420t;

/* renamed from: b.a.iz */
/* loaded from: classes.dex */
public class C0457iz {

    /* renamed from: a */
    private C0411hg f1614a;

    /* renamed from: b */
    private C0435id f1615b;

    /* renamed from: d */
    private Context f1617d;

    /* renamed from: e */
    private C0242b f1618e;

    /* renamed from: f */
    private C0453iv f1619f;

    /* renamed from: g */
    private C0366fp f1620g;

    /* renamed from: i */
    private boolean f1622i;

    /* renamed from: c */
    private final int f1616c = 1;

    /* renamed from: h */
    private boolean f1621h = false;

    public C0457iz(Context context, C0242b c0242b) {
        this.f1614a = C0411hg.m1378a(context);
        this.f1615b = C0435id.m1434a(context);
        this.f1617d = context;
        this.f1618e = c0242b;
        this.f1619f = new C0453iv(context);
        this.f1619f.m1506a(this.f1618e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m1512a(byte[] bArr) {
        C0343et c0343et = new C0343et();
        try {
            new C0392go(new C0410hf()).m1325a(c0343et, bArr);
            if (c0343et.f1314a == 1) {
                this.f1615b.m1442b(c0343et.m1090d());
                this.f1615b.m1443c();
            }
            C0382ge.m1279a("MobclickAgent", "send log:" + c0343et.m1086b());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c0343et.f1314a == 1 ? 2 : 3;
    }

    /* renamed from: b */
    private void m1515b() {
        C1420t.m4606a(this.f1617d).m4624h().m4626a(new C0459ja(this));
    }

    /* renamed from: b */
    private byte[] m1516b(C0366fp c0366fp) {
        if (c0366fp == null) {
            return null;
        }
        try {
            byte[] m1326a = new C0395gr().m1326a(c0366fp);
            if (C0382ge.f1457a) {
                C0382ge.m1283c("MobclickAgent", c0366fp.toString());
            }
            return m1326a;
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "Fail to serialize log ...", e);
            return null;
        }
    }

    /* renamed from: c */
    private void m1517c() {
        this.f1614a.m1382a();
        C0366fp c0366fp = this.f1620g;
        c0366fp.m1174a(this.f1614a.m1384b());
        byte[] m1516b = m1516b(c0366fp);
        if (m1516b == null) {
            C0382ge.m1285d("MobclickAgent", "message is null");
        }
        byte[] m1297c = (!this.f1621h ? C0383gf.m1286a(this.f1617d, C1398a.m4565a(this.f1617d), m1516b) : C0383gf.m1289b(this.f1617d, C1398a.m4565a(this.f1617d), m1516b)).m1297c();
        C1420t.m4606a(this.f1617d).m4622f();
        byte[] m1507a = this.f1619f.m1507a(m1297c);
        switch (m1507a == null ? 1 : m1512a(m1507a)) {
            case 1:
                if (!this.f1622i) {
                    C1420t.m4606a(this.f1617d).m4615b(m1297c);
                }
                C0382ge.m1281b("MobclickAgent", "connection error");
                break;
            case 2:
                if (this.f1618e.m759h()) {
                    this.f1618e.m758g();
                }
                this.f1614a.m1385c();
                this.f1618e.m757f();
                break;
            case 3:
                this.f1618e.m757f();
                break;
        }
    }

    /* renamed from: a */
    public void m1519a() {
        if (this.f1620g != null) {
            m1517c();
        } else {
            m1515b();
        }
    }

    /* renamed from: a */
    public void m1520a(C0366fp c0366fp) {
        this.f1620g = c0366fp;
    }

    /* renamed from: a */
    public void m1521a(InterfaceC0455ix interfaceC0455ix) {
        this.f1615b.m1439a(interfaceC0455ix);
    }

    /* renamed from: a */
    public void m1522a(boolean z) {
        this.f1621h = z;
    }

    /* renamed from: b */
    public void m1523b(boolean z) {
        this.f1622i = z;
    }
}
