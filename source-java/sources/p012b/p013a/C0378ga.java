package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.ga */
/* loaded from: classes.dex */
class C0378ga extends AbstractC0428hx {
    private C0378ga() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0373fw c0373fw) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1348a(c0373fw.f1430a);
        c0424ht.mo1348a(c0373fw.f1431b);
        c0424ht.mo1348a(c0373fw.f1432c);
        c0424ht.mo1342a(c0373fw.f1433d);
        c0424ht.mo1342a(c0373fw.f1434e);
        c0424ht.mo1342a(c0373fw.f1435f);
        c0424ht.mo1349a(c0373fw.f1436g);
        c0424ht.mo1348a(c0373fw.f1437h);
        c0424ht.mo1348a(c0373fw.f1438i);
        BitSet bitSet = new BitSet();
        if (c0373fw.m1241d()) {
            bitSet.set(0);
        }
        c0424ht.m1419a(bitSet, 1);
        if (c0373fw.m1241d()) {
            c0424ht.mo1342a(c0373fw.f1439j);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0373fw c0373fw) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0373fw.f1430a = c0424ht.mo1375v();
        c0373fw.m1228a(true);
        c0373fw.f1431b = c0424ht.mo1375v();
        c0373fw.m1232b(true);
        c0373fw.f1432c = c0424ht.mo1375v();
        c0373fw.m1236c(true);
        c0373fw.f1433d = c0424ht.mo1372s();
        c0373fw.m1240d(true);
        c0373fw.f1434e = c0424ht.mo1372s();
        c0373fw.m1244e(true);
        c0373fw.f1435f = c0424ht.mo1372s();
        c0373fw.m1245f(true);
        c0373fw.f1436g = c0424ht.mo1376w();
        c0373fw.m1246g(true);
        c0373fw.f1437h = c0424ht.mo1375v();
        c0373fw.m1247h(true);
        c0373fw.f1438i = c0424ht.mo1375v();
        c0373fw.m1248i(true);
        if (c0424ht.m1420b(1).get(0)) {
            c0373fw.f1439j = c0424ht.mo1372s();
            c0373fw.m1249j(true);
        }
    }
}
