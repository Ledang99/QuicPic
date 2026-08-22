package p012b.p013a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: b.a.fb */
/* loaded from: classes.dex */
public class C0352fb implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: h */
    public static final Map f1332h;

    /* renamed from: i */
    private static final C0423hs f1333i = new C0423hs("Session");

    /* renamed from: j */
    private static final C0415hk f1334j = new C0415hk("id", (byte) 11, 1);

    /* renamed from: k */
    private static final C0415hk f1335k = new C0415hk("start_time", (byte) 10, 2);

    /* renamed from: l */
    private static final C0415hk f1336l = new C0415hk("end_time", (byte) 10, 3);

    /* renamed from: m */
    private static final C0415hk f1337m = new C0415hk("duration", (byte) 10, 4);

    /* renamed from: n */
    private static final C0415hk f1338n = new C0415hk("pages", (byte) 15, 5);

    /* renamed from: o */
    private static final C0415hk f1339o = new C0415hk("locations", (byte) 15, 6);

    /* renamed from: p */
    private static final C0415hk f1340p = new C0415hk("traffic", (byte) 12, 7);

    /* renamed from: q */
    private static final Map f1341q = new HashMap();

    /* renamed from: a */
    public String f1342a;

    /* renamed from: b */
    public long f1343b;

    /* renamed from: c */
    public long f1344c;

    /* renamed from: d */
    public long f1345d;

    /* renamed from: e */
    public List f1346e;

    /* renamed from: f */
    public List f1347f;

    /* renamed from: g */
    public C0359fi f1348g;

    /* renamed from: r */
    private byte f1349r = 0;

    /* renamed from: s */
    private EnumC0358fh[] f1350s = {EnumC0358fh.PAGES, EnumC0358fh.LOCATIONS, EnumC0358fh.TRAFFIC};

    static {
        f1341q.put(AbstractC0427hw.class, new C0355fe());
        f1341q.put(AbstractC0428hx.class, new C0357fg());
        EnumMap enumMap = new EnumMap(EnumC0358fh.class);
        enumMap.put((EnumMap) EnumC0358fh.ID, (EnumC0358fh) new C0403gz("id", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0358fh.START_TIME, (EnumC0358fh) new C0403gz("start_time", (byte) 1, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0358fh.END_TIME, (EnumC0358fh) new C0403gz("end_time", (byte) 1, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0358fh.DURATION, (EnumC0358fh) new C0403gz("duration", (byte) 1, new C0405ha((byte) 10)));
        enumMap.put((EnumMap) EnumC0358fh.PAGES, (EnumC0358fh) new C0403gz("pages", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0326ec.class))));
        enumMap.put((EnumMap) EnumC0358fh.LOCATIONS, (EnumC0358fh) new C0403gz("locations", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0311do.class))));
        enumMap.put((EnumMap) EnumC0358fh.TRAFFIC, (EnumC0358fh) new C0403gz("traffic", (byte) 2, new C0408hd((byte) 12, C0359fi.class)));
        f1332h = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0352fb.class, f1332h);
    }

    /* renamed from: a */
    public C0352fb m1112a(long j) {
        this.f1343b = j;
        m1121b(true);
        return this;
    }

    /* renamed from: a */
    public C0352fb m1113a(C0359fi c0359fi) {
        this.f1348g = c0359fi;
        return this;
    }

    /* renamed from: a */
    public C0352fb m1114a(String str) {
        this.f1342a = str;
        return this;
    }

    /* renamed from: a */
    public C0352fb m1115a(List list) {
        this.f1346e = list;
        return this;
    }

    /* renamed from: a */
    public void m1116a(C0311do c0311do) {
        if (this.f1347f == null) {
            this.f1347f = new ArrayList();
        }
        this.f1347f.add(c0311do);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1341q.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m1117a(boolean z) {
        if (z) {
            return;
        }
        this.f1342a = null;
    }

    /* renamed from: a */
    public boolean m1118a() {
        return C0386gi.m1309a(this.f1349r, 0);
    }

    /* renamed from: b */
    public C0352fb m1119b(long j) {
        this.f1344c = j;
        m1124c(true);
        return this;
    }

    /* renamed from: b */
    public C0352fb m1120b(List list) {
        this.f1347f = list;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1341q.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m1121b(boolean z) {
        this.f1349r = C0386gi.m1307a(this.f1349r, 0, z);
    }

    /* renamed from: b */
    public boolean m1122b() {
        return C0386gi.m1309a(this.f1349r, 1);
    }

    /* renamed from: c */
    public C0352fb m1123c(long j) {
        this.f1345d = j;
        m1127d(true);
        return this;
    }

    /* renamed from: c */
    public void m1124c(boolean z) {
        this.f1349r = C0386gi.m1307a(this.f1349r, 1, z);
    }

    /* renamed from: c */
    public boolean m1125c() {
        return C0386gi.m1309a(this.f1349r, 2);
    }

    /* renamed from: d */
    public int m1126d() {
        if (this.f1346e == null) {
            return 0;
        }
        return this.f1346e.size();
    }

    /* renamed from: d */
    public void m1127d(boolean z) {
        this.f1349r = C0386gi.m1307a(this.f1349r, 2, z);
    }

    /* renamed from: e */
    public void m1128e(boolean z) {
        if (z) {
            return;
        }
        this.f1346e = null;
    }

    /* renamed from: e */
    public boolean m1129e() {
        return this.f1346e != null;
    }

    /* renamed from: f */
    public void m1130f(boolean z) {
        if (z) {
            return;
        }
        this.f1347f = null;
    }

    /* renamed from: f */
    public boolean m1131f() {
        return this.f1347f != null;
    }

    /* renamed from: g */
    public void m1132g(boolean z) {
        if (z) {
            return;
        }
        this.f1348g = null;
    }

    /* renamed from: g */
    public boolean m1133g() {
        return this.f1348g != null;
    }

    /* renamed from: h */
    public void m1134h() {
        if (this.f1342a == null) {
            throw new C0419ho("Required field 'id' was not present! Struct: " + toString());
        }
        if (this.f1348g != null) {
            this.f1348g.m1151c();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Session(");
        sb.append("id:");
        if (this.f1342a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1342a);
        }
        sb.append(", ");
        sb.append("start_time:");
        sb.append(this.f1343b);
        sb.append(", ");
        sb.append("end_time:");
        sb.append(this.f1344c);
        sb.append(", ");
        sb.append("duration:");
        sb.append(this.f1345d);
        if (m1129e()) {
            sb.append(", ");
            sb.append("pages:");
            if (this.f1346e == null) {
                sb.append("null");
            } else {
                sb.append(this.f1346e);
            }
        }
        if (m1131f()) {
            sb.append(", ");
            sb.append("locations:");
            if (this.f1347f == null) {
                sb.append("null");
            } else {
                sb.append(this.f1347f);
            }
        }
        if (m1133g()) {
            sb.append(", ");
            sb.append("traffic:");
            if (this.f1348g == null) {
                sb.append("null");
            } else {
                sb.append(this.f1348g);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
