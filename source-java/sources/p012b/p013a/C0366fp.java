package p012b.p013a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: b.a.fp */
/* loaded from: classes.dex */
public class C0366fp implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: l */
    public static final Map f1376l;

    /* renamed from: m */
    private static final C0423hs f1377m = new C0423hs("UALogEntry");

    /* renamed from: n */
    private static final C0415hk f1378n = new C0415hk("client_stats", (byte) 12, 1);

    /* renamed from: o */
    private static final C0415hk f1379o = new C0415hk("app_info", (byte) 12, 2);

    /* renamed from: p */
    private static final C0415hk f1380p = new C0415hk("device_info", (byte) 12, 3);

    /* renamed from: q */
    private static final C0415hk f1381q = new C0415hk("misc_info", (byte) 12, 4);

    /* renamed from: r */
    private static final C0415hk f1382r = new C0415hk("activate_msg", (byte) 12, 5);

    /* renamed from: s */
    private static final C0415hk f1383s = new C0415hk("instant_msgs", (byte) 15, 6);

    /* renamed from: t */
    private static final C0415hk f1384t = new C0415hk("sessions", (byte) 15, 7);

    /* renamed from: u */
    private static final C0415hk f1385u = new C0415hk("imprint", (byte) 12, 8);

    /* renamed from: v */
    private static final C0415hk f1386v = new C0415hk("id_tracking", (byte) 12, 9);

    /* renamed from: w */
    private static final C0415hk f1387w = new C0415hk("active_user", (byte) 12, 10);

    /* renamed from: x */
    private static final C0415hk f1388x = new C0415hk("control_policy", (byte) 12, 11);

    /* renamed from: y */
    private static final Map f1389y = new HashMap();

    /* renamed from: a */
    public C0222ag f1390a;

    /* renamed from: b */
    public C0476z f1391b;

    /* renamed from: c */
    public C0236au f1392c;

    /* renamed from: d */
    public C0318dv f1393d;

    /* renamed from: e */
    public C0462l f1394e;

    /* renamed from: f */
    public List f1395f;

    /* renamed from: g */
    public List f1396g;

    /* renamed from: h */
    public C0282cm f1397h;

    /* renamed from: i */
    public C0274ce f1398i;

    /* renamed from: j */
    public C0469s f1399j;

    /* renamed from: k */
    public C0229an f1400k;

    /* renamed from: z */
    private EnumC0372fv[] f1401z = {EnumC0372fv.ACTIVATE_MSG, EnumC0372fv.INSTANT_MSGS, EnumC0372fv.SESSIONS, EnumC0372fv.IMPRINT, EnumC0372fv.ID_TRACKING, EnumC0372fv.ACTIVE_USER, EnumC0372fv.CONTROL_POLICY};

    static {
        C0367fq c0367fq = null;
        f1389y.put(AbstractC0427hw.class, new C0369fs());
        f1389y.put(AbstractC0428hx.class, new C0371fu());
        EnumMap enumMap = new EnumMap(EnumC0372fv.class);
        enumMap.put((EnumMap) EnumC0372fv.CLIENT_STATS, (EnumC0372fv) new C0403gz("client_stats", (byte) 1, new C0408hd((byte) 12, C0222ag.class)));
        enumMap.put((EnumMap) EnumC0372fv.APP_INFO, (EnumC0372fv) new C0403gz("app_info", (byte) 1, new C0408hd((byte) 12, C0476z.class)));
        enumMap.put((EnumMap) EnumC0372fv.DEVICE_INFO, (EnumC0372fv) new C0403gz("device_info", (byte) 1, new C0408hd((byte) 12, C0236au.class)));
        enumMap.put((EnumMap) EnumC0372fv.MISC_INFO, (EnumC0372fv) new C0403gz("misc_info", (byte) 1, new C0408hd((byte) 12, C0318dv.class)));
        enumMap.put((EnumMap) EnumC0372fv.ACTIVATE_MSG, (EnumC0372fv) new C0403gz("activate_msg", (byte) 2, new C0408hd((byte) 12, C0462l.class)));
        enumMap.put((EnumMap) EnumC0372fv.INSTANT_MSGS, (EnumC0372fv) new C0403gz("instant_msgs", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0297da.class))));
        enumMap.put((EnumMap) EnumC0372fv.SESSIONS, (EnumC0372fv) new C0403gz("sessions", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0352fb.class))));
        enumMap.put((EnumMap) EnumC0372fv.IMPRINT, (EnumC0372fv) new C0403gz("imprint", (byte) 2, new C0408hd((byte) 12, C0282cm.class)));
        enumMap.put((EnumMap) EnumC0372fv.ID_TRACKING, (EnumC0372fv) new C0403gz("id_tracking", (byte) 2, new C0408hd((byte) 12, C0274ce.class)));
        enumMap.put((EnumMap) EnumC0372fv.ACTIVE_USER, (EnumC0372fv) new C0403gz("active_user", (byte) 2, new C0408hd((byte) 12, C0469s.class)));
        enumMap.put((EnumMap) EnumC0372fv.CONTROL_POLICY, (EnumC0372fv) new C0403gz("control_policy", (byte) 2, new C0408hd((byte) 12, C0229an.class)));
        f1376l = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0366fp.class, f1376l);
    }

    /* renamed from: a */
    public C0366fp m1171a(C0222ag c0222ag) {
        this.f1390a = c0222ag;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1172a(C0229an c0229an) {
        this.f1400k = c0229an;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1173a(C0236au c0236au) {
        this.f1392c = c0236au;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1174a(C0274ce c0274ce) {
        this.f1398i = c0274ce;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1175a(C0282cm c0282cm) {
        this.f1397h = c0282cm;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1176a(C0318dv c0318dv) {
        this.f1393d = c0318dv;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1177a(C0462l c0462l) {
        this.f1394e = c0462l;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1178a(C0469s c0469s) {
        this.f1399j = c0469s;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1179a(C0476z c0476z) {
        this.f1391b = c0476z;
        return this;
    }

    /* renamed from: a */
    public C0366fp m1180a(List list) {
        this.f1395f = list;
        return this;
    }

    /* renamed from: a */
    public void m1181a(C0297da c0297da) {
        if (this.f1395f == null) {
            this.f1395f = new ArrayList();
        }
        this.f1395f.add(c0297da);
    }

    /* renamed from: a */
    public void m1182a(C0352fb c0352fb) {
        if (this.f1396g == null) {
            this.f1396g = new ArrayList();
        }
        this.f1396g.add(c0352fb);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1389y.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1183a(boolean z) {
        if (z) {
            return;
        }
        this.f1390a = null;
    }

    /* renamed from: a */
    public boolean m1184a() {
        return this.f1394e != null;
    }

    /* renamed from: b */
    public int m1185b() {
        if (this.f1395f == null) {
            return 0;
        }
        return this.f1395f.size();
    }

    /* renamed from: b */
    public C0366fp m1186b(List list) {
        this.f1396g = list;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1389y.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1187b(boolean z) {
        if (z) {
            return;
        }
        this.f1391b = null;
    }

    /* renamed from: c */
    public List m1188c() {
        return this.f1395f;
    }

    /* renamed from: c */
    public void m1189c(boolean z) {
        if (z) {
            return;
        }
        this.f1392c = null;
    }

    /* renamed from: d */
    public void m1190d(boolean z) {
        if (z) {
            return;
        }
        this.f1393d = null;
    }

    /* renamed from: d */
    public boolean m1191d() {
        return this.f1395f != null;
    }

    /* renamed from: e */
    public List m1192e() {
        return this.f1396g;
    }

    /* renamed from: e */
    public void m1193e(boolean z) {
        if (z) {
            return;
        }
        this.f1394e = null;
    }

    /* renamed from: f */
    public void m1194f(boolean z) {
        if (z) {
            return;
        }
        this.f1395f = null;
    }

    /* renamed from: f */
    public boolean m1195f() {
        return this.f1396g != null;
    }

    /* renamed from: g */
    public void m1196g(boolean z) {
        if (z) {
            return;
        }
        this.f1396g = null;
    }

    /* renamed from: g */
    public boolean m1197g() {
        return this.f1397h != null;
    }

    /* renamed from: h */
    public void m1198h(boolean z) {
        if (z) {
            return;
        }
        this.f1397h = null;
    }

    /* renamed from: h */
    public boolean m1199h() {
        return this.f1398i != null;
    }

    /* renamed from: i */
    public void m1200i(boolean z) {
        if (z) {
            return;
        }
        this.f1398i = null;
    }

    /* renamed from: i */
    public boolean m1201i() {
        return this.f1399j != null;
    }

    /* renamed from: j */
    public void m1202j(boolean z) {
        if (z) {
            return;
        }
        this.f1399j = null;
    }

    /* renamed from: j */
    public boolean m1203j() {
        return this.f1400k != null;
    }

    /* renamed from: k */
    public void m1204k() {
        if (this.f1390a == null) {
            throw new C0419ho("Required field 'client_stats' was not present! Struct: " + toString());
        }
        if (this.f1391b == null) {
            throw new C0419ho("Required field 'app_info' was not present! Struct: " + toString());
        }
        if (this.f1392c == null) {
            throw new C0419ho("Required field 'device_info' was not present! Struct: " + toString());
        }
        if (this.f1393d == null) {
            throw new C0419ho("Required field 'misc_info' was not present! Struct: " + toString());
        }
        if (this.f1390a != null) {
            this.f1390a.m656d();
        }
        if (this.f1391b != null) {
            this.f1391b.m1600g();
        }
        if (this.f1392c != null) {
            this.f1392c.m743r();
        }
        if (this.f1393d != null) {
            this.f1393d.m1021k();
        }
        if (this.f1394e != null) {
            this.f1394e.m1546b();
        }
        if (this.f1397h != null) {
            this.f1397h.m897f();
        }
        if (this.f1398i != null) {
            this.f1398i.m875e();
        }
        if (this.f1399j != null) {
            this.f1399j.m1557a();
        }
        if (this.f1400k != null) {
            this.f1400k.m669b();
        }
    }

    /* renamed from: k */
    public void m1205k(boolean z) {
        if (z) {
            return;
        }
        this.f1400k = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UALogEntry(");
        sb.append("client_stats:");
        if (this.f1390a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1390a);
        }
        sb.append(", ");
        sb.append("app_info:");
        if (this.f1391b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1391b);
        }
        sb.append(", ");
        sb.append("device_info:");
        if (this.f1392c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1392c);
        }
        sb.append(", ");
        sb.append("misc_info:");
        if (this.f1393d == null) {
            sb.append("null");
        } else {
            sb.append(this.f1393d);
        }
        if (m1184a()) {
            sb.append(", ");
            sb.append("activate_msg:");
            if (this.f1394e == null) {
                sb.append("null");
            } else {
                sb.append(this.f1394e);
            }
        }
        if (m1191d()) {
            sb.append(", ");
            sb.append("instant_msgs:");
            if (this.f1395f == null) {
                sb.append("null");
            } else {
                sb.append(this.f1395f);
            }
        }
        if (m1195f()) {
            sb.append(", ");
            sb.append("sessions:");
            if (this.f1396g == null) {
                sb.append("null");
            } else {
                sb.append(this.f1396g);
            }
        }
        if (m1197g()) {
            sb.append(", ");
            sb.append("imprint:");
            if (this.f1397h == null) {
                sb.append("null");
            } else {
                sb.append(this.f1397h);
            }
        }
        if (m1199h()) {
            sb.append(", ");
            sb.append("id_tracking:");
            if (this.f1398i == null) {
                sb.append("null");
            } else {
                sb.append(this.f1398i);
            }
        }
        if (m1201i()) {
            sb.append(", ");
            sb.append("active_user:");
            if (this.f1399j == null) {
                sb.append("null");
            } else {
                sb.append(this.f1399j);
            }
        }
        if (m1203j()) {
            sb.append(", ");
            sb.append("control_policy:");
            if (this.f1400k == null) {
                sb.append("null");
            } else {
                sb.append(this.f1400k);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
