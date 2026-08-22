package p012b.p013a;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

/* renamed from: b.a.de */
/* loaded from: classes.dex */
class C0301de extends AbstractC0428hx {
    private C0301de() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0297da c0297da) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1348a(c0297da.f1184a);
        BitSet bitSet = new BitSet();
        if (c0297da.m938b()) {
            bitSet.set(0);
        }
        if (c0297da.m940c()) {
            bitSet.set(1);
        }
        if (c0297da.m942d()) {
            bitSet.set(2);
        }
        c0424ht.m1419a(bitSet, 3);
        if (c0297da.m938b()) {
            c0424ht.mo1342a(c0297da.f1185b.size());
            Iterator it = c0297da.f1185b.iterator();
            while (it.hasNext()) {
                ((C0244bb) it.next()).mo650b(c0424ht);
            }
        }
        if (c0297da.m940c()) {
            c0424ht.mo1342a(c0297da.f1186c.size());
            Iterator it2 = c0297da.f1186c.iterator();
            while (it2.hasNext()) {
                ((C0252bj) it2.next()).mo650b(c0424ht);
            }
        }
        if (c0297da.m942d()) {
            c0424ht.mo1342a(c0297da.f1187d.size());
            Iterator it3 = c0297da.f1187d.iterator();
            while (it3.hasNext()) {
                ((C0252bj) it3.next()).mo650b(c0424ht);
            }
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0297da c0297da) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0297da.f1184a = c0424ht.mo1375v();
        c0297da.m936a(true);
        BitSet m1420b = c0424ht.m1420b(3);
        if (m1420b.get(0)) {
            C0416hl c0416hl = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0297da.f1185b = new ArrayList(c0416hl.f1541b);
            for (int i = 0; i < c0416hl.f1541b; i++) {
                C0244bb c0244bb = new C0244bb();
                c0244bb.mo646a(c0424ht);
                c0297da.f1185b.add(c0244bb);
            }
            c0297da.m937b(true);
        }
        if (m1420b.get(1)) {
            C0416hl c0416hl2 = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0297da.f1186c = new ArrayList(c0416hl2.f1541b);
            for (int i2 = 0; i2 < c0416hl2.f1541b; i2++) {
                C0252bj c0252bj = new C0252bj();
                c0252bj.mo646a(c0424ht);
                c0297da.f1186c.add(c0252bj);
            }
            c0297da.m939c(true);
        }
        if (m1420b.get(2)) {
            C0416hl c0416hl3 = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0297da.f1187d = new ArrayList(c0416hl3.f1541b);
            for (int i3 = 0; i3 < c0416hl3.f1541b; i3++) {
                C0252bj c0252bj2 = new C0252bj();
                c0252bj2.mo646a(c0424ht);
                c0297da.f1187d.add(c0252bj2);
            }
            c0297da.m941d(true);
        }
    }
}
