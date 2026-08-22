package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.ct */
/* loaded from: classes.dex */
public class C0289ct implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1159d;

    /* renamed from: e */
    private static final C0423hs f1160e = new C0423hs("ImprintValue");

    /* renamed from: f */
    private static final C0415hk f1161f = new C0415hk("value", (byte) 11, 1);

    /* renamed from: g */
    private static final C0415hk f1162g = new C0415hk("ts", (byte) 10, 2);

    /* renamed from: h */
    private static final C0415hk f1163h = new C0415hk("guid", (byte) 11, 3);

    /* renamed from: i */
    private static final Map f1164i = new HashMap();

    /* renamed from: a */
    public String f1165a;

    /* renamed from: b */
    public long f1166b;

    /* renamed from: c */
    public String f1167c;

    /* renamed from: j */
    private byte f1168j = 0;

    /* renamed from: k */
    private EnumC0295cz[] f1169k = {EnumC0295cz.VALUE};

    static {
        C0290cu c0290cu = null;
        f1164i.put(AbstractC0427hw.class, new C0292cw());
        f1164i.put(AbstractC0428hx.class, new C0294cy());
        EnumMap enumMap = new EnumMap(EnumC0295cz.class);
        enumMap.put((EnumMap) EnumC0295cz.VALUE, (EnumC0295cz) new C0403gz("value", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0295cz.TS, (EnumC0295cz) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0295cz.GUID, (EnumC0295cz) new C0403gz("guid", (byte) 1, new C0405ha((byte) 11)));
        f1159d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0289ct.class, f1159d);
    }

    /* renamed from: a */
    public String m909a() {
        return this.f1165a;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1164i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m910a(boolean z) {
        if (z) {
            return;
        }
        this.f1165a = null;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1164i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m911b(boolean z) {
        this.f1168j = C0386gi.m1307a(this.f1168j, 0, z);
    }

    /* renamed from: b */
    public boolean m912b() {
        return this.f1165a != null;
    }

    /* renamed from: c */
    public long m913c() {
        return this.f1166b;
    }

    /* renamed from: c */
    public void m914c(boolean z) {
        if (z) {
            return;
        }
        this.f1167c = null;
    }

    /* renamed from: d */
    public boolean m915d() {
        return C0386gi.m1309a(this.f1168j, 0);
    }

    /* renamed from: e */
    public String m916e() {
        return this.f1167c;
    }

    /* renamed from: f */
    public void m917f() {
        if (this.f1167c == null) {
            throw new C0419ho("Required field 'guid' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ImprintValue(");
        boolean z = true;
        if (m912b()) {
            sb.append("value:");
            if (this.f1165a == null) {
                sb.append("null");
            } else {
                sb.append(this.f1165a);
            }
            z = false;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.f1166b);
        sb.append(", ");
        sb.append("guid:");
        if (this.f1167c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1167c);
        }
        sb.append(")");
        return sb.toString();
    }
}
