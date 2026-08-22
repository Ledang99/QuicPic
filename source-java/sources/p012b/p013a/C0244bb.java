package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.bb */
/* loaded from: classes.dex */
public class C0244bb implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1038d;

    /* renamed from: e */
    private static final C0423hs f1039e = new C0423hs("Error");

    /* renamed from: f */
    private static final C0415hk f1040f = new C0415hk("ts", (byte) 10, 1);

    /* renamed from: g */
    private static final C0415hk f1041g = new C0415hk("context", (byte) 11, 2);

    /* renamed from: h */
    private static final C0415hk f1042h = new C0415hk("source", (byte) 8, 3);

    /* renamed from: i */
    private static final Map f1043i = new HashMap();

    /* renamed from: a */
    public long f1044a;

    /* renamed from: b */
    public String f1045b;

    /* renamed from: c */
    public EnumC0251bi f1046c;

    /* renamed from: j */
    private byte f1047j = 0;

    /* renamed from: k */
    private EnumC0250bh[] f1048k = {EnumC0250bh.SOURCE};

    static {
        C0245bc c0245bc = null;
        f1043i.put(AbstractC0427hw.class, new C0247be());
        f1043i.put(AbstractC0428hx.class, new C0249bg());
        EnumMap enumMap = new EnumMap(EnumC0250bh.class);
        enumMap.put((EnumMap) EnumC0250bh.TS, (EnumC0250bh) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0250bh.CONTEXT, (EnumC0250bh) new C0403gz("context", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0250bh.SOURCE, (EnumC0250bh) new C0403gz("source", (byte) 2, new C0402gy((byte) 16, EnumC0251bi.class)));
        f1038d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0244bb.class, f1038d);
    }

    /* renamed from: a */
    public C0244bb m771a(long j) {
        this.f1044a = j;
        m774a(true);
        return this;
    }

    /* renamed from: a */
    public C0244bb m772a(EnumC0251bi enumC0251bi) {
        this.f1046c = enumC0251bi;
        return this;
    }

    /* renamed from: a */
    public C0244bb m773a(String str) {
        this.f1045b = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1043i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m774a(boolean z) {
        this.f1047j = C0386gi.m1307a(this.f1047j, 0, z);
    }

    /* renamed from: a */
    public boolean m775a() {
        return C0386gi.m1309a(this.f1047j, 0);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1043i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m776b(boolean z) {
        if (z) {
            return;
        }
        this.f1045b = null;
    }

    /* renamed from: b */
    public boolean m777b() {
        return this.f1046c != null;
    }

    /* renamed from: c */
    public void m778c() {
        if (this.f1045b == null) {
            throw new C0419ho("Required field 'context' was not present! Struct: " + toString());
        }
    }

    /* renamed from: c */
    public void m779c(boolean z) {
        if (z) {
            return;
        }
        this.f1046c = null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Error(");
        sb.append("ts:");
        sb.append(this.f1044a);
        sb.append(", ");
        sb.append("context:");
        if (this.f1045b == null) {
            sb.append("null");
        } else {
            sb.append(this.f1045b);
        }
        if (m777b()) {
            sb.append(", ");
            sb.append("source:");
            if (this.f1046c == null) {
                sb.append("null");
            } else {
                sb.append(this.f1046c);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
