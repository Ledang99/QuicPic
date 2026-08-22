package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.cx */
/* loaded from: classes.dex */
class C0293cx extends AbstractC0428hx {
    private C0293cx() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0289ct c0289ct) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1343a(c0289ct.f1166b);
        c0424ht.mo1348a(c0289ct.f1167c);
        BitSet bitSet = new BitSet();
        if (c0289ct.m912b()) {
            bitSet.set(0);
        }
        c0424ht.m1419a(bitSet, 1);
        if (c0289ct.m912b()) {
            c0424ht.mo1348a(c0289ct.f1165a);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0289ct c0289ct) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0289ct.f1166b = c0424ht.mo1373t();
        c0289ct.m911b(true);
        c0289ct.f1167c = c0424ht.mo1375v();
        c0289ct.m914c(true);
        if (c0424ht.m1420b(1).get(0)) {
            c0289ct.f1165a = c0424ht.mo1375v();
            c0289ct.m910a(true);
        }
    }
}
