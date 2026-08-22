package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.z */
/* loaded from: classes.dex */
public class C0476z implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: k */
    public static final Map f1659k;

    /* renamed from: l */
    private static final C0423hs f1660l = new C0423hs("AppInfo");

    /* renamed from: m */
    private static final C0415hk f1661m = new C0415hk("key", (byte) 11, 1);

    /* renamed from: n */
    private static final C0415hk f1662n = new C0415hk(ClientCookie.VERSION_ATTR, (byte) 11, 2);

    /* renamed from: o */
    private static final C0415hk f1663o = new C0415hk("version_index", (byte) 8, 3);

    /* renamed from: p */
    private static final C0415hk f1664p = new C0415hk("package_name", (byte) 11, 4);

    /* renamed from: q */
    private static final C0415hk f1665q = new C0415hk("sdk_type", (byte) 8, 5);

    /* renamed from: r */
    private static final C0415hk f1666r = new C0415hk("sdk_version", (byte) 11, 6);

    /* renamed from: s */
    private static final C0415hk f1667s = new C0415hk("channel", (byte) 11, 7);

    /* renamed from: t */
    private static final C0415hk f1668t = new C0415hk("wrapper_type", (byte) 11, 8);

    /* renamed from: u */
    private static final C0415hk f1669u = new C0415hk("wrapper_version", (byte) 11, 9);

    /* renamed from: v */
    private static final C0415hk f1670v = new C0415hk("vertical_type", (byte) 8, 10);

    /* renamed from: w */
    private static final Map f1671w = new HashMap();

    /* renamed from: a */
    public String f1672a;

    /* renamed from: b */
    public String f1673b;

    /* renamed from: c */
    public int f1674c;

    /* renamed from: d */
    public String f1675d;

    /* renamed from: e */
    public EnumC0351fa f1676e;

    /* renamed from: f */
    public String f1677f;

    /* renamed from: g */
    public String f1678g;

    /* renamed from: h */
    public String f1679h;

    /* renamed from: i */
    public String f1680i;

    /* renamed from: j */
    public int f1681j;

    /* renamed from: x */
    private byte f1682x = 0;

    /* renamed from: y */
    private EnumC0221af[] f1683y = {EnumC0221af.VERSION, EnumC0221af.VERSION_INDEX, EnumC0221af.PACKAGE_NAME, EnumC0221af.WRAPPER_TYPE, EnumC0221af.WRAPPER_VERSION, EnumC0221af.VERTICAL_TYPE};

    static {
        C0216aa c0216aa = null;
        f1671w.put(AbstractC0427hw.class, new C0218ac());
        f1671w.put(AbstractC0428hx.class, new C0220ae());
        EnumMap enumMap = new EnumMap(EnumC0221af.class);
        enumMap.put((EnumMap) EnumC0221af.KEY, (EnumC0221af) new C0403gz("key", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.VERSION, (EnumC0221af) new C0403gz(ClientCookie.VERSION_ATTR, (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.VERSION_INDEX, (EnumC0221af) new C0403gz("version_index", (byte) 2, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0221af.PACKAGE_NAME, (EnumC0221af) new C0403gz("package_name", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.SDK_TYPE, (EnumC0221af) new C0403gz("sdk_type", (byte) 1, new C0402gy((byte) 16, EnumC0351fa.class)));
        enumMap.put((EnumMap) EnumC0221af.SDK_VERSION, (EnumC0221af) new C0403gz("sdk_version", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.CHANNEL, (EnumC0221af) new C0403gz("channel", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.WRAPPER_TYPE, (EnumC0221af) new C0403gz("wrapper_type", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.WRAPPER_VERSION, (EnumC0221af) new C0403gz("wrapper_version", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0221af.VERTICAL_TYPE, (EnumC0221af) new C0403gz("vertical_type", (byte) 2, new C0405ha((byte) 8)));
        f1659k = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0476z.class, f1659k);
    }

    /* renamed from: a */
    public C0476z m1578a(int i) {
        this.f1674c = i;
        m1588c(true);
        return this;
    }

    /* renamed from: a */
    public C0476z m1579a(EnumC0351fa enumC0351fa) {
        this.f1676e = enumC0351fa;
        return this;
    }

    /* renamed from: a */
    public C0476z m1580a(String str) {
        this.f1672a = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1671w.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1581a(boolean z) {
        if (z) {
            return;
        }
        this.f1672a = null;
    }

    /* renamed from: a */
    public boolean m1582a() {
        return this.f1673b != null;
    }

    /* renamed from: b */
    public C0476z m1583b(int i) {
        this.f1681j = i;
        m1604j(true);
        return this;
    }

    /* renamed from: b */
    public C0476z m1584b(String str) {
        this.f1673b = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1671w.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1585b(boolean z) {
        if (z) {
            return;
        }
        this.f1673b = null;
    }

    /* renamed from: b */
    public boolean m1586b() {
        return C0386gi.m1309a(this.f1682x, 0);
    }

    /* renamed from: c */
    public C0476z m1587c(String str) {
        this.f1675d = str;
        return this;
    }

    /* renamed from: c */
    public void m1588c(boolean z) {
        this.f1682x = C0386gi.m1307a(this.f1682x, 0, z);
    }

    /* renamed from: c */
    public boolean m1589c() {
        return this.f1675d != null;
    }

    /* renamed from: d */
    public C0476z m1590d(String str) {
        this.f1677f = str;
        return this;
    }

    /* renamed from: d */
    public void m1591d(boolean z) {
        if (z) {
            return;
        }
        this.f1675d = null;
    }

    /* renamed from: d */
    public boolean m1592d() {
        return this.f1679h != null;
    }

    /* renamed from: e */
    public C0476z m1593e(String str) {
        this.f1678g = str;
        return this;
    }

    /* renamed from: e */
    public void m1594e(boolean z) {
        if (z) {
            return;
        }
        this.f1676e = null;
    }

    /* renamed from: e */
    public boolean m1595e() {
        return this.f1680i != null;
    }

    /* renamed from: f */
    public C0476z m1596f(String str) {
        this.f1679h = str;
        return this;
    }

    /* renamed from: f */
    public void m1597f(boolean z) {
        if (z) {
            return;
        }
        this.f1677f = null;
    }

    /* renamed from: f */
    public boolean m1598f() {
        return C0386gi.m1309a(this.f1682x, 1);
    }

    /* renamed from: g */
    public C0476z m1599g(String str) {
        this.f1680i = str;
        return this;
    }

    /* renamed from: g */
    public void m1600g() {
        if (this.f1672a == null) {
            throw new C0419ho("Required field 'key' was not present! Struct: " + toString());
        }
        if (this.f1676e == null) {
            throw new C0419ho("Required field 'sdk_type' was not present! Struct: " + toString());
        }
        if (this.f1677f == null) {
            throw new C0419ho("Required field 'sdk_version' was not present! Struct: " + toString());
        }
        if (this.f1678g == null) {
            throw new C0419ho("Required field 'channel' was not present! Struct: " + toString());
        }
    }

    /* renamed from: g */
    public void m1601g(boolean z) {
        if (z) {
            return;
        }
        this.f1678g = null;
    }

    /* renamed from: h */
    public void m1602h(boolean z) {
        if (z) {
            return;
        }
        this.f1679h = null;
    }

    /* renamed from: i */
    public void m1603i(boolean z) {
        if (z) {
            return;
        }
        this.f1680i = null;
    }

    /* renamed from: j */
    public void m1604j(boolean z) {
        this.f1682x = C0386gi.m1307a(this.f1682x, 1, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AppInfo(");
        sb.append("key:");
        if (this.f1672a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1672a);
        }
        if (m1582a()) {
            sb.append(", ");
            sb.append("version:");
            if (this.f1673b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1673b);
            }
        }
        if (m1586b()) {
            sb.append(", ");
            sb.append("version_index:");
            sb.append(this.f1674c);
        }
        if (m1589c()) {
            sb.append(", ");
            sb.append("package_name:");
            if (this.f1675d == null) {
                sb.append("null");
            } else {
                sb.append(this.f1675d);
            }
        }
        sb.append(", ");
        sb.append("sdk_type:");
        if (this.f1676e == null) {
            sb.append("null");
        } else {
            sb.append(this.f1676e);
        }
        sb.append(", ");
        sb.append("sdk_version:");
        if (this.f1677f == null) {
            sb.append("null");
        } else {
            sb.append(this.f1677f);
        }
        sb.append(", ");
        sb.append("channel:");
        if (this.f1678g == null) {
            sb.append("null");
        } else {
            sb.append(this.f1678g);
        }
        if (m1592d()) {
            sb.append(", ");
            sb.append("wrapper_type:");
            if (this.f1679h == null) {
                sb.append("null");
            } else {
                sb.append(this.f1679h);
            }
        }
        if (m1595e()) {
            sb.append(", ");
            sb.append("wrapper_version:");
            if (this.f1680i == null) {
                sb.append("null");
            } else {
                sb.append(this.f1680i);
            }
        }
        if (m1598f()) {
            sb.append(", ");
            sb.append("vertical_type:");
            sb.append(this.f1681j);
        }
        sb.append(")");
        return sb.toString();
    }
}
