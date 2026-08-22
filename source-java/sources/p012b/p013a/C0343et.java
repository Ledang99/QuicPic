package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.et */
/* loaded from: classes.dex */
public class C0343et implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: d */
    public static final Map f1308d;

    /* renamed from: e */
    private static final C0423hs f1309e = new C0423hs("Response");

    /* renamed from: f */
    private static final C0415hk f1310f = new C0415hk("resp_code", (byte) 8, 1);

    /* renamed from: g */
    private static final C0415hk f1311g = new C0415hk("msg", (byte) 11, 2);

    /* renamed from: h */
    private static final C0415hk f1312h = new C0415hk("imprint", (byte) 12, 3);

    /* renamed from: i */
    private static final Map f1313i = new HashMap();

    /* renamed from: a */
    public int f1314a;

    /* renamed from: b */
    public String f1315b;

    /* renamed from: c */
    public C0282cm f1316c;

    /* renamed from: j */
    private byte f1317j = 0;

    /* renamed from: k */
    private EnumC0349ez[] f1318k = {EnumC0349ez.MSG, EnumC0349ez.IMPRINT};

    static {
        f1313i.put(AbstractC0427hw.class, new C0346ew());
        f1313i.put(AbstractC0428hx.class, new C0348ey());
        EnumMap enumMap = new EnumMap(EnumC0349ez.class);
        enumMap.put((EnumMap) EnumC0349ez.RESP_CODE, (EnumC0349ez) new C0403gz("resp_code", (byte) 1, new C0405ha((byte) 8)));
        enumMap.put((EnumMap) EnumC0349ez.MSG, (EnumC0349ez) new C0403gz("msg", (byte) 2, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0349ez.IMPRINT, (EnumC0349ez) new C0403gz("imprint", (byte) 2, new C0408hd((byte) 12, C0282cm.class)));
        f1308d = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0343et.class, f1308d);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1313i.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1084a(boolean z) {
        this.f1317j = C0386gi.m1307a(this.f1317j, 0, z);
    }

    /* renamed from: a */
    public boolean m1085a() {
        return C0386gi.m1309a(this.f1317j, 0);
    }

    /* renamed from: b */
    public String m1086b() {
        return this.f1315b;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1313i.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1087b(boolean z) {
        if (z) {
            return;
        }
        this.f1315b = null;
    }

    /* renamed from: c */
    public void m1088c(boolean z) {
        if (z) {
            return;
        }
        this.f1316c = null;
    }

    /* renamed from: c */
    public boolean m1089c() {
        return this.f1315b != null;
    }

    /* renamed from: d */
    public C0282cm m1090d() {
        return this.f1316c;
    }

    /* renamed from: e */
    public boolean m1091e() {
        return this.f1316c != null;
    }

    /* renamed from: f */
    public void m1092f() {
        if (this.f1316c != null) {
            this.f1316c.m897f();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.f1314a);
        if (m1089c()) {
            sb.append(", ");
            sb.append("msg:");
            if (this.f1315b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1315b);
            }
        }
        if (m1091e()) {
            sb.append(", ");
            sb.append("imprint:");
            if (this.f1316c == null) {
                sb.append("null");
            } else {
                sb.append(this.f1316c);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
