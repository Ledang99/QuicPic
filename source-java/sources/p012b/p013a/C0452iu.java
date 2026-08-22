package p012b.p013a;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.p045c.p046a.C1398a;
import com.p045c.p046a.C1417q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: b.a.iu */
/* loaded from: classes.dex */
public class C0452iu {

    /* renamed from: a */
    private List f1603a = new ArrayList();

    /* renamed from: b */
    private C0462l f1604b = null;

    /* renamed from: c */
    private C0476z f1605c = null;

    /* renamed from: d */
    private C0236au f1606d = null;

    /* renamed from: e */
    private C0318dv f1607e = null;

    /* renamed from: f */
    private Context f1608f;

    public C0452iu(Context context) {
        this.f1608f = null;
        this.f1608f = context;
    }

    /* renamed from: a */
    private void m1489a(Context context) {
        try {
            this.f1605c.m1580a(C1398a.m4565a(context));
            this.f1605c.m1593e(C1398a.m4567b(context));
            if (C1398a.f4953a != null && C1398a.f4954b != null) {
                this.f1605c.m1596f(C1398a.f4953a);
                this.f1605c.m1599g(C1398a.f4954b);
            }
            this.f1605c.m1587c(C0381gd.m1275o(context));
            this.f1605c.m1579a(EnumC0351fa.ANDROID);
            this.f1605c.m1590d("5.5.3");
            this.f1605c.m1584b(C0381gd.m1262b(context));
            this.f1605c.m1578a(Integer.parseInt(C0381gd.m1260a(context)));
            this.f1605c.m1583b(C1398a.f4955c);
            this.f1605c.m1590d(C1398a.m4564a());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m1490b(Context context) {
        try {
            this.f1606d.m709e(C0381gd.m1259a());
            this.f1606d.m697a(C0381gd.m1263c(context));
            this.f1606d.m700b(C0381gd.m1264d(context));
            this.f1606d.m703c(C0381gd.m1271k(context));
            this.f1606d.m706d(Build.MODEL);
            this.f1606d.m712f("Android");
            this.f1606d.m715g(Build.VERSION.RELEASE);
            int[] m1272l = C0381gd.m1272l(context);
            if (m1272l != null) {
                this.f1606d.m696a(new C0336em(m1272l[1], m1272l[0]));
            }
            if (C1398a.f4957e == null || C1398a.f4956d != null) {
            }
            this.f1606d.m718h(Build.BOARD);
            this.f1606d.m721i(Build.BRAND);
            this.f1606d.m695a(Build.TIME);
            this.f1606d.m724j(Build.MANUFACTURER);
            this.f1606d.m727k(Build.ID);
            this.f1606d.m730l(Build.DEVICE);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: c */
    private void m1491c(Context context) {
        try {
            String[] m1265e = C0381gd.m1265e(context);
            if ("Wi-Fi".equals(m1265e[0])) {
                this.f1607e.m996a(EnumC0461k.ACCESS_TYPE_WIFI);
            } else if ("2G/3G".equals(m1265e[0])) {
                this.f1607e.m996a(EnumC0461k.ACCESS_TYPE_2G_3G);
            } else {
                this.f1607e.m996a(EnumC0461k.ACCESS_TYPE_UNKNOWN);
            }
            if (!"".equals(m1265e[1])) {
                this.f1607e.m1006d(m1265e[1]);
            }
            this.f1607e.m1003c(C0381gd.m1273m(context));
            String[] m1269i = C0381gd.m1269i(context);
            this.f1607e.m1000b(m1269i[0]);
            this.f1607e.m997a(m1269i[1]);
            this.f1607e.m995a(C0381gd.m1268h(context));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public synchronized int m1492a() {
        int size;
        size = this.f1603a.size();
        if (this.f1604b != null) {
            size++;
        }
        return size;
    }

    /* renamed from: a */
    public void m1493a(C0366fp c0366fp) {
        String m1535e = C0460jb.m1535e(this.f1608f);
        if (m1535e == null) {
            return;
        }
        synchronized (this) {
            if (this.f1604b != null && new C0242b(this.f1608f).m752a()) {
                c0366fp.m1177a(this.f1604b);
                this.f1604b = null;
            }
            Iterator it = this.f1603a.iterator();
            while (it.hasNext()) {
                ((InterfaceC0450is) it.next()).mo1101a(c0366fp, m1535e);
            }
            this.f1603a.clear();
        }
        c0366fp.m1179a(m1496b());
        c0366fp.m1173a(m1497c());
        c0366fp.m1176a(m1498d());
        c0366fp.m1171a(m1501g());
        c0366fp.m1175a(m1499e());
        c0366fp.m1174a(m1500f());
        c0366fp.m1178a(m1502h());
    }

    /* renamed from: a */
    public synchronized void m1494a(InterfaceC0450is interfaceC0450is) {
        this.f1603a.add(interfaceC0450is);
    }

    /* renamed from: a */
    public synchronized void m1495a(C0462l c0462l) {
        this.f1604b = c0462l;
    }

    /* renamed from: b */
    public synchronized C0476z m1496b() {
        if (this.f1605c == null) {
            this.f1605c = new C0476z();
            m1489a(this.f1608f);
        }
        return this.f1605c;
    }

    /* renamed from: c */
    public synchronized C0236au m1497c() {
        if (this.f1606d == null) {
            this.f1606d = new C0236au();
            m1490b(this.f1608f);
        }
        return this.f1606d;
    }

    /* renamed from: d */
    public synchronized C0318dv m1498d() {
        if (this.f1607e == null) {
            this.f1607e = new C0318dv();
            m1491c(this.f1608f);
        }
        return this.f1607e;
    }

    /* renamed from: e */
    public C0282cm m1499e() {
        try {
            return C0435id.m1434a(this.f1608f).m1437a();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    public C0274ce m1500f() {
        try {
            return C0411hg.m1378a(this.f1608f).m1384b();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: g */
    public C0222ag m1501g() {
        try {
            return C0242b.m750a(this.f1608f);
        } catch (Exception e) {
            e.printStackTrace();
            return new C0222ag();
        }
    }

    /* renamed from: h */
    public C0469s m1502h() {
        String[] m4601a = C1417q.m4601a(this.f1608f);
        if (m4601a == null || TextUtils.isEmpty(m4601a[0]) || TextUtils.isEmpty(m4601a[1])) {
            return null;
        }
        return new C0469s(m4601a[0], m4601a[1]);
    }
}
