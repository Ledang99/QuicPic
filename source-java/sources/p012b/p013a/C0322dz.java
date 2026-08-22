package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.dz */
/* loaded from: classes.dex */
class C0322dz extends AbstractC0428hx {
    private C0322dz() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0318dv c0318dv) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        BitSet bitSet = new BitSet();
        if (c0318dv.m999a()) {
            bitSet.set(0);
        }
        if (c0318dv.m1002b()) {
            bitSet.set(1);
        }
        if (c0318dv.m1005c()) {
            bitSet.set(2);
        }
        if (c0318dv.m1008d()) {
            bitSet.set(3);
        }
        if (c0318dv.m1010e()) {
            bitSet.set(4);
        }
        if (c0318dv.m1012f()) {
            bitSet.set(5);
        }
        if (c0318dv.m1014g()) {
            bitSet.set(6);
        }
        if (c0318dv.m1016h()) {
            bitSet.set(7);
        }
        if (c0318dv.m1018i()) {
            bitSet.set(8);
        }
        if (c0318dv.m1020j()) {
            bitSet.set(9);
        }
        c0424ht.m1419a(bitSet, 10);
        if (c0318dv.m999a()) {
            c0424ht.mo1342a(c0318dv.f1241a);
        }
        if (c0318dv.m1002b()) {
            c0424ht.mo1348a(c0318dv.f1242b);
        }
        if (c0318dv.m1005c()) {
            c0424ht.mo1348a(c0318dv.f1243c);
        }
        if (c0318dv.m1008d()) {
            c0424ht.mo1341a(c0318dv.f1244d);
        }
        if (c0318dv.m1010e()) {
            c0424ht.mo1341a(c0318dv.f1245e);
        }
        if (c0318dv.m1012f()) {
            c0424ht.mo1348a(c0318dv.f1246f);
        }
        if (c0318dv.m1014g()) {
            c0424ht.mo1342a(c0318dv.f1247g);
        }
        if (c0318dv.m1016h()) {
            c0424ht.mo1348a(c0318dv.f1248h);
        }
        if (c0318dv.m1018i()) {
            c0424ht.mo1342a(c0318dv.f1249i.m1541a());
        }
        if (c0318dv.m1020j()) {
            c0424ht.mo1348a(c0318dv.f1250j);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0318dv c0318dv) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        BitSet m1420b = c0424ht.m1420b(10);
        if (m1420b.get(0)) {
            c0318dv.f1241a = c0424ht.mo1372s();
            c0318dv.m998a(true);
        }
        if (m1420b.get(1)) {
            c0318dv.f1242b = c0424ht.mo1375v();
            c0318dv.m1001b(true);
        }
        if (m1420b.get(2)) {
            c0318dv.f1243c = c0424ht.mo1375v();
            c0318dv.m1004c(true);
        }
        if (m1420b.get(3)) {
            c0318dv.f1244d = c0424ht.mo1374u();
            c0318dv.m1007d(true);
        }
        if (m1420b.get(4)) {
            c0318dv.f1245e = c0424ht.mo1374u();
            c0318dv.m1009e(true);
        }
        if (m1420b.get(5)) {
            c0318dv.f1246f = c0424ht.mo1375v();
            c0318dv.m1011f(true);
        }
        if (m1420b.get(6)) {
            c0318dv.f1247g = c0424ht.mo1372s();
            c0318dv.m1013g(true);
        }
        if (m1420b.get(7)) {
            c0318dv.f1248h = c0424ht.mo1375v();
            c0318dv.m1015h(true);
        }
        if (m1420b.get(8)) {
            c0318dv.f1249i = EnumC0461k.m1540a(c0424ht.mo1372s());
            c0318dv.m1017i(true);
        }
        if (m1420b.get(9)) {
            c0318dv.f1250j = c0424ht.mo1375v();
            c0318dv.m1019j(true);
        }
    }
}
