package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.dv */
/* loaded from: classes.dex */
public class C0318dv implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: k */
    public static final Map f1228k;

    /* renamed from: l */
    private static final C0423hs f1229l = new C0423hs("MiscInfo");

    /* renamed from: m */
    private static final C0415hk f1230m = new C0415hk("time_zone", (byte) 8, 1);

    /* renamed from: n */
    private static final C0415hk f1231n = new C0415hk("language", (byte) 11, 2);

    /* renamed from: o */
    private static final C0415hk f1232o = new C0415hk("country", (byte) 11, 3);

    /* renamed from: p */
    private static final C0415hk f1233p = new C0415hk("latitude", (byte) 4, 4);

    /* renamed from: q */
    private static final C0415hk f1234q = new C0415hk("longitude", (byte) 4, 5);

    /* renamed from: r */
    private static final C0415hk f1235r = new C0415hk("carrier", (byte) 11, 6);

    /* renamed from: s */
    private static final C0415hk f1236s = new C0415hk("latency", (byte) 8, 7);

    /* renamed from: t */
    private static final C0415hk f1237t = new C0415hk("display_name", (byte) 11, 8);

    /* renamed from: u */
    private static final C0415hk f1238u = new C0415hk("access_type", (byte) 8, 9);

    /* renamed from: v */
    private static final C0415hk f1239v = new C0415hk("access_subtype", (byte) 11, 10);

    /* renamed from: w */
    private static final Map f1240w = new HashMap();

    /* renamed from: a */
    public int f1241a;

    /* renamed from: b */
    public String f1242b;

    /* renamed from: c */
    public String f1243c;

    /* renamed from: d */
    public double f1244d;

    /* renamed from: e */
    public double f1245e;

    /* renamed from: f */
    public String f1246f;

    /* renamed from: g */
    public int f1247g;

    /* renamed from: h */
    public String f1248h;

    /* renamed from: i */
    public EnumC0461k f1249i;

    /* renamed from: j */
    public String f1250j;

    /* renamed from: x */
    private byte f1251x = 0;

    /* renamed from: y */
    private EnumC0325eb[] f1252y = {EnumC0325eb.TIME_ZONE, EnumC0325eb.LANGUAGE, EnumC0325eb.COUNTRY, EnumC0325eb.LATITUDE, EnumC0325eb.LONGITUDE, EnumC0325eb.CARRIER, EnumC0325eb.LATENCY, EnumC0325eb.DISPLAY_NAME, EnumC0325eb.ACCESS_TYPE, EnumC0325eb.ACCESS_SUBTYPE};

    static {
        C0319dw c0319dw = null;
        f1240w.put(AbstractC0427hw.class, new C0321dy());
        f1240w.put(AbstractC0428hx.class, new C0324ea());
        EnumMap enumMap = new EnumMap(EnumC0325eb.class);
        enumMap.put((EnumMap) EnumC0325eb.TIME_ZONE, (EnumC0325eb) new C0403gz("time_zone", (byte) 2, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0325eb.LANGUAGE, (EnumC0325eb) new C0403gz("language", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0325eb.COUNTRY, (EnumC0325eb) new C0403gz("country", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0325eb.LATITUDE, (EnumC0325eb) new C0403gz("latitude", (byte) 2, new C0405ha((byte) 4)));
        enumMap.put((EnumMap) EnumC0325eb.LONGITUDE, (EnumC0325eb) new C0403gz("longitude", (byte) 2, new C0405ha((byte) 4)));
        enumMap.put((EnumMap) EnumC0325eb.CARRIER, (EnumC0325eb) new C0403gz("carrier", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0325eb.LATENCY, (EnumC0325eb) new C0403gz("latency", (byte) 2, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0325eb.DISPLAY_NAME, (EnumC0325eb) new C0403gz("display_name", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0325eb.ACCESS_TYPE, (EnumC0325eb) new C0403gz("access_type", (byte) 2, new C0402gy((byte) 16, EnumC0461k.class)));
        enumMap.put((EnumMap) EnumC0325eb.ACCESS_SUBTYPE, (EnumC0325eb) new C0403gz("access_subtype", (byte) 2, new C0405ha((byte) 11)));
        f1228k = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0318dv.class, f1228k);
    }

    /* renamed from: a */
    public C0318dv m995a(int i) {
        this.f1241a = i;
        m998a(true);
        return this;
    }

    /* renamed from: a */
    public C0318dv m996a(EnumC0461k enumC0461k) {
        this.f1249i = enumC0461k;
        return this;
    }

    /* renamed from: a */
    public C0318dv m997a(String str) {
        this.f1242b = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1240w.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m998a(boolean z) {
        this.f1251x = C0386gi.m1307a(this.f1251x, 0, z);
    }

    /* renamed from: a */
    public boolean m999a() {
        return C0386gi.m1309a(this.f1251x, 0);
    }

    /* renamed from: b */
    public C0318dv m1000b(String str) {
        this.f1243c = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1240w.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1001b(boolean z) {
        if (z) {
            return;
        }
        this.f1242b = null;
    }

    /* renamed from: b */
    public boolean m1002b() {
        return this.f1242b != null;
    }

    /* renamed from: c */
    public C0318dv m1003c(String str) {
        this.f1246f = str;
        return this;
    }

    /* renamed from: c */
    public void m1004c(boolean z) {
        if (z) {
            return;
        }
        this.f1243c = null;
    }

    /* renamed from: c */
    public boolean m1005c() {
        return this.f1243c != null;
    }

    /* renamed from: d */
    public C0318dv m1006d(String str) {
        this.f1250j = str;
        return this;
    }

    /* renamed from: d */
    public void m1007d(boolean z) {
        this.f1251x = C0386gi.m1307a(this.f1251x, 1, z);
    }

    /* renamed from: d */
    public boolean m1008d() {
        return C0386gi.m1309a(this.f1251x, 1);
    }

    /* renamed from: e */
    public void m1009e(boolean z) {
        this.f1251x = C0386gi.m1307a(this.f1251x, 2, z);
    }

    /* renamed from: e */
    public boolean m1010e() {
        return C0386gi.m1309a(this.f1251x, 2);
    }

    /* renamed from: f */
    public void m1011f(boolean z) {
        if (z) {
            return;
        }
        this.f1246f = null;
    }

    /* renamed from: f */
    public boolean m1012f() {
        return this.f1246f != null;
    }

    /* renamed from: g */
    public void m1013g(boolean z) {
        this.f1251x = C0386gi.m1307a(this.f1251x, 3, z);
    }

    /* renamed from: g */
    public boolean m1014g() {
        return C0386gi.m1309a(this.f1251x, 3);
    }

    /* renamed from: h */
    public void m1015h(boolean z) {
        if (z) {
            return;
        }
        this.f1248h = null;
    }

    /* renamed from: h */
    public boolean m1016h() {
        return this.f1248h != null;
    }

    /* renamed from: i */
    public void m1017i(boolean z) {
        if (z) {
            return;
        }
        this.f1249i = null;
    }

    /* renamed from: i */
    public boolean m1018i() {
        return this.f1249i != null;
    }

    /* renamed from: j */
    public void m1019j(boolean z) {
        if (z) {
            return;
        }
        this.f1250j = null;
    }

    /* renamed from: j */
    public boolean m1020j() {
        return this.f1250j != null;
    }

    /* renamed from: k */
    public void m1021k() {
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("MiscInfo(");
        boolean z2 = true;
        if (m999a()) {
            sb.append("time_zone:");
            sb.append(this.f1241a);
            z2 = false;
        }
        if (m1002b()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("language:");
            if (this.f1242b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1242b);
            }
            z2 = false;
        }
        if (m1005c()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("country:");
            if (this.f1243c == null) {
                sb.append("null");
            } else {
                sb.append(this.f1243c);
            }
            z2 = false;
        }
        if (m1008d()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("latitude:");
            sb.append(this.f1244d);
            z2 = false;
        }
        if (m1010e()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("longitude:");
            sb.append(this.f1245e);
            z2 = false;
        }
        if (m1012f()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("carrier:");
            if (this.f1246f == null) {
                sb.append("null");
            } else {
                sb.append(this.f1246f);
            }
            z2 = false;
        }
        if (m1014g()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("latency:");
            sb.append(this.f1247g);
            z2 = false;
        }
        if (m1016h()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("display_name:");
            if (this.f1248h == null) {
                sb.append("null");
            } else {
                sb.append(this.f1248h);
            }
            z2 = false;
        }
        if (m1018i()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("access_type:");
            if (this.f1249i == null) {
                sb.append("null");
            } else {
                sb.append(this.f1249i);
            }
        } else {
            z = z2;
        }
        if (m1020j()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("access_subtype:");
            if (this.f1250j == null) {
                sb.append("null");
            } else {
                sb.append(this.f1250j);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
