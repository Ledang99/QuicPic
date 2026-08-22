package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: b.a.ce */
/* loaded from: classes.dex */
public class C0274ce implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1124d;

    /* renamed from: e */
    private static final C0423hs f1125e = new C0423hs("IdTracking");

    /* renamed from: f */
    private static final C0415hk f1126f = new C0415hk("snapshots", (byte) 13, 1);

    /* renamed from: g */
    private static final C0415hk f1127g = new C0415hk("journals", (byte) 15, 2);

    /* renamed from: h */
    private static final C0415hk f1128h = new C0415hk("checksum", (byte) 11, 3);

    /* renamed from: i */
    private static final Map f1129i = new HashMap();

    /* renamed from: a */
    public Map f1130a;

    /* renamed from: b */
    public List f1131b;

    /* renamed from: c */
    public String f1132c;

    /* renamed from: j */
    private EnumC0280ck[] f1133j = {EnumC0280ck.JOURNALS, EnumC0280ck.CHECKSUM};

    static {
        f1129i.put(AbstractC0427hw.class, new C0277ch());
        f1129i.put(AbstractC0428hx.class, new C0279cj());
        EnumMap enumMap = new EnumMap(EnumC0280ck.class);
        enumMap.put((EnumMap) EnumC0280ck.SNAPSHOTS, (EnumC0280ck) new C0403gz("snapshots", (byte) 1, new C0407hc((byte) 13, new C0405ha((byte) 11), new C0408hd((byte) 12, C0266bx.class))));
        enumMap.put((EnumMap) EnumC0280ck.JOURNALS, (EnumC0280ck) new C0403gz("journals", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0259bq.class))));
        enumMap.put((EnumMap) EnumC0280ck.CHECKSUM, (EnumC0280ck) new C0403gz("checksum", (byte) 2, new C0405ha((byte) 11)));
        f1124d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0274ce.class, f1124d);
    }

    /* renamed from: a */
    public C0274ce m866a(List list) {
        this.f1131b = list;
        return this;
    }

    /* renamed from: a */
    public C0274ce m867a(Map map) {
        this.f1130a = map;
        return this;
    }

    /* renamed from: a */
    public Map m868a() {
        return this.f1130a;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1129i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m869a(boolean z) {
        if (z) {
            return;
        }
        this.f1130a = null;
    }

    /* renamed from: b */
    public List m870b() {
        return this.f1131b;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1129i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m871b(boolean z) {
        if (z) {
            return;
        }
        this.f1131b = null;
    }

    /* renamed from: c */
    public void m872c(boolean z) {
        if (z) {
            return;
        }
        this.f1132c = null;
    }

    /* renamed from: c */
    public boolean m873c() {
        return this.f1131b != null;
    }

    /* renamed from: d */
    public boolean m874d() {
        return this.f1132c != null;
    }

    /* renamed from: e */
    public void m875e() {
        if (this.f1130a == null) {
            throw new C0419ho("Required field 'snapshots' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdTracking(");
        sb.append("snapshots:");
        if (this.f1130a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1130a);
        }
        if (m873c()) {
            sb.append(", ");
            sb.append("journals:");
            if (this.f1131b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1131b);
            }
        }
        if (m874d()) {
            sb.append(", ");
            sb.append("checksum:");
            if (this.f1132c == null) {
                sb.append("null");
            } else {
                sb.append(this.f1132c);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
