package p012b.p013a;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.gs */
/* loaded from: classes.dex */
public abstract class AbstractC0396gs implements InterfaceC0388gk {

    /* renamed from: a */
    private static final Map f1482a = new HashMap();

    /* renamed from: c */
    protected InterfaceC0394gq f1484c = null;

    /* renamed from: b */
    protected Object f1483b = null;

    static {
        C0397gt c0397gt = null;
        f1482a.put(AbstractC0427hw.class, new C0399gv());
        f1482a.put(AbstractC0428hx.class, new C0401gx());
    }

    protected AbstractC0396gs() {
    }

    /* renamed from: a */
    protected abstract C0415hk mo1052a(InterfaceC0394gq interfaceC0394gq);

    /* renamed from: a */
    protected abstract C0423hs mo1053a();

    /* renamed from: a */
    protected abstract Object mo1054a(AbstractC0418hn abstractC0418hn, C0415hk c0415hk);

    /* renamed from: a */
    protected abstract Object mo1055a(AbstractC0418hn abstractC0418hn, short s);

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: a */
    public void mo646a(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1482a.get(abstractC0418hn.mo1414y())).mo635b().mo632b(abstractC0418hn, this);
    }

    /* renamed from: b */
    public InterfaceC0394gq m1327b() {
        return this.f1484c;
    }

    /* renamed from: b */
    protected abstract InterfaceC0394gq mo1059b(short s);

    @Override // p012b.p013a.InterfaceC0388gk
    /* renamed from: b */
    public void mo650b(AbstractC0418hn abstractC0418hn) {
        ((InterfaceC0426hv) f1482a.get(abstractC0418hn.mo1414y())).mo635b().mo630a(abstractC0418hn, this);
    }

    /* renamed from: c */
    public Object m1328c() {
        return this.f1483b;
    }

    /* renamed from: c */
    protected abstract void mo1060c(AbstractC0418hn abstractC0418hn);

    /* renamed from: d */
    protected abstract void mo1061d(AbstractC0418hn abstractC0418hn);

    /* renamed from: d */
    public boolean m1329d() {
        return this.f1484c != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<");
        sb.append(getClass().getSimpleName());
        sb.append(" ");
        if (m1327b() != null) {
            Object m1328c = m1328c();
            sb.append(mo1052a(m1327b()).f1537a);
            sb.append(":");
            if (m1328c instanceof ByteBuffer) {
                C0389gl.m1324a((ByteBuffer) m1328c, sb);
            } else {
                sb.append(m1328c.toString());
            }
        }
        sb.append(">");
        return sb.toString();
    }
}
