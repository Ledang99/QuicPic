package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.bf */
/* loaded from: classes.dex */
class C0248bf extends AbstractC0428hx {
    private C0248bf() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0244bb c0244bb) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1343a(c0244bb.f1044a);
        c0424ht.mo1348a(c0244bb.f1045b);
        BitSet bitSet = new BitSet();
        if (c0244bb.m777b()) {
            bitSet.set(0);
        }
        c0424ht.m1419a(bitSet, 1);
        if (c0244bb.m777b()) {
            c0424ht.mo1342a(c0244bb.f1046c.m788a());
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0244bb c0244bb) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0244bb.f1044a = c0424ht.mo1373t();
        c0244bb.m774a(true);
        c0244bb.f1045b = c0424ht.mo1375v();
        c0244bb.m776b(true);
        if (c0424ht.m1420b(1).get(0)) {
            c0244bb.f1046c = EnumC0251bi.m787a(c0424ht.mo1372s());
            c0244bb.m779c(true);
        }
    }
}
