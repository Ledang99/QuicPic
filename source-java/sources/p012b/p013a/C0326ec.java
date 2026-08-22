package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.ec */
/* loaded from: classes.dex */
public class C0326ec implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: c */
    public static final Map f1269c;

    /* renamed from: d */
    private static final C0423hs f1270d = new C0423hs("Page");

    /* renamed from: e */
    private static final C0415hk f1271e = new C0415hk("page_name", (byte) 11, 1);

    /* renamed from: f */
    private static final C0415hk f1272f = new C0415hk("duration", (byte) 10, 2);

    /* renamed from: g */
    private static final Map f1273g = new HashMap();

    /* renamed from: a */
    public String f1274a;

    /* renamed from: b */
    public long f1275b;

    /* renamed from: h */
    private byte f1276h = 0;

    static {
        C0327ed c0327ed = null;
        f1273g.put(AbstractC0427hw.class, new C0329ef());
        f1273g.put(AbstractC0428hx.class, new C0331eh());
        EnumMap enumMap = new EnumMap(EnumC0332ei.class);
        enumMap.put((EnumMap) EnumC0332ei.PAGE_NAME, (EnumC0332ei) new C0403gz("page_name", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0332ei.DURATION, (EnumC0332ei) new C0403gz("duration", (byte) 1, new C0405ha((byte) 10)));
        f1269c = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0326ec.class, f1269c);
    }

    /* renamed from: a */
    public C0326ec m1037a(long j) {
        this.f1275b = j;
        m1042b(true);
        return this;
    }

    /* renamed from: a */
    public C0326ec m1038a(String str) {
        this.f1274a = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1273g.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1039a(boolean z) {
        if (z) {
            return;
        }
        this.f1274a = null;
    }

    /* renamed from: a */
    public boolean m1040a() {
        return C0386gi.m1309a(this.f1276h, 0);
    }

    /* renamed from: b */
    public void m1041b() {
        if (this.f1274a == null) {
            throw new C0419ho("Required field 'page_name' was not present! Struct: " + toString());
        }
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1273g.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1042b(boolean z) {
        this.f1276h = C0386gi.m1307a(this.f1276h, 0, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Page(");
        sb.append("page_name:");
        if (this.f1274a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1274a);
        }
        sb.append(", ");
        sb.append("duration:");
        sb.append(this.f1275b);
        sb.append(")");
        return sb.toString();
    }
}
