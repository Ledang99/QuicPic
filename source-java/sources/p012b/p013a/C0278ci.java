package p012b.p013a;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.ci */
/* loaded from: classes.dex */
class C0278ci extends AbstractC0428hx {
    private C0278ci() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0274ce c0274ce) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1342a(c0274ce.f1130a.size());
        for (Map.Entry entry : c0274ce.f1130a.entrySet()) {
            c0424ht.mo1348a((String) entry.getKey());
            ((C0266bx) entry.getValue()).mo650b(c0424ht);
        }
        BitSet bitSet = new BitSet();
        if (c0274ce.m873c()) {
            bitSet.set(0);
        }
        if (c0274ce.m874d()) {
            bitSet.set(1);
        }
        c0424ht.m1419a(bitSet, 2);
        if (c0274ce.m873c()) {
            c0424ht.mo1342a(c0274ce.f1131b.size());
            Iterator it = c0274ce.f1131b.iterator();
            while (it.hasNext()) {
                ((C0259bq) it.next()).mo650b(c0424ht);
            }
        }
        if (c0274ce.m874d()) {
            c0424ht.mo1348a(c0274ce.f1132c);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0274ce c0274ce) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        C0417hm c0417hm = new C0417hm((byte) 11, (byte) 12, c0424ht.mo1372s());
        c0274ce.f1130a = new HashMap(c0417hm.f1544c * 2);
        for (int i = 0; i < c0417hm.f1544c; i++) {
            String v = c0424ht.mo1375v();
            C0266bx c0266bx = new C0266bx();
            c0266bx.mo646a(c0424ht);
            c0274ce.f1130a.put(v, c0266bx);
        }
        c0274ce.m869a(true);
        BitSet m1420b = c0424ht.m1420b(2);
        if (m1420b.get(0)) {
            C0416hl c0416hl = new C0416hl((byte) 12, c0424ht.mo1372s());
            c0274ce.f1131b = new ArrayList(c0416hl.f1541b);
            for (int i2 = 0; i2 < c0416hl.f1541b; i2++) {
                C0259bq c0259bq = new C0259bq();
                c0259bq.mo646a(c0424ht);
                c0274ce.f1131b.add(c0259bq);
            }
            c0274ce.m871b(true);
        }
        if (m1420b.get(1)) {
            c0274ce.f1132c = c0424ht.mo1375v();
            c0274ce.m872c(true);
        }
    }
}
