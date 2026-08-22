package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.cm */
/* loaded from: classes.dex */
public class C0282cm implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1142d;

    /* renamed from: e */
    private static final C0423hs f1143e = new C0423hs("Imprint");

    /* renamed from: f */
    private static final C0415hk f1144f = new C0415hk("property", (byte) 13, 1);

    /* renamed from: g */
    private static final C0415hk f1145g = new C0415hk(ClientCookie.VERSION_ATTR, (byte) 8, 2);

    /* renamed from: h */
    private static final C0415hk f1146h = new C0415hk("checksum", (byte) 11, 3);

    /* renamed from: i */
    private static final Map f1147i = new HashMap();

    /* renamed from: a */
    public Map f1148a;

    /* renamed from: b */
    public int f1149b;

    /* renamed from: c */
    public String f1150c;

    /* renamed from: j */
    private byte f1151j = 0;

    static {
        C0283cn c0283cn = null;
        f1147i.put(AbstractC0427hw.class, new C0285cp());
        f1147i.put(AbstractC0428hx.class, new C0287cr());
        EnumMap enumMap = new EnumMap(EnumC0288cs.class);
        enumMap.put((EnumMap) EnumC0288cs.PROPERTY, (EnumC0288cs) new C0403gz("property", (byte) 1, new C0407hc((byte) 13, new C0405ha((byte) 11), new C0408hd((byte) 12, C0289ct.class))));
        enumMap.put((EnumMap) EnumC0288cs.VERSION, (EnumC0288cs) new C0403gz(ClientCookie.VERSION_ATTR, (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0288cs.CHECKSUM, (EnumC0288cs) new C0403gz("checksum", (byte) 1, new C0405ha((byte) 11)));
        f1142d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0282cm.class, f1142d);
    }

    /* renamed from: a */
    public C0282cm m887a(int i) {
        this.f1149b = i;
        m891b(true);
        return this;
    }

    /* renamed from: a */
    public C0282cm m888a(String str) {
        this.f1150c = str;
        return this;
    }

    /* renamed from: a */
    public Map m889a() {
        return this.f1148a;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1147i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m890a(boolean z) {
        if (z) {
            return;
        }
        this.f1148a = null;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1147i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m891b(boolean z) {
        this.f1151j = C0386gi.m1307a(this.f1151j, 0, z);
    }

    /* renamed from: b */
    public boolean m892b() {
        return this.f1148a != null;
    }

    /* renamed from: c */
    public int m893c() {
        return this.f1149b;
    }

    /* renamed from: c */
    public void m894c(boolean z) {
        if (z) {
            return;
        }
        this.f1150c = null;
    }

    /* renamed from: d */
    public boolean m895d() {
        return C0386gi.m1309a(this.f1151j, 0);
    }

    /* renamed from: e */
    public String m896e() {
        return this.f1150c;
    }

    /* renamed from: f */
    public void m897f() {
        if (this.f1148a == null) {
            throw new C0419ho("Required field 'property' was not present! Struct: " + toString());
        }
        if (this.f1150c == null) {
            throw new C0419ho("Required field 'checksum' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Imprint(");
        sb.append("property:");
        if (this.f1148a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1148a);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f1149b);
        sb.append(", ");
        sb.append("checksum:");
        if (this.f1150c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1150c);
        }
        sb.append(")");
        return sb.toString();
    }
}
