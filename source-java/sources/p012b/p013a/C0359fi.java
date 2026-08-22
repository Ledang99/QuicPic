package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.fi */
/* loaded from: classes.dex */
public class C0359fi implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: c */
    public static final Map f1362c;

    /* renamed from: d */
    private static final C0423hs f1363d = new C0423hs("Traffic");

    /* renamed from: e */
    private static final C0415hk f1364e = new C0415hk("upload_traffic", (byte) 8, 1);

    /* renamed from: f */
    private static final C0415hk f1365f = new C0415hk("download_traffic", (byte) 8, 2);

    /* renamed from: g */
    private static final Map f1366g = new HashMap();

    /* renamed from: a */
    public int f1367a;

    /* renamed from: b */
    public int f1368b;

    /* renamed from: h */
    private byte f1369h = 0;

    static {
        C0360fj c0360fj = null;
        f1366g.put(AbstractC0427hw.class, new C0362fl());
        f1366g.put(AbstractC0428hx.class, new C0364fn());
        EnumMap enumMap = new EnumMap(EnumC0365fo.class);
        enumMap.put((EnumMap) EnumC0365fo.UPLOAD_TRAFFIC, (EnumC0365fo) new C0403gz("upload_traffic", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0365fo.DOWNLOAD_TRAFFIC, (EnumC0365fo) new C0403gz("download_traffic", (byte) 1, new C0405ha((byte) 8)));
        f1362c = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0359fi.class, f1362c);
    }

    /* renamed from: a */
    public C0359fi m1145a(int i) {
        this.f1367a = i;
        m1146a(true);
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1366g.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1146a(boolean z) {
        this.f1369h = C0386gi.m1307a(this.f1369h, 0, z);
    }

    /* renamed from: a */
    public boolean m1147a() {
        return C0386gi.m1309a(this.f1369h, 0);
    }

    /* renamed from: b */
    public C0359fi m1148b(int i) {
        this.f1368b = i;
        m1149b(true);
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1366g.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1149b(boolean z) {
        this.f1369h = C0386gi.m1307a(this.f1369h, 1, z);
    }

    /* renamed from: b */
    public boolean m1150b() {
        return C0386gi.m1309a(this.f1369h, 1);
    }

    /* renamed from: c */
    public void m1151c() {
    }

    public String toString() {
        return "Traffic(upload_traffic:" + this.f1367a + ", download_traffic:" + this.f1368b + ")";
    }
}
