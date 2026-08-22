package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;

/* renamed from: b.a.bx */
/* loaded from: classes.dex */
public class C0266bx implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1105d;

    /* renamed from: e */
    private static final C0423hs f1106e = new C0423hs("IdSnapshot");

    /* renamed from: f */
    private static final C0415hk f1107f = new C0415hk(HTTP.IDENTITY_CODING, (byte) 11, 1);

    /* renamed from: g */
    private static final C0415hk f1108g = new C0415hk("ts", (byte) 10, 2);

    /* renamed from: h */
    private static final C0415hk f1109h = new C0415hk(ClientCookie.VERSION_ATTR, (byte) 8, 3);

    /* renamed from: i */
    private static final Map f1110i = new HashMap();

    /* renamed from: a */
    public String f1111a;

    /* renamed from: b */
    public long f1112b;

    /* renamed from: c */
    public int f1113c;

    /* renamed from: j */
    private byte f1114j = 0;

    static {
        C0267by c0267by = null;
        f1110i.put(AbstractC0427hw.class, new C0270ca());
        f1110i.put(AbstractC0428hx.class, new C0272cc());
        EnumMap enumMap = new EnumMap(EnumC0273cd.class);
        enumMap.put((EnumMap) EnumC0273cd.IDENTITY, (EnumC0273cd) new C0403gz(HTTP.IDENTITY_CODING, (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0273cd.TS, (EnumC0273cd) new C0403gz("ts", (byte) 1, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0273cd.VERSION, (EnumC0273cd) new C0403gz(ClientCookie.VERSION_ATTR, (byte) 1, new C0405ha((byte) 8)));
        f1105d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0266bx.class, f1105d);
    }

    /* renamed from: a */
    public C0266bx m843a(int i) {
        this.f1113c = i;
        m850c(true);
        return this;
    }

    /* renamed from: a */
    public C0266bx m844a(long j) {
        this.f1112b = j;
        m849b(true);
        return this;
    }

    /* renamed from: a */
    public C0266bx m845a(String str) {
        this.f1111a = str;
        return this;
    }

    /* renamed from: a */
    public String m846a() {
        return this.f1111a;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1110i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m847a(boolean z) {
        if (z) {
            return;
        }
        this.f1111a = null;
    }

    /* renamed from: b */
    public long m848b() {
        return this.f1112b;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1110i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m849b(boolean z) {
        this.f1114j = C0386gi.m1307a(this.f1114j, 0, z);
    }

    /* renamed from: c */
    public void m850c(boolean z) {
        this.f1114j = C0386gi.m1307a(this.f1114j, 1, z);
    }

    /* renamed from: c */
    public boolean m851c() {
        return C0386gi.m1309a(this.f1114j, 0);
    }

    /* renamed from: d */
    public int m852d() {
        return this.f1113c;
    }

    /* renamed from: e */
    public boolean m853e() {
        return C0386gi.m1309a(this.f1114j, 1);
    }

    /* renamed from: f */
    public void m854f() {
        if (this.f1111a == null) {
            throw new C0419ho("Required field 'identity' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("IdSnapshot(");
        sb.append("identity:");
        if (this.f1111a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1111a);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f1112b);
        sb.append(", ");
        sb.append("version:");
        sb.append(this.f1113c);
        sb.append(")");
        return sb.toString();
    }
}
