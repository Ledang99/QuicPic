package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.em */
/* loaded from: classes.dex */
public class C0336em implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: c */
    public static final Map f1294c;

    /* renamed from: d */
    private static final C0423hs f1295d = new C0423hs("Resolution");

    /* renamed from: e */
    private static final C0415hk f1296e = new C0415hk("height", (byte) 8, 1);

    /* renamed from: f */
    private static final C0415hk f1297f = new C0415hk("width", (byte) 8, 2);

    /* renamed from: g */
    private static final Map f1298g = new HashMap();

    /* renamed from: a */
    public int f1299a;

    /* renamed from: b */
    public int f1300b;

    /* renamed from: h */
    private byte f1301h;

    static {
        C0337en c0337en = null;
        f1298g.put(AbstractC0427hw.class, new C0339ep());
        f1298g.put(AbstractC0428hx.class, new C0341er());
        EnumMap enumMap = new EnumMap(EnumC0342es.class);
        enumMap.put((EnumMap) EnumC0342es.HEIGHT, (EnumC0342es) new C0403gz("height", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0342es.WIDTH, (EnumC0342es) new C0403gz("width", (byte) 1, new C0405ha((byte) 8)));
        f1294c = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0336em.class, f1294c);
    }

    public C0336em() {
        this.f1301h = (byte) 0;
    }

    public C0336em(int i, int i2) {
        this();
        this.f1299a = i;
        m1068a(true);
        this.f1300b = i2;
        m1070b(true);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1298g.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1068a(boolean z) {
        this.f1301h = C0386gi.m1307a(this.f1301h, 0, z);
    }

    /* renamed from: a */
    public boolean m1069a() {
        return C0386gi.m1309a(this.f1301h, 0);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1298g.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1070b(boolean z) {
        this.f1301h = C0386gi.m1307a(this.f1301h, 1, z);
    }

    /* renamed from: b */
    public boolean m1071b() {
        return C0386gi.m1309a(this.f1301h, 1);
    }

    /* renamed from: c */
    public void m1072c() {
    }

    public String toString() {
        return "Resolution(height:" + this.f1299a + ", width:" + this.f1300b + ")";
    }
}
