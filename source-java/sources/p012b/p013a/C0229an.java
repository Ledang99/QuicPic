package p012b.p013a;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.an */
/* loaded from: classes.dex */
public class C0229an implements InterfaceC0388gk, Serializable, Cloneable {

    /* renamed from: b */
    public static final Map f959b;

    /* renamed from: c */
    private static final C0423hs f960c = new C0423hs("ControlPolicy");

    /* renamed from: d */
    private static final C0415hk f961d = new C0415hk("latent", (byte) 12, 1);

    /* renamed from: e */
    private static final Map f962e = new HashMap();

    /* renamed from: a */
    public C0304dh f963a;

    /* renamed from: f */
    private EnumC0235at[] f964f = {EnumC0235at.LATENT};

    static {
        C0230ao c0230ao = null;
        f962e.put(AbstractC0427hw.class, new C0232aq());
        f962e.put(AbstractC0428hx.class, new C0234as());
        EnumMap enumMap = new EnumMap(EnumC0235at.class);
        enumMap.put((EnumMap) EnumC0235at.LATENT, (EnumC0235at) new C0403gz("latent", (byte) 2, new C0408hd((byte) 12, C0304dh.class)));
        f959b = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0229an.class, f959b);
    }

    /* renamed from: a */
    public C0229an m666a(C0304dh c0304dh) {
        this.f963a = c0304dh;
        return this;
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f962e.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: a */
    public void m667a(boolean z) {
        if (z) {
            return;
        }
        this.f963a = null;
    }

    /* renamed from: a */
    public boolean m668a() {
        return this.f963a != null;
    }

    /* renamed from: b */
    public void m669b() {
        if (this.f963a != null) {
            this.f963a.m958c();
        }
    }

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f962e.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ControlPolicy(");
        if (m668a()) {
            sb.append("latent:");
            if (this.f963a == null) {
                sb.append("null");
            } else {
                sb.append(this.f963a);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
