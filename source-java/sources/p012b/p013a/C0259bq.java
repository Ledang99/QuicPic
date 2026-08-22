package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.bq */
/* loaded from: classes.dex */
public class C0259bq implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: e */
    public static final Map f1084e;

    /* renamed from: f */
    private static final C0423hs f1085f = new C0423hs("IdJournal");

    /* renamed from: g */
    private static final C0415hk f1086g = new C0415hk(ClientCookie.DOMAIN_ATTR, (byte) 11, 1);

    /* renamed from: h */
    private static final C0415hk f1087h = new C0415hk("old_id", (byte) 11, 2);

    /* renamed from: i */
    private static final C0415hk f1088i = new C0415hk("new_id", (byte) 11, 3);

    /* renamed from: j */
    private static final C0415hk f1089j = new C0415hk("ts", (byte) 10, 4);

    /* renamed from: k */
    private static final Map f1090k = new HashMap();

    /* renamed from: a */
    public String f1091a;

    /* renamed from: b */
    public String f1092b;

    /* renamed from: c */
    public String f1093c;

    /* renamed from: d */
    public long f1094d;

    /* renamed from: l */
    private byte f1095l = 0;

    /* renamed from: m */
    private EnumC0265bw[] f1096m = {EnumC0265bw.OLD_ID};

    static {
        C0260br c0260br = null;
        f1090k.put(AbstractC0427hw.class, new C0262bt());
        f1090k.put(AbstractC0428hx.class, new C0264bv());
        EnumMap enumMap = new EnumMap(EnumC0265bw.class);
        enumMap.put((EnumMap) EnumC0265bw.DOMAIN, (EnumC0265bw) new C0403gz(ClientCookie.DOMAIN_ATTR, (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0265bw.OLD_ID, (EnumC0265bw) new C0403gz("old_id", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0265bw.NEW_ID, (EnumC0265bw) new C0403gz("new_id", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0265bw.TS, (EnumC0265bw) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        f1084e = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0259bq.class, f1084e);
    }

    /* renamed from: a */
    public C0259bq m821a(long j) {
        this.f1094d = j;
        m831d(true);
        return this;
    }

    /* renamed from: a */
    public C0259bq m822a(String str) {
        this.f1091a = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1090k.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m823a(boolean z) {
        if (z) {
            return;
        }
        this.f1091a = null;
    }

    /* renamed from: a */
    public boolean m824a() {
        return this.f1092b != null;
    }

    /* renamed from: b */
    public C0259bq m825b(String str) {
        this.f1092b = str;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1090k.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m826b(boolean z) {
        if (z) {
            return;
        }
        this.f1092b = null;
    }

    /* renamed from: b */
    public boolean m827b() {
        return C0386gi.m1309a(this.f1095l, 0);
    }

    /* renamed from: c */
    public C0259bq m828c(String str) {
        this.f1093c = str;
        return this;
    }

    /* renamed from: c */
    public void m829c() {
        if (this.f1091a == null) {
            throw new C0419ho("Required field 'domain' was not present! Struct: " + toString());
        }
        if (this.f1093c == null) {
            throw new C0419ho("Required field 'new_id' was not present! Struct: " + toString());
        }
    }

    /* renamed from: c */
    public void m830c(boolean z) {
        if (z) {
            return;
        }
        this.f1093c = null;
    }

    /* renamed from: d */
    public void m831d(boolean z) {
        this.f1095l = C0386gi.m1307a(this.f1095l, 0, z);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdJournal(");
        sb.append("domain:");
        if (this.f1091a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1091a);
        }
        if (m824a()) {
            sb.append(", ");
            sb.append("old_id:");
            if (this.f1092b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1092b);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        if (this.f1093c == null) {
            sb.append("null");
        } else {
            sb.append(this.f1093c);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f1094d);
        sb.append(")");
        return sb.toString();
    }
}
