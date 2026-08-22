package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.au */
/* loaded from: classes.dex */
public class C0236au implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: r */
    public static final Map f981r;

    /* renamed from: L */
    private byte f990L = 0;

    /* renamed from: M */
    private EnumC0243ba[] f991M = {EnumC0243ba.DEVICE_ID, EnumC0243ba.IDMD5, EnumC0243ba.MAC_ADDRESS, EnumC0243ba.OPEN_UDID, EnumC0243ba.MODEL, EnumC0243ba.CPU, EnumC0243ba.OS, EnumC0243ba.OS_VERSION, EnumC0243ba.RESOLUTION, EnumC0243ba.IS_JAILBROKEN, EnumC0243ba.IS_PIRATED, EnumC0243ba.DEVICE_BOARD, EnumC0243ba.DEVICE_BRAND, EnumC0243ba.DEVICE_MANUTIME, EnumC0243ba.DEVICE_MANUFACTURER, EnumC0243ba.DEVICE_MANUID, EnumC0243ba.DEVICE_NAME};

    /* renamed from: a */
    public String f992a;

    /* renamed from: b */
    public String f993b;

    /* renamed from: c */
    public String f994c;

    /* renamed from: d */
    public String f995d;

    /* renamed from: e */
    public String f996e;

    /* renamed from: f */
    public String f997f;

    /* renamed from: g */
    public String f998g;

    /* renamed from: h */
    public String f999h;

    /* renamed from: i */
    public C0336em f1000i;

    /* renamed from: j */
    public boolean f1001j;

    /* renamed from: k */
    public boolean f1002k;

    /* renamed from: l */
    public String f1003l;

    /* renamed from: m */
    public String f1004m;

    /* renamed from: n */
    public long f1005n;

    /* renamed from: o */
    public String f1006o;

    /* renamed from: p */
    public String f1007p;

    /* renamed from: q */
    public String f1008q;

    /* renamed from: s */
    private static final C0423hs f982s = new C0423hs("DeviceInfo");

    /* renamed from: t */
    private static final C0415hk f983t = new C0415hk("device_id", (byte) 11, 1);

    /* renamed from: u */
    private static final C0415hk f984u = new C0415hk("idmd5", (byte) 11, 2);

    /* renamed from: v */
    private static final C0415hk f985v = new C0415hk("mac_address", (byte) 11, 3);

    /* renamed from: w */
    private static final C0415hk f986w = new C0415hk("open_udid", (byte) 11, 4);

    /* renamed from: x */
    private static final C0415hk f987x = new C0415hk("model", (byte) 11, 5);

    /* renamed from: y */
    private static final C0415hk f988y = new C0415hk("cpu", (byte) 11, 6);

    /* renamed from: z */
    private static final C0415hk f989z = new C0415hk("os", (byte) 11, 7);

    /* renamed from: A */
    private static final C0415hk f970A = new C0415hk("os_version", (byte) 11, 8);

    /* renamed from: B */
    private static final C0415hk f971B = new C0415hk("resolution", (byte) 12, 9);

    /* renamed from: C */
    private static final C0415hk f972C = new C0415hk("is_jailbroken", (byte) 2, 10);

    /* renamed from: D */
    private static final C0415hk f973D = new C0415hk("is_pirated", (byte) 2, 11);

    /* renamed from: E */
    private static final C0415hk f974E = new C0415hk("device_board", (byte) 11, 12);

    /* renamed from: F */
    private static final C0415hk f975F = new C0415hk("device_brand", (byte) 11, 13);

    /* renamed from: G */
    private static final C0415hk f976G = new C0415hk("device_manutime", (byte) 10, 14);

    /* renamed from: H */
    private static final C0415hk f977H = new C0415hk("device_manufacturer", (byte) 11, 15);

    /* renamed from: I */
    private static final C0415hk f978I = new C0415hk("device_manuid", (byte) 11, 16);

    /* renamed from: J */
    private static final C0415hk f979J = new C0415hk("device_name", (byte) 11, 17);

    /* renamed from: K */
    private static final Map f980K = new HashMap();

    static {
        C0237av c0237av = null;
        f980K.put(AbstractC0427hw.class, new C0239ax());
        f980K.put(AbstractC0428hx.class, new C0241az());
        EnumMap enumMap = new EnumMap(EnumC0243ba.class);
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_ID, (EnumC0243ba) new C0403gz("device_id", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.IDMD5, (EnumC0243ba) new C0403gz("idmd5", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.MAC_ADDRESS, (EnumC0243ba) new C0403gz("mac_address", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.OPEN_UDID, (EnumC0243ba) new C0403gz("open_udid", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.MODEL, (EnumC0243ba) new C0403gz("model", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.CPU, (EnumC0243ba) new C0403gz("cpu", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.OS, (EnumC0243ba) new C0403gz("os", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.OS_VERSION, (EnumC0243ba) new C0403gz("os_version", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.RESOLUTION, (EnumC0243ba) new C0403gz("resolution", (byte) 2, new C0408hd((byte) 12, C0336em.class)));
        enumMap.put((EnumMap) EnumC0243ba.IS_JAILBROKEN, (EnumC0243ba) new C0403gz("is_jailbroken", (byte) 2, new C0405ha((byte) 2)));
        enumMap.put((EnumMap) EnumC0243ba.IS_PIRATED, (EnumC0243ba) new C0403gz("is_pirated", (byte) 2, new C0405ha((byte) 2)));
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_BOARD, (EnumC0243ba) new C0403gz("device_board", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_BRAND, (EnumC0243ba) new C0403gz("device_brand", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_MANUTIME, (EnumC0243ba) new C0403gz("device_manutime", (byte) 2, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_MANUFACTURER, (EnumC0243ba) new C0403gz("device_manufacturer", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_MANUID, (EnumC0243ba) new C0403gz("device_manuid", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0243ba.DEVICE_NAME, (EnumC0243ba) new C0403gz("device_name", (byte) 2, new C0405ha((byte) 11)));
        f981r = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0236au.class, f981r);
    }

    /* renamed from: a */
    public C0236au m695a(long j) {
        this.f1005n = j;
        m735n(true);
        return this;
    }

    /* renamed from: a */
    public C0236au m696a(C0336em c0336em) {
        this.f1000i = c0336em;
        return this;
    }

    /* renamed from: a */
    public C0236au m697a(String str) {
        this.f992a = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f980K.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m698a(boolean z) {
        if (z) {
            return;
        }
        this.f992a = null;
    }

    /* renamed from: a */
    public boolean m699a() {
        return this.f992a != null;
    }

    /* renamed from: b */
    public C0236au m700b(String str) {
        this.f993b = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f980K.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m701b(boolean z) {
        if (z) {
            return;
        }
        this.f993b = null;
    }

    /* renamed from: b */
    public boolean m702b() {
        return this.f993b != null;
    }

    /* renamed from: c */
    public C0236au m703c(String str) {
        this.f994c = str;
        return this;
    }

    /* renamed from: c */
    public void m704c(boolean z) {
        if (z) {
            return;
        }
        this.f994c = null;
    }

    /* renamed from: c */
    public boolean m705c() {
        return this.f994c != null;
    }

    /* renamed from: d */
    public C0236au m706d(String str) {
        this.f996e = str;
        return this;
    }

    /* renamed from: d */
    public void m707d(boolean z) {
        if (z) {
            return;
        }
        this.f995d = null;
    }

    /* renamed from: d */
    public boolean m708d() {
        return this.f995d != null;
    }

    /* renamed from: e */
    public C0236au m709e(String str) {
        this.f997f = str;
        return this;
    }

    /* renamed from: e */
    public void m710e(boolean z) {
        if (z) {
            return;
        }
        this.f996e = null;
    }

    /* renamed from: e */
    public boolean m711e() {
        return this.f996e != null;
    }

    /* renamed from: f */
    public C0236au m712f(String str) {
        this.f998g = str;
        return this;
    }

    /* renamed from: f */
    public void m713f(boolean z) {
        if (z) {
            return;
        }
        this.f997f = null;
    }

    /* renamed from: f */
    public boolean m714f() {
        return this.f997f != null;
    }

    /* renamed from: g */
    public C0236au m715g(String str) {
        this.f999h = str;
        return this;
    }

    /* renamed from: g */
    public void m716g(boolean z) {
        if (z) {
            return;
        }
        this.f998g = null;
    }

    /* renamed from: g */
    public boolean m717g() {
        return this.f998g != null;
    }

    /* renamed from: h */
    public C0236au m718h(String str) {
        this.f1003l = str;
        return this;
    }

    /* renamed from: h */
    public void m719h(boolean z) {
        if (z) {
            return;
        }
        this.f999h = null;
    }

    /* renamed from: h */
    public boolean m720h() {
        return this.f999h != null;
    }

    /* renamed from: i */
    public C0236au m721i(String str) {
        this.f1004m = str;
        return this;
    }

    /* renamed from: i */
    public void m722i(boolean z) {
        if (z) {
            return;
        }
        this.f1000i = null;
    }

    /* renamed from: i */
    public boolean m723i() {
        return this.f1000i != null;
    }

    /* renamed from: j */
    public C0236au m724j(String str) {
        this.f1006o = str;
        return this;
    }

    /* renamed from: j */
    public void m725j(boolean z) {
        this.f990L = C0386gi.m1307a(this.f990L, 0, z);
    }

    /* renamed from: j */
    public boolean m726j() {
        return C0386gi.m1309a(this.f990L, 0);
    }

    /* renamed from: k */
    public C0236au m727k(String str) {
        this.f1007p = str;
        return this;
    }

    /* renamed from: k */
    public void m728k(boolean z) {
        this.f990L = C0386gi.m1307a(this.f990L, 1, z);
    }

    /* renamed from: k */
    public boolean m729k() {
        return C0386gi.m1309a(this.f990L, 1);
    }

    /* renamed from: l */
    public C0236au m730l(String str) {
        this.f1008q = str;
        return this;
    }

    /* renamed from: l */
    public void m731l(boolean z) {
        if (z) {
            return;
        }
        this.f1003l = null;
    }

    /* renamed from: l */
    public boolean m732l() {
        return this.f1003l != null;
    }

    /* renamed from: m */
    public void m733m(boolean z) {
        if (z) {
            return;
        }
        this.f1004m = null;
    }

    /* renamed from: m */
    public boolean m734m() {
        return this.f1004m != null;
    }

    /* renamed from: n */
    public void m735n(boolean z) {
        this.f990L = C0386gi.m1307a(this.f990L, 2, z);
    }

    /* renamed from: n */
    public boolean m736n() {
        return C0386gi.m1309a(this.f990L, 2);
    }

    /* renamed from: o */
    public void m737o(boolean z) {
        if (z) {
            return;
        }
        this.f1006o = null;
    }

    /* renamed from: o */
    public boolean m738o() {
        return this.f1006o != null;
    }

    /* renamed from: p */
    public void m739p(boolean z) {
        if (z) {
            return;
        }
        this.f1007p = null;
    }

    /* renamed from: p */
    public boolean m740p() {
        return this.f1007p != null;
    }

    /* renamed from: q */
    public void m741q(boolean z) {
        if (z) {
            return;
        }
        this.f1008q = null;
    }

    /* renamed from: q */
    public boolean m742q() {
        return this.f1008q != null;
    }

    /* renamed from: r */
    public void m743r() {
        if (this.f1000i != null) {
            this.f1000i.m1072c();
        }
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("DeviceInfo(");
        boolean z2 = true;
        if (m699a()) {
            sb.append("device_id:");
            if (this.f992a == null) {
                sb.append("null");
            } else {
                sb.append(this.f992a);
            }
            z2 = false;
        }
        if (m702b()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("idmd5:");
            if (this.f993b == null) {
                sb.append("null");
            } else {
                sb.append(this.f993b);
            }
            z2 = false;
        }
        if (m705c()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("mac_address:");
            if (this.f994c == null) {
                sb.append("null");
            } else {
                sb.append(this.f994c);
            }
            z2 = false;
        }
        if (m708d()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("open_udid:");
            if (this.f995d == null) {
                sb.append("null");
            } else {
                sb.append(this.f995d);
            }
            z2 = false;
        }
        if (m711e()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("model:");
            if (this.f996e == null) {
                sb.append("null");
            } else {
                sb.append(this.f996e);
            }
            z2 = false;
        }
        if (m714f()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("cpu:");
            if (this.f997f == null) {
                sb.append("null");
            } else {
                sb.append(this.f997f);
            }
            z2 = false;
        }
        if (m717g()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("os:");
            if (this.f998g == null) {
                sb.append("null");
            } else {
                sb.append(this.f998g);
            }
            z2 = false;
        }
        if (m720h()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("os_version:");
            if (this.f999h == null) {
                sb.append("null");
            } else {
                sb.append(this.f999h);
            }
            z2 = false;
        }
        if (m723i()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("resolution:");
            if (this.f1000i == null) {
                sb.append("null");
            } else {
                sb.append(this.f1000i);
            }
            z2 = false;
        }
        if (m726j()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("is_jailbroken:");
            sb.append(this.f1001j);
            z2 = false;
        }
        if (m729k()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("is_pirated:");
            sb.append(this.f1002k);
            z2 = false;
        }
        if (m732l()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("device_board:");
            if (this.f1003l == null) {
                sb.append("null");
            } else {
                sb.append(this.f1003l);
            }
            z2 = false;
        }
        if (m734m()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("device_brand:");
            if (this.f1004m == null) {
                sb.append("null");
            } else {
                sb.append(this.f1004m);
            }
            z2 = false;
        }
        if (m736n()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("device_manutime:");
            sb.append(this.f1005n);
            z2 = false;
        }
        if (m738o()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("device_manufacturer:");
            if (this.f1006o == null) {
                sb.append("null");
            } else {
                sb.append(this.f1006o);
            }
            z2 = false;
        }
        if (m740p()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("device_manuid:");
            if (this.f1007p == null) {
                sb.append("null");
            } else {
                sb.append(this.f1007p);
            }
        } else {
            z = z2;
        }
        if (m742q()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("device_name:");
            if (this.f1008q == null) {
                sb.append("null");
            } else {
                sb.append(this.f1008q);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
