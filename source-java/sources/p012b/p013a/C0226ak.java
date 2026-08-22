package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.ak */
/* loaded from: classes.dex */
class C0226ak extends AbstractC0428hx {
    private C0226ak() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0222ag c0222ag) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1342a(c0222ag.f947a);
        c0424ht.mo1342a(c0222ag.f948b);
        BitSet bitSet = new BitSet();
        if (c0222ag.m655c()) {
            bitSet.set(0);
        }
        c0424ht.m1419a(bitSet, 1);
        if (c0222ag.m655c()) {
            c0424ht.mo1342a(c0222ag.f949c);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0222ag c0222ag) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0222ag.f947a = c0424ht.mo1372s();
        c0222ag.m647a(true);
        c0222ag.f948b = c0424ht.mo1372s();
        c0222ag.m651b(true);
        if (c0424ht.m1420b(1).get(0)) {
            c0222ag.f949c = c0424ht.mo1372s();
            c0222ag.m654c(true);
        }
    }
}
