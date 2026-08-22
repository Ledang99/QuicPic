package p012b.p013a;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;

/* renamed from: b.a.ft */
/* loaded from: classes.dex */
class C0370ft extends AbstractC0428hx {
    private C0370ft() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0366fp c0366fp) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0366fp.f1390a.mo650b(c0424ht);
        c0366fp.f1391b.mo650b(c0424ht);
        c0366fp.f1392c.mo650b(c0424ht);
        c0366fp.f1393d.mo650b(c0424ht);
        BitSet bitSet = new BitSet();
        if (c0366fp.m1184a()) {
            bitSet.set(0);
        }
        if (c0366fp.m1191d()) {
            bitSet.set(1);
        }
        if (c0366fp.m1195f()) {
            bitSet.set(2);
        }
        if (c0366fp.m1197g()) {
            bitSet.set(3);
        }
        if (c0366fp.m1199h()) {
            bitSet.set(4);
        }
        if (c0366fp.m1201i()) {
            bitSet.set(5);
        }
        if (c0366fp.m1203j()) {
            bitSet.set(6);
        }
        c0424ht.m1419a(bitSet, 7);
        if (c0366fp.m1184a()) {
            c0366fp.f1394e.mo650b(c0424ht);
        }
        if (c0366fp.m1191d()) {
            c0424ht.mo1342a(c0366fp.f1395f.size());
            Iterator it = c0366fp.f1395f.iterator();
            while (it.hasNext()) {
                ((C0297da) it.next()).mo650b(c0424ht);
            }
        }
        if (c0366fp.m1195f()) {
            c0424ht.mo1342a(c0366fp.f1396g.size());
            Iterator it2 = c0366fp.f1396g.iterator();
            while (it2.hasNext()) {
                ((C0352fb) it2.next()).mo650b(c0424ht);
            }
        }
        if (c0366fp.m1197g()) {
            c0366fp.f1397h.mo650b(c0424ht);
        }
        if (c0366fp.m1199h()) {
            c0366fp.f1398i.mo650b(c0424ht);
        }
        if (c0366fp.m1201i()) {
            c0366fp.f1399j.mo650b(c0424ht);
        }
        if (c0366fp.m1203j()) {
            c0366fp.f1400k.mo650b(c0424ht);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0366fp c0366fp) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0366fp.f1390a = new C0222ag();
        c0366fp.f1390a.mo646a(c0424ht);
        c0366fp.m1183a(true);
        c0366fp.f1391b = new C0476z();
        c0366fp.f1391b.mo646a(c0424ht);
        c0366fp.m1187b(true);
        c0366fp.f1392c = new C0236au();
        c0366fp.f1392c.mo646a(c0424ht);
        c0366fp.m1189c(true);
        c0366fp.f1393d = new C0318dv();
        c0366fp.f1393d.mo646a(c0424ht);
        c0366fp.m1190d(true);
        BitSet m1420b = c0424ht.m1420b(7);
        if (m1420b.get(0)) {
            c0366fp.f1394e = new C0462l();
            c0366fp.f1394e.mo646a(c0424ht);
            c0366fp.m1193e(true);
        }
        if (m1420b.get(1)) {
            C0416hl c0416hl = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0366fp.f1395f = new ArrayList(c0416hl.f1541b);
            for (int i = 0; i < c0416hl.f1541b; i++) {
                C0297da c0297da = new C0297da();
                c0297da.mo646a(c0424ht);
                c0366fp.f1395f.add(c0297da);
            }
            c0366fp.m1194f(true);
        }
        if (m1420b.get(2)) {
            C0416hl c0416hl2 = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0366fp.f1396g = new ArrayList(c0416hl2.f1541b);
            for (int i2 = 0; i2 < c0416hl2.f1541b; i2++) {
                C0352fb c0352fb = new C0352fb();
                c0352fb.mo646a(c0424ht);
                c0366fp.f1396g.add(c0352fb);
            }
            c0366fp.m1196g(true);
        }
        if (m1420b.get(3)) {
            c0366fp.f1397h = new C0282cm();
            c0366fp.f1397h.mo646a(c0424ht);
            c0366fp.m1198h(true);
        }
        if (m1420b.get(4)) {
            c0366fp.f1398i = new C0274ce();
            c0366fp.f1398i.mo646a(c0424ht);
            c0366fp.m1200i(true);
        }
        if (m1420b.get(5)) {
            c0366fp.f1399j = new C0469s();
            c0366fp.f1399j.mo646a(c0424ht);
            c0366fp.m1202j(true);
        }
        if (m1420b.get(6)) {
            c0366fp.f1400k = new C0229an();
            c0366fp.f1400k.mo646a(c0424ht);
            c0366fp.m1205k(true);
        }
    }
}
