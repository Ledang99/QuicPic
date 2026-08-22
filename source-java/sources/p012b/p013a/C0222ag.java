package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.ag */
/* loaded from: classes.dex */
public class C0222ag implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f941d;

    /* renamed from: e */
    private static final C0423hs f942e = new C0423hs("ClientStats");

    /* renamed from: f */
    private static final C0415hk f943f = new C0415hk("successful_requests", (byte) 8, 1);

    /* renamed from: g */
    private static final C0415hk f944g = new C0415hk("failed_requests", (byte) 8, 2);

    /* renamed from: h */
    private static final C0415hk f945h = new C0415hk("last_request_spent_ms", (byte) 8, 3);

    /* renamed from: i */
    private static final Map f946i = new HashMap();

    /* renamed from: c */
    public int f949c;

    /* renamed from: j */
    private byte f950j = 0;

    /* renamed from: k */
    private EnumC0228am[] f951k = {EnumC0228am.LAST_REQUEST_SPENT_MS};

    /* renamed from: a */
    public int f947a = 0;

    /* renamed from: b */
    public int f948b = 0;

    static {
        C0223ah c0223ah = null;
        f946i.put(AbstractC0427hw.class, new C0225aj());
        f946i.put(AbstractC0428hx.class, new C0227al());
        EnumMap enumMap = new EnumMap(EnumC0228am.class);
        enumMap.put((EnumMap) EnumC0228am.SUCCESSFUL_REQUESTS, (EnumC0228am) new C0403gz("successful_requests", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0228am.FAILED_REQUESTS, (EnumC0228am) new C0403gz("failed_requests", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0228am.LAST_REQUEST_SPENT_MS, (EnumC0228am) new C0403gz("last_request_spent_ms", (byte) 2, new C0405ha((byte) 8)));
        f941d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0222ag.class, f941d);
    }

    /* renamed from: a */
    public C0222ag m645a(int i) {
        this.f947a = i;
        m647a(true);
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f946i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m647a(boolean z) {
        this.f950j = C0386gi.m1307a(this.f950j, 0, z);
    }

    /* renamed from: a */
    public boolean m648a() {
        return C0386gi.m1309a(this.f950j, 0);
    }

    /* renamed from: b */
    public C0222ag m649b(int i) {
        this.f948b = i;
        m651b(true);
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f946i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m651b(boolean z) {
        this.f950j = C0386gi.m1307a(this.f950j, 1, z);
    }

    /* renamed from: b */
    public boolean m652b() {
        return C0386gi.m1309a(this.f950j, 1);
    }

    /* renamed from: c */
    public C0222ag m653c(int i) {
        this.f949c = i;
        m654c(true);
        return this;
    }

    /* renamed from: c */
    public void m654c(boolean z) {
        this.f950j = C0386gi.m1307a(this.f950j, 2, z);
    }

    /* renamed from: c */
    public boolean m655c() {
        return C0386gi.m1309a(this.f950j, 2);
    }

    /* renamed from: d */
    public void m656d() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientStats(");
        sb.append("successful_requests:");
        sb.append(this.f947a);
        sb.append(", ");
        sb.append("failed_requests:");
        sb.append(this.f948b);
        if (m655c()) {
            sb.append(", ");
            sb.append("last_request_spent_ms:");
            sb.append(this.f949c);
        }
        sb.append(")");
        return sb.toString();
    }
}
