package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.s */
/* loaded from: classes.dex */
public class C0469s implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: c */
    public static final Map f1646c;

    /* renamed from: d */
    private static final C0423hs f1647d = new C0423hs("ActiveUser");

    /* renamed from: e */
    private static final C0415hk f1648e = new C0415hk("provider", (byte) 11, 1);

    /* renamed from: f */
    private static final C0415hk f1649f = new C0415hk("puid", (byte) 11, 2);

    /* renamed from: g */
    private static final Map f1650g = new HashMap();

    /* renamed from: a */
    public String f1651a;

    /* renamed from: b */
    public String f1652b;

    static {
        C0470t c0470t = null;
        f1650g.put(AbstractC0427hw.class, new C0472v());
        f1650g.put(AbstractC0428hx.class, new C0474x());
        EnumMap enumMap = new EnumMap(EnumC0475y.class);
        enumMap.put((EnumMap) EnumC0475y.PROVIDER, (EnumC0475y) new C0403gz("provider", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0475y.PUID, (EnumC0475y) new C0403gz("puid", (byte) 1, new C0405ha((byte) 11)));
        f1646c = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0469s.class, f1646c);
    }

    public C0469s() {
    }

    public C0469s(String str, String str2) {
        this();
        this.f1651a = str;
        this.f1652b = str2;
    }

    /* renamed from: a */
    public void m1557a() {
        if (this.f1651a == null) {
            throw new C0419ho("Required field 'provider' was not present! Struct: " + toString());
        }
        if (this.f1652b == null) {
            throw new C0419ho("Required field 'puid' was not present! Struct: " + toString());
        }
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1650g.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1558a(boolean z) {
        if (z) {
            return;
        }
        this.f1651a = null;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1650g.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1559b(boolean z) {
        if (z) {
            return;
        }
        this.f1652b = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ActiveUser(");
        sb.append("provider:");
        if (this.f1651a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1651a);
        }
        sb.append(", ");
        sb.append("puid:");
        if (this.f1652b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1652b);
        }
        sb.append(")");
        return sb.toString();
    }
}
