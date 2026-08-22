package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.bj */
/* loaded from: classes.dex */
public class C0252bj implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: f */
    public static final Map f1060f;

    /* renamed from: g */
    private static final C0423hs f1061g = new C0423hs("Event");

    /* renamed from: h */
    private static final C0415hk f1062h = new C0415hk("name", (byte) 11, 1);

    /* renamed from: i */
    private static final C0415hk f1063i = new C0415hk("properties", (byte) 13, 2);

    /* renamed from: j */
    private static final C0415hk f1064j = new C0415hk("duration", (byte) 10, 3);

    /* renamed from: k */
    private static final C0415hk f1065k = new C0415hk("acc", (byte) 8, 4);

    /* renamed from: l */
    private static final C0415hk f1066l = new C0415hk("ts", (byte) 10, 5);

    /* renamed from: m */
    private static final Map f1067m = new HashMap();

    /* renamed from: a */
    public String f1068a;

    /* renamed from: b */
    public Map f1069b;

    /* renamed from: c */
    public long f1070c;

    /* renamed from: d */
    public int f1071d;

    /* renamed from: e */
    public long f1072e;

    /* renamed from: n */
    private byte f1073n = 0;

    /* renamed from: o */
    private EnumC0258bp[] f1074o = {EnumC0258bp.DURATION, EnumC0258bp.ACC};

    static {
        f1067m.put(AbstractC0427hw.class, new C0255bm());
        f1067m.put(AbstractC0428hx.class, new C0257bo());
        EnumMap enumMap = new EnumMap(EnumC0258bp.class);
        enumMap.put((EnumMap) EnumC0258bp.NAME, (EnumC0258bp) new C0403gz("name", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0258bp.PROPERTIES, (EnumC0258bp) new C0403gz("properties", (byte) 1, new C0407hc((byte) 13, new C0405ha((byte) 11), new C0408hd((byte) 12, C0333ej.class))));
        enumMap.put((EnumMap) EnumC0258bp.DURATION, (EnumC0258bp) new C0403gz("duration", (byte) 2, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0258bp.ACC, (EnumC0258bp) new C0403gz("acc", (byte) 2, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0258bp.TS, (EnumC0258bp) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        f1060f = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0252bj.class, f1060f);
    }

    /* renamed from: a */
    public C0252bj m795a(int i) {
        this.f1071d = i;
        m807d(true);
        return this;
    }

    /* renamed from: a */
    public C0252bj m796a(long j) {
        this.f1070c = j;
        m804c(true);
        return this;
    }

    /* renamed from: a */
    public C0252bj m797a(String str) {
        this.f1068a = str;
        return this;
    }

    /* renamed from: a */
    public C0252bj m798a(Map map) {
        this.f1069b = map;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1067m.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m799a(boolean z) {
        if (z) {
            return;
        }
        this.f1068a = null;
    }

    /* renamed from: a */
    public boolean m800a() {
        return C0386gi.m1309a(this.f1073n, 0);
    }

    /* renamed from: b */
    public C0252bj m801b(long j) {
        this.f1072e = j;
        m808e(true);
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1067m.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m802b(boolean z) {
        if (z) {
            return;
        }
        this.f1069b = null;
    }

    /* renamed from: b */
    public boolean m803b() {
        return C0386gi.m1309a(this.f1073n, 1);
    }

    /* renamed from: c */
    public void m804c(boolean z) {
        this.f1073n = C0386gi.m1307a(this.f1073n, 0, z);
    }

    /* renamed from: c */
    public boolean m805c() {
        return C0386gi.m1309a(this.f1073n, 2);
    }

    /* renamed from: d */
    public void m806d() {
        if (this.f1068a == null) {
            throw new C0419ho("Required field 'name' was not present! Struct: " + toString());
        }
        if (this.f1069b == null) {
            throw new C0419ho("Required field 'properties' was not present! Struct: " + toString());
        }
    }

    /* renamed from: d */
    public void m807d(boolean z) {
        this.f1073n = C0386gi.m1307a(this.f1073n, 1, z);
    }

    /* renamed from: e */
    public void m808e(boolean z) {
        this.f1073n = C0386gi.m1307a(this.f1073n, 2, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Event(");
        sb.append("name:");
        if (this.f1068a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1068a);
        }
        sb.append(", ");
        sb.append("properties:");
        if (this.f1069b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1069b);
        }
        if (m800a()) {
            sb.append(", ");
            sb.append("duration:");
            sb.append(this.f1070c);
        }
        if (m803b()) {
            sb.append(", ");
            sb.append("acc:");
            sb.append(this.f1071d);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f1072e);
        sb.append(")");
        return sb.toString();
    }
}
