package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.dh */
/* loaded from: classes.dex */
public class C0304dh implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: c */
    public static final Map f1197c;

    /* renamed from: d */
    private static final C0423hs f1198d = new C0423hs("Latent");

    /* renamed from: e */
    private static final C0415hk f1199e = new C0415hk("latency", (byte) 8, 1);

    /* renamed from: f */
    private static final C0415hk f1200f = new C0415hk("interval", (byte) 10, 2);

    /* renamed from: g */
    private static final Map f1201g = new HashMap();

    /* renamed from: a */
    public int f1202a;

    /* renamed from: b */
    public long f1203b;

    /* renamed from: h */
    private byte f1204h;

    static {
        C0305di c0305di = null;
        f1201g.put(AbstractC0427hw.class, new C0307dk());
        f1201g.put(AbstractC0428hx.class, new C0309dm());
        EnumMap enumMap = new EnumMap(EnumC0310dn.class);
        enumMap.put((EnumMap) EnumC0310dn.LATENCY, (EnumC0310dn) new C0403gz("latency", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0310dn.INTERVAL, (EnumC0310dn) new C0403gz("interval", (byte) 1, new C0405ha((byte) 10)));
        f1197c = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0304dh.class, f1197c);
    }

    public C0304dh() {
        this.f1204h = (byte) 0;
    }

    public C0304dh(int i, long j) {
        this();
        this.f1202a = i;
        m954a(true);
        this.f1203b = j;
        m956b(true);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1201g.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m954a(boolean z) {
        this.f1204h = C0386gi.m1307a(this.f1204h, 0, z);
    }

    /* renamed from: a */
    public boolean m955a() {
        return C0386gi.m1309a(this.f1204h, 0);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1201g.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m956b(boolean z) {
        this.f1204h = C0386gi.m1307a(this.f1204h, 1, z);
    }

    /* renamed from: b */
    public boolean m957b() {
        return C0386gi.m1309a(this.f1204h, 1);
    }

    /* renamed from: c */
    public void m958c() {
    }

    public String toString() {
        return "Latent(latency:" + this.f1202a + ", interval:" + this.f1203b + ")";
    }
}
