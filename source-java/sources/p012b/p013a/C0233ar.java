package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.ar */
/* loaded from: classes.dex */
class C0233ar extends AbstractC0428hx {
    private C0233ar() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0229an c0229an) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        BitSet bitSet = new BitSet();
        if (c0229an.m668a()) {
            bitSet.set(0);
        }
        c0424ht.m1419a(bitSet, 1);
        if (c0229an.m668a()) {
            c0229an.f963a.mo650b(c0424ht);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0229an c0229an) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        if (c0424ht.m1420b(1).get(0)) {
            c0229an.f963a = new C0304dh();
            c0229an.f963a.mo646a(c0424ht);
            c0229an.m667a(true);
        }
    }
}
