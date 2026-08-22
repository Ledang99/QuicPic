package p012b.p013a;

import android.content.Context;
import android.text.TextUtils;
import com.p045c.p046a.C1398a;
import com.p045c.p046a.C1418r;
import com.p045c.p046a.C1420t;
import com.p045c.p046a.p047a.InterfaceC1401c;
import java.util.Iterator;

/* renamed from: b.a.ii */
/* loaded from: classes.dex */
public final class C0440ii implements InterfaceC0449ir, InterfaceC0455ix, InterfaceC1401c {

    /* renamed from: a */
    private C0452iu f1567a;

    /* renamed from: b */
    private C1420t f1568b;

    /* renamed from: c */
    private C0242b f1569c;

    /* renamed from: e */
    private C0442ik f1571e;

    /* renamed from: g */
    private int f1573g;

    /* renamed from: h */
    private Context f1574h;

    /* renamed from: d */
    private C0458j f1570d = new C0458j();

    /* renamed from: f */
    private int f1572f = 10;

    public C0440ii(Context context) {
        this.f1567a = null;
        this.f1568b = null;
        this.f1569c = null;
        this.f1571e = null;
        this.f1574h = context;
        this.f1567a = new C0452iu(context);
        this.f1569c = new C0242b(context);
        this.f1568b = C1420t.m4606a(context);
        this.f1570d.m1527a(this.f1568b.m4617c());
        this.f1571e = new C0442ik(this);
        this.f1573g = this.f1568b.m4620d(-1);
    }

    /* renamed from: a */
    private C0366fp m1447a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            C0366fp c0366fp = new C0366fp();
            new C0392go().m1325a(c0366fp, bArr);
            return c0366fp;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private void m1449a(C0366fp c0366fp) {
        if (c0366fp != null) {
            C0411hg m1378a = C0411hg.m1378a(this.f1574h);
            m1378a.m1382a();
            c0366fp.m1174a(m1378a.m1384b());
            byte[] m1454b = m1454b(c0366fp);
            if (m1454b == null) {
                return;
            }
            byte[] m1297c = (m1461e() ? C0383gf.m1289b(this.f1574h, C1398a.m4565a(this.f1574h), m1454b) : C0383gf.m1286a(this.f1574h, C1398a.m4565a(this.f1574h), m1454b)).m1297c();
            C1420t m4606a = C1420t.m4606a(this.f1574h);
            m4606a.m4622f();
            m4606a.m4615b(m1297c);
            m1378a.m1385c();
        }
    }

    /* renamed from: a */
    private void m1451a(boolean z) {
        boolean m752a = this.f1569c.m752a();
        if (m752a) {
            this.f1567a.m1495a(new C0462l(this.f1569c.m760i()));
        }
        if (m1453b(z)) {
            m1458d();
        } else if (m752a || m1456c()) {
            mo1466b();
        }
    }

    /* renamed from: b */
    private boolean m1453b(boolean z) {
        if (!C0381gd.m1267g(this.f1574h)) {
            if (C0382ge.f1457a) {
                C0382ge.m1283c("MobclickAgent", "network is unavailable");
            }
            return false;
        }
        if (this.f1569c.m752a()) {
            return true;
        }
        if (C0382ge.f1457a && C0381gd.m1277q(this.f1574h)) {
            return true;
        }
        return this.f1571e.m1477c().mo4582a(z);
    }

    /* renamed from: b */
    private byte[] m1454b(C0366fp c0366fp) {
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
    private boolean m1456c() {
        return this.f1567a.m1492a() > this.f1572f;
    }

    /* renamed from: d */
    private void m1458d() {
        try {
            if (this.f1568b.m4623g()) {
                C0457iz c0457iz = new C0457iz(this.f1574h, this.f1569c);
                c0457iz.m1521a(this);
                if (this.f1570d.m1528b()) {
                    c0457iz.m1523b(true);
                }
                c0457iz.m1519a();
                return;
            }
            C0366fp m1462a = m1462a(new int[0]);
            if (m1462a == null) {
                C0382ge.m1279a("MobclickAgent", "No data to report");
                return;
            }
            C0457iz c0457iz2 = new C0457iz(this.f1574h, this.f1569c);
            c0457iz2.m1521a(this);
            if (this.f1570d.m1528b()) {
                c0457iz2.m1523b(true);
            }
            c0457iz2.m1520a(m1462a);
            c0457iz2.m1522a(m1461e());
            c0457iz2.m1519a();
        } catch (Throwable th) {
            if (th instanceof OutOfMemoryError) {
            }
            if (th != null) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    private void m1459d(int i) {
        m1449a(m1462a(i, (int) (System.currentTimeMillis() - this.f1569c.m761j())));
        C1418r.m4604a(new C0441ij(this), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m1460e(int i) {
        m1459d(i);
    }

    /* renamed from: e */
    private boolean m1461e() {
        switch (this.f1573g) {
            case -1:
                return C1398a.f4958f;
            case 0:
            default:
                return false;
            case 1:
                return true;
        }
    }

    /* renamed from: a */
    protected C0366fp m1462a(int... iArr) {
        boolean z = false;
        try {
            if (TextUtils.isEmpty(C1398a.m4565a(this.f1574h))) {
                C0382ge.m1281b("MobclickAgent", "Appkey is missing ,Please check AndroidManifest.xml");
                return null;
            }
            byte[] m4621e = C1420t.m4606a(this.f1574h).m4621e();
            C0366fp m1447a = m4621e == null ? null : m1447a(m4621e);
            if (m1447a == null && this.f1567a.m1492a() == 0) {
                return null;
            }
            C0366fp c0366fp = m1447a == null ? new C0366fp() : m1447a;
            this.f1567a.m1493a(c0366fp);
            if (C0382ge.f1457a && c0366fp.m1195f()) {
                Iterator it = c0366fp.m1192e().iterator();
                while (it.hasNext()) {
                    z = ((C0352fb) it.next()).m1126d() > 0 ? true : z;
                }
                if (!z) {
                    C0382ge.m1285d("MobclickAgent", "missing Activities or PageViews");
                }
            }
            C0366fp m1526a = this.f1570d.m1526a(this.f1574h, c0366fp);
            if (iArr == null || iArr.length != 2) {
                return m1526a;
            }
            C0229an c0229an = new C0229an();
            c0229an.m666a(new C0304dh(iArr[0] / 1000, iArr[1]));
            m1526a.m1172a(c0229an);
            return m1526a;
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "Fail to construct message ...", e);
            C1420t.m4606a(this.f1574h).m4622f();
            return null;
        }
    }

    /* renamed from: a */
    public void m1463a() {
        if (C0381gd.m1267g(this.f1574h)) {
            m1458d();
        } else if (C0382ge.f1457a) {
            C0382ge.m1283c("MobclickAgent", "network is unavailable");
        }
    }

    @Override // p012b.p013a.InterfaceC0455ix
    /* renamed from: a */
    public void mo1464a(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.f1570d.m1527a(i);
        this.f1571e.m1475b(i);
    }

    @Override // p012b.p013a.InterfaceC0449ir
    /* renamed from: a */
    public void mo1465a(InterfaceC0450is interfaceC0450is) {
        if (interfaceC0450is != null) {
            this.f1567a.m1494a(interfaceC0450is);
        }
        m1451a(interfaceC0450is instanceof C0352fb);
    }

    @Override // p012b.p013a.InterfaceC0449ir
    /* renamed from: b */
    public void mo1466b() {
        if (this.f1567a.m1492a() > 0) {
            try {
                byte[] m1454b = m1454b(m1462a(new int[0]));
                if (m1454b != null) {
                    this.f1568b.m4612a(m1454b);
                }
            } catch (Throwable th) {
                if (th instanceof OutOfMemoryError) {
                    this.f1568b.m4622f();
                }
                if (th != null) {
                    th.printStackTrace();
                }
            }
        }
    }

    @Override // p012b.p013a.InterfaceC0455ix
    /* renamed from: b */
    public void mo1467b(int i) {
        if (i > 0) {
            this.f1571e.m1474a(i);
        }
    }

    @Override // p012b.p013a.InterfaceC0449ir
    /* renamed from: b */
    public void mo1468b(InterfaceC0450is interfaceC0450is) {
        this.f1567a.m1494a(interfaceC0450is);
    }

    @Override // p012b.p013a.InterfaceC0455ix
    /* renamed from: c */
    public void mo1469c(int i) {
        this.f1573g = i;
    }
}
