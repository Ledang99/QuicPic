package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.ad */
/* loaded from: classes.dex */
class C0219ad extends AbstractC0428hx {
    private C0219ad() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0476z c0476z) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1348a(c0476z.f1672a);
        c0424ht.mo1342a(c0476z.f1676e.m1103a());
        c0424ht.mo1348a(c0476z.f1677f);
        c0424ht.mo1348a(c0476z.f1678g);
        BitSet bitSet = new BitSet();
        if (c0476z.m1582a()) {
            bitSet.set(0);
        }
        if (c0476z.m1586b()) {
            bitSet.set(1);
        }
        if (c0476z.m1589c()) {
            bitSet.set(2);
        }
        if (c0476z.m1592d()) {
            bitSet.set(3);
        }
        if (c0476z.m1595e()) {
            bitSet.set(4);
        }
        if (c0476z.m1598f()) {
            bitSet.set(5);
        }
        c0424ht.m1419a(bitSet, 6);
        if (c0476z.m1582a()) {
            c0424ht.mo1348a(c0476z.f1673b);
        }
        if (c0476z.m1586b()) {
            c0424ht.mo1342a(c0476z.f1674c);
        }
        if (c0476z.m1589c()) {
            c0424ht.mo1348a(c0476z.f1675d);
        }
        if (c0476z.m1592d()) {
            c0424ht.mo1348a(c0476z.f1679h);
        }
        if (c0476z.m1595e()) {
            c0424ht.mo1348a(c0476z.f1680i);
        }
        if (c0476z.m1598f()) {
            c0424ht.mo1342a(c0476z.f1681j);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0476z c0476z) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0476z.f1672a = c0424ht.mo1375v();
        c0476z.m1581a(true);
        c0476z.f1676e = EnumC0351fa.m1102a(c0424ht.mo1372s());
        c0476z.m1594e(true);
        c0476z.f1677f = c0424ht.mo1375v();
        c0476z.m1597f(true);
        c0476z.f1678g = c0424ht.mo1375v();
        c0476z.m1601g(true);
        BitSet m1420b = c0424ht.m1420b(6);
        if (m1420b.get(0)) {
            c0476z.f1673b = c0424ht.mo1375v();
            c0476z.m1585b(true);
        }
        if (m1420b.get(1)) {
            c0476z.f1674c = c0424ht.mo1372s();
            c0476z.m1588c(true);
        }
        if (m1420b.get(2)) {
            c0476z.f1675d = c0424ht.mo1375v();
            c0476z.m1591d(true);
        }
        if (m1420b.get(3)) {
            c0476z.f1679h = c0424ht.mo1375v();
            c0476z.m1602h(true);
        }
        if (m1420b.get(4)) {
            c0476z.f1680i = c0424ht.mo1375v();
            c0476z.m1603i(true);
        }
        if (m1420b.get(5)) {
            c0476z.f1681j = c0424ht.mo1372s();
            c0476z.m1604j(true);
        }
    }
}
