package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpHeaders;

/* renamed from: b.a.do */
/* loaded from: classes.dex */
public class C0311do implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1211d;

    /* renamed from: e */
    private static final C0423hs f1212e = new C0423hs(HttpHeaders.LOCATION);

    /* renamed from: f */
    private static final C0415hk f1213f = new C0415hk("lat", (byte) 4, 1);

    /* renamed from: g */
    private static final C0415hk f1214g = new C0415hk("lng", (byte) 4, 2);

    /* renamed from: h */
    private static final C0415hk f1215h = new C0415hk("ts", (byte) 10, 3);

    /* renamed from: i */
    private static final Map f1216i = new HashMap();

    /* renamed from: a */
    public double f1217a;

    /* renamed from: b */
    public double f1218b;

    /* renamed from: c */
    public long f1219c;

    /* renamed from: j */
    private byte f1220j;

    static {
        C0312dp c0312dp = null;
        f1216i.put(AbstractC0427hw.class, new C0314dr());
        f1216i.put(AbstractC0428hx.class, new C0316dt());
        EnumMap enumMap = new EnumMap(EnumC0317du.class);
        enumMap.put((EnumMap) EnumC0317du.LAT, (EnumC0317du) new C0403gz("lat", (byte) 1, new C0405ha((byte) 4)));
        enumMap.put((EnumMap) EnumC0317du.LNG, (EnumC0317du) new C0403gz("lng", (byte) 1, new C0405ha((byte) 4)));
        enumMap.put((EnumMap) EnumC0317du.TS, (EnumC0317du) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        f1211d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0311do.class, f1211d);
    }

    public C0311do() {
        this.f1220j = (byte) 0;
    }

    public C0311do(double d, double d2, long j) {
        this();
        this.f1217a = d;
        m970a(true);
        this.f1218b = d2;
        m972b(true);
        this.f1219c = j;
        m974c(true);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1216i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m970a(boolean z) {
        this.f1220j = C0386gi.m1307a(this.f1220j, 0, z);
    }

    /* renamed from: a */
    public boolean m971a() {
        return C0386gi.m1309a(this.f1220j, 0);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1216i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m972b(boolean z) {
        this.f1220j = C0386gi.m1307a(this.f1220j, 1, z);
    }

    /* renamed from: b */
    public boolean m973b() {
        return C0386gi.m1309a(this.f1220j, 1);
    }

    /* renamed from: c */
    public void m974c(boolean z) {
        this.f1220j = C0386gi.m1307a(this.f1220j, 2, z);
    }

    /* renamed from: c */
    public boolean m975c() {
        return C0386gi.m1309a(this.f1220j, 2);
    }

    /* renamed from: d */
    public void m976d() {
    }

    public String toString() {
        return "Location(lat:" + this.f1217a + ", lng:" + this.f1218b + ", ts:" + this.f1219c + ")";
    }
}
