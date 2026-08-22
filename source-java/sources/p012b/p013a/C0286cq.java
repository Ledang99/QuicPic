package p012b.p013a;

import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.cq */
/* loaded from: classes.dex */
class C0286cq extends AbstractC0428hx {
    private C0286cq() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0282cm c0282cm) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1342a(c0282cm.f1148a.size());
        for (Map.Entry entry : c0282cm.f1148a.entrySet()) {
            c0424ht.mo1348a((String) entry.getKey());
            ((C0289ct) entry.getValue()).mo650b(c0424ht);
        }
        c0424ht.mo1342a(c0282cm.f1149b);
        c0424ht.mo1348a(c0282cm.f1150c);
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0282cm c0282cm) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        C0417hm c0417hm = new C0417hm((byte) 11, (byte) 12, c0424ht.mo1372s());
        c0282cm.f1148a = new HashMap(c0417hm.f1544c * 2);
        for (int i = 0; i < c0417hm.f1544c; i++) {
            String v = c0424ht.mo1375v();
            C0289ct c0289ct = new C0289ct();
            c0289ct.mo646a(c0424ht);
            c0282cm.f1148a.put(v, c0289ct);
        }
        c0282cm.m890a(true);
        c0282cm.f1149b = c0424ht.mo1372s();
        c0282cm.m891b(true);
        c0282cm.f1150c = c0424ht.mo1375v();
        c0282cm.m894c(true);
    }
}
