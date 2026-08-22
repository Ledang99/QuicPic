package p012b.p013a;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: b.a.da */
/* loaded from: classes.dex */
public class C0297da implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: e */
    public static final Map f1177e;

    /* renamed from: f */
    private static final C0423hs f1178f = new C0423hs("InstantMsg");

    /* renamed from: g */
    private static final C0415hk f1179g = new C0415hk("id", (byte) 11, 1);

    /* renamed from: h */
    private static final C0415hk f1180h = new C0415hk("errors", (byte) 15, 2);

    /* renamed from: i */
    private static final C0415hk f1181i = new C0415hk("events", (byte) 15, 3);

    /* renamed from: j */
    private static final C0415hk f1182j = new C0415hk("game_events", (byte) 15, 4);

    /* renamed from: k */
    private static final Map f1183k = new HashMap();

    /* renamed from: a */
    public String f1184a;

    /* renamed from: b */
    public List f1185b;

    /* renamed from: c */
    public List f1186c;

    /* renamed from: d */
    public List f1187d;

    /* renamed from: l */
    private EnumC0303dg[] f1188l = {EnumC0303dg.ERRORS, EnumC0303dg.EVENTS, EnumC0303dg.GAME_EVENTS};

    static {
        f1183k.put(AbstractC0427hw.class, new C0300dd());
        f1183k.put(AbstractC0428hx.class, new C0302df());
        EnumMap enumMap = new EnumMap(EnumC0303dg.class);
        enumMap.put((EnumMap) EnumC0303dg.ID, (EnumC0303dg) new C0403gz("id", (byte) 1, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0303dg.ERRORS, (EnumC0303dg) new C0403gz("errors", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0244bb.class))));
        enumMap.put((EnumMap) EnumC0303dg.EVENTS, (EnumC0303dg) new C0403gz("events", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0252bj.class))));
        enumMap.put((EnumMap) EnumC0303dg.GAME_EVENTS, (EnumC0303dg) new C0403gz("game_events", (byte) 2, new C0406hb((byte) 15, new C0408hd((byte) 12, C0252bj.class))));
        f1177e = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0297da.class, f1177e);
    }

    /* renamed from: a */
    public C0297da m932a(String str) {
        this.f1184a = str;
        return this;
    }

    /* renamed from: a */
    public String m933a() {
        return this.f1184a;
    }

    /* renamed from: a */
    public void m934a(C0244bb c0244bb) {
        if (this.f1185b == null) {
            this.f1185b = new ArrayList();
        }
        this.f1185b.add(c0244bb);
    }

    /* renamed from: a */
    public void m935a(C0252bj c0252bj) {
        if (this.f1186c == null) {
            this.f1186c = new ArrayList();
        }
        this.f1186c.add(c0252bj);
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1183k.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m936a(boolean z) {
        if (z) {
            return;
        }
        this.f1184a = null;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1183k.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: b */
    public void m937b(boolean z) {
        if (z) {
            return;
        }
        this.f1185b = null;
    }

    /* renamed from: b */
    public boolean m938b() {
        return this.f1185b != null;
    }

    /* renamed from: c */
    public void m939c(boolean z) {
        if (z) {
            return;
        }
        this.f1186c = null;
    }

    /* renamed from: c */
    public boolean m940c() {
        return this.f1186c != null;
    }

    /* renamed from: d */
    public void m941d(boolean z) {
        if (z) {
            return;
        }
        this.f1187d = null;
    }

    /* renamed from: d */
    public boolean m942d() {
        return this.f1187d != null;
    }

    /* renamed from: e */
    public void m943e() {
        if (this.f1184a == null) {
            throw new C0419ho("Required field 'id' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("InstantMsg(");
        sb.append("id:");
        if (this.f1184a == null) {
            sb.append("null");
        } else {
            sb.append(this.f1184a);
        }
        if (m938b()) {
            sb.append(", ");
            sb.append("errors:");
            if (this.f1185b == null) {
                sb.append("null");
            } else {
                sb.append(this.f1185b);
            }
        }
        if (m940c()) {
            sb.append(", ");
            sb.append("events:");
            if (this.f1186c == null) {
                sb.append("null");
            } else {
                sb.append(this.f1186c);
            }
        }
        if (m942d()) {
            sb.append(", ");
            sb.append("game_events:");
            if (this.f1187d == null) {
                sb.append("null");
            } else {
                sb.append(this.f1187d);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
