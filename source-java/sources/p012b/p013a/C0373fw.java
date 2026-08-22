package p012b.p013a;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.fw */
/* loaded from: classes.dex */
public class C0373fw implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: k */
    public static final Map f1417k;

    /* renamed from: l */
    private static final C0423hs f1418l = new C0423hs("UMEnvelope");

    /* renamed from: m */
    private static final C0415hk f1419m = new C0415hk(ClientCookie.VERSION_ATTR, (byte) 11, 1);

    /* renamed from: n */
    private static final C0415hk f1420n = new C0415hk("address", (byte) 11, 2);

    /* renamed from: o */
    private static final C0415hk f1421o = new C0415hk("signature", (byte) 11, 3);

    /* renamed from: p */
    private static final C0415hk f1422p = new C0415hk("serial_num", (byte) 8, 4);

    /* renamed from: q */
    private static final C0415hk f1423q = new C0415hk("ts_secs", (byte) 8, 5);

    /* renamed from: r */
    private static final C0415hk f1424r = new C0415hk("length", (byte) 8, 6);

    /* renamed from: s */
    private static final C0415hk f1425s = new C0415hk("entity", (byte) 11, 7);

    /* renamed from: t */
    private static final C0415hk f1426t = new C0415hk("guid", (byte) 11, 8);

    /* renamed from: u */
    private static final C0415hk f1427u = new C0415hk("checksum", (byte) 11, 9);

    /* renamed from: v */
    private static final C0415hk f1428v = new C0415hk("codex", (byte) 8, 10);

    /* renamed from: w */
    private static final Map f1429w = new HashMap();

    /* renamed from: a */
    public String f1430a;

    /* renamed from: b */
    public String f1431b;

    /* renamed from: c */
    public String f1432c;

    /* renamed from: d */
    public int f1433d;

    /* renamed from: e */
    public int f1434e;

    /* renamed from: f */
    public int f1435f;

    /* renamed from: g */
    public ByteBuffer f1436g;

    /* renamed from: h */
    public String f1437h;

    /* renamed from: i */
    public String f1438i;

    /* renamed from: j */
    public int f1439j;

    /* renamed from: x */
    private byte f1440x = 0;

    /* renamed from: y */
    private EnumC0380gc[] f1441y = {EnumC0380gc.CODEX};

    static {
        C0374fx c0374fx = null;
        f1429w.put(AbstractC0427hw.class, new C0376fz());
        f1429w.put(AbstractC0428hx.class, new C0379gb());
        EnumMap enumMap = new EnumMap(EnumC0380gc.class);
        enumMap.put((EnumMap) EnumC0380gc.VERSION, (EnumC0380gc) new C0403gz(ClientCookie.VERSION_ATTR, (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0380gc.ADDRESS, (EnumC0380gc) new C0403gz("address", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0380gc.SIGNATURE, (EnumC0380gc) new C0403gz("signature", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0380gc.SERIAL_NUM, (EnumC0380gc) new C0403gz("serial_num", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0380gc.TS_SECS, (EnumC0380gc) new C0403gz("ts_secs", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0380gc.LENGTH, (EnumC0380gc) new C0403gz("length", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0380gc.ENTITY, (EnumC0380gc) new C0403gz("entity", (byte) 1, new C0405ha((byte) 11, true)));
        enumMap.put((EnumMap) EnumC0380gc.GUID, (EnumC0380gc) new C0403gz("guid", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0380gc.CHECKSUM, (EnumC0380gc) new C0403gz("checksum", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0380gc.CODEX, (EnumC0380gc) new C0403gz("codex", (byte) 2, new C0405ha((byte) 8)));
        f1417k = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0373fw.class, f1417k);
    }

    /* renamed from: a */
    public C0373fw m1224a(int i) {
        this.f1433d = i;
        m1240d(true);
        return this;
    }

    /* renamed from: a */
    public C0373fw m1225a(String str) {
        this.f1430a = str;
        return this;
    }

    /* renamed from: a */
    public C0373fw m1226a(ByteBuffer byteBuffer) {
        this.f1436g = byteBuffer;
        return this;
    }

    /* renamed from: a */
    public C0373fw m1227a(byte[] bArr) {
        m1226a(bArr == null ? (ByteBuffer) null : ByteBuffer.wrap(bArr));
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1429w.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1228a(boolean z) {
        if (z) {
            return;
        }
        this.f1430a = null;
    }

    /* renamed from: a */
    public boolean m1229a() {
        return C0386gi.m1309a(this.f1440x, 0);
    }

    /* renamed from: b */
    public C0373fw m1230b(int i) {
        this.f1434e = i;
        m1244e(true);
        return this;
    }

    /* renamed from: b */
    public C0373fw m1231b(String str) {
        this.f1431b = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1429w.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1232b(boolean z) {
        if (z) {
            return;
        }
        this.f1431b = null;
    }

    /* renamed from: b */
    public boolean m1233b() {
        return C0386gi.m1309a(this.f1440x, 1);
    }

    /* renamed from: c */
    public C0373fw m1234c(int i) {
        this.f1435f = i;
        m1245f(true);
        return this;
    }

    /* renamed from: c */
    public C0373fw m1235c(String str) {
        this.f1432c = str;
        return this;
    }

    /* renamed from: c */
    public void m1236c(boolean z) {
        if (z) {
            return;
        }
        this.f1432c = null;
    }

    /* renamed from: c */
    public boolean m1237c() {
        return C0386gi.m1309a(this.f1440x, 2);
    }

    /* renamed from: d */
    public C0373fw m1238d(int i) {
        this.f1439j = i;
        m1249j(true);
        return this;
    }

    /* renamed from: d */
    public C0373fw m1239d(String str) {
        this.f1437h = str;
        return this;
    }

    /* renamed from: d */
    public void m1240d(boolean z) {
        this.f1440x = C0386gi.m1307a(this.f1440x, 0, z);
    }

    /* renamed from: d */
    public boolean m1241d() {
        return C0386gi.m1309a(this.f1440x, 3);
    }

    /* renamed from: e */
    public C0373fw m1242e(String str) {
        this.f1438i = str;
        return this;
    }

    /* renamed from: e */
    public void m1243e() {
        if (this.f1430a == null) {
            throw new C0419ho("Required field 'version' was not present! Struct: " + toString());
        }
        if (this.f1431b == null) {
            throw new C0419ho("Required field 'address' was not present! Struct: " + toString());
        }
        if (this.f1432c == null) {
            throw new C0419ho("Required field 'signature' was not present! Struct: " + toString());
        }
        if (this.f1436g == null) {
            throw new C0419ho("Required field 'entity' was not present! Struct: " + toString());
        }
        if (this.f1437h == null) {
            throw new C0419ho("Required field 'guid' was not present! Struct: " + toString());
        }
        if (this.f1438i == null) {
            throw new C0419ho("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    /* renamed from: e */
    public void m1244e(boolean z) {
        this.f1440x = C0386gi.m1307a(this.f1440x, 1, z);
    }

    /* renamed from: f */
    public void m1245f(boolean z) {
        this.f1440x = C0386gi.m1307a(this.f1440x, 2, z);
    }

    /* renamed from: g */
    public void m1246g(boolean z) {
        if (z) {
            return;
        }
        this.f1436g = null;
    }

    /* renamed from: h */
    public void m1247h(boolean z) {
        if (z) {
            return;
        }
        this.f1437h = null;
    }

    /* renamed from: i */
    public void m1248i(boolean z) {
        if (z) {
            return;
        }
        this.f1438i = null;
    }

    /* renamed from: j */
    public void m1249j(boolean z) {
        this.f1440x = C0386gi.m1307a(this.f1440x, 3, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("UMEnvelope(");
        sb.append("version:");
        if (this.f1430a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1430a);
        }
        sb.append(", ");
        sb.append("address:");
        if (this.f1431b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1431b);
        }
        sb.append(", ");
        sb.append("signature:");
        if (this.f1432c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1432c);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f1433d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f1434e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f1435f);
        sb.append(", ");
        sb.append("entity:");
        if (this.f1436g == null) {
            sb.append("null");
        } else {
            C0389gl.m1324a(this.f1436g, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        if (this.f1437h == null) {
            sb.append("null");
        } else {
            sb.append(this.f1437h);
        }
        sb.append(", ");
        sb.append("checksum:");
        if (this.f1438i == null) {
            sb.append("null");
        } else {
            sb.append(this.f1438i);
        }
        if (m1241d()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.f1439j);
        }
        sb.append(")");
        return sb.toString();
    }
}
