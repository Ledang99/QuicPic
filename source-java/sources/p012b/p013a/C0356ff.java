package p012b.p013a;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

/* renamed from: b.a.ff */
/* loaded from: classes.dex */
class C0356ff extends AbstractC0428hx {
    private C0356ff() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0352fb c0352fb) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1348a(c0352fb.f1342a);
        c0424ht.mo1343a(c0352fb.f1343b);
        c0424ht.mo1343a(c0352fb.f1344c);
        c0424ht.mo1343a(c0352fb.f1345d);
        BitSet bitSet = new BitSet();
        if (c0352fb.m1129e()) {
            bitSet.set(0);
        }
        if (c0352fb.m1131f()) {
            bitSet.set(1);
        }
        if (c0352fb.m1133g()) {
            bitSet.set(2);
        }
        c0424ht.m1419a(bitSet, 3);
        if (c0352fb.m1129e()) {
            c0424ht.mo1342a(c0352fb.f1346e.size());
            Iterator it = c0352fb.f1346e.iterator();
            while (it.hasNext()) {
                ((C0326ec) it.next()).mo650b(c0424ht);
            }
        }
        if (c0352fb.m1131f()) {
            c0424ht.mo1342a(c0352fb.f1347f.size());
            Iterator it2 = c0352fb.f1347f.iterator();
            while (it2.hasNext()) {
                ((C0311do) it2.next()).mo650b(c0424ht);
            }
        }
        if (c0352fb.m1133g()) {
            c0352fb.f1348g.mo650b(c0424ht);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0352fb c0352fb) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0352fb.f1342a = c0424ht.mo1375v();
        c0352fb.m1117a(true);
        c0352fb.f1343b = c0424ht.mo1373t();
        c0352fb.m1121b(true);
        c0352fb.f1344c = c0424ht.mo1373t();
        c0352fb.m1124c(true);
        c0352fb.f1345d = c0424ht.mo1373t();
        c0352fb.m1127d(true);
        BitSet m1420b = c0424ht.m1420b(3);
        if (m1420b.get(0)) {
            C0416hl c0416hl = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0352fb.f1346e = new ArrayList(c0416hl.f1541b);
            for (int i = 0; i < c0416hl.f1541b; i++) {
                C0326ec c0326ec = new C0326ec();
                c0326ec.mo646a(c0424ht);
                c0352fb.f1346e.add(c0326ec);
            }
            c0352fb.m1128e(true);
        }
        if (m1420b.get(1)) {
            C0416hl c0416hl2 = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0352fb.f1347f = new ArrayList(c0416hl2.f1541b);
            for (int i2 = 0; i2 < c0416hl2.f1541b; i2++) {
                C0311do c0311do = new C0311do();
                c0311do.mo646a(c0424ht);
                c0352fb.f1347f.add(c0311do);
            }
            c0352fb.m1130f(true);
        }
        if (m1420b.get(2)) {
            c0352fb.f1348g = new C0359fi();
            c0352fb.f1348g.mo646a(c0424ht);
            c0352fb.m1132g(true);
        }
    }
}
