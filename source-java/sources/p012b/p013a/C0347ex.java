package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.ex */
/* loaded from: classes.dex */
class C0347ex extends AbstractC0428hx {
    private C0347ex() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0343et c0343et) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1342a(c0343et.f1314a);
        BitSet bitSet = new BitSet();
        if (c0343et.m1089c()) {
            bitSet.set(0);
        }
        if (c0343et.m1091e()) {
            bitSet.set(1);
        }
        c0424ht.m1419a(bitSet, 2);
        if (c0343et.m1089c()) {
            c0424ht.mo1348a(c0343et.f1315b);
        }
        if (c0343et.m1091e()) {
            c0343et.f1316c.mo650b(c0424ht);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0343et c0343et) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0343et.f1314a = c0424ht.mo1372s();
        c0343et.m1084a(true);
        BitSet m1420b = c0424ht.m1420b(2);
        if (m1420b.get(0)) {
            c0343et.f1315b = c0424ht.mo1375v();
            c0343et.m1087b(true);
        }
        if (m1420b.get(1)) {
            c0343et.f1316c = new C0282cm();
            c0343et.f1316c.mo646a(c0424ht);
            c0343et.m1088c(true);
        }
    }
}
