package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.l */
/* loaded from: classes.dex */
public class C0462l implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: b */
    public static final Map f1635b;

    /* renamed from: c */
    private static final C0423hs f1636c = new C0423hs("ActivateMsg");

    /* renamed from: d */
    private static final C0415hk f1637d = new C0415hk("ts", (byte) 10, 1);

    /* renamed from: e */
    private static final Map f1638e = new HashMap();

    /* renamed from: a */
    public long f1639a;

    /* renamed from: f */
    private byte f1640f;

    static {
        C0463m c0463m = null;
        f1638e.put(AbstractC0427hw.class, new C0465o());
        f1638e.put(AbstractC0428hx.class, new C0467q());
        EnumMap enumMap = new EnumMap(EnumC0468r.class);
        enumMap.put((EnumMap) EnumC0468r.TS, (EnumC0468r) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        f1635b = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0462l.class, f1635b);
    }

    public C0462l() {
        this.f1640f = (byte) 0;
    }

    public C0462l(long j) {
        this();
        this.f1639a = j;
        m1544a(true);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1638e.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1544a(boolean z) {
        this.f1640f = C0386gi.m1307a(this.f1640f, 0, z);
    }

    /* renamed from: a */
    public boolean m1545a() {
        return C0386gi.m1309a(this.f1640f, 0);
    }

    /* renamed from: b */
    public void m1546b() {
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1638e.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    public String toString() {
        return "ActivateMsg(ts:" + this.f1639a + ")";
    }
}
