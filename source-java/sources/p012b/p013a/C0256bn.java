package p012b.p013a;

import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.bn */
/* loaded from: classes.dex */
class C0256bn extends AbstractC0428hx {
    private C0256bn() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0252bj c0252bj) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1348a(c0252bj.f1068a);
        c0424ht.mo1342a(c0252bj.f1069b.size());
        for (Map.Entry entry : c0252bj.f1069b.entrySet()) {
            c0424ht.mo1348a((String) entry.getKey());
            ((C0333ej) entry.getValue()).mo650b(c0424ht);
        }
        c0424ht.mo1343a(c0252bj.f1072e);
        BitSet bitSet = new BitSet();
        if (c0252bj.m800a()) {
            bitSet.set(0);
        }
        if (c0252bj.m803b()) {
            bitSet.set(1);
        }
        c0424ht.m1419a(bitSet, 2);
        if (c0252bj.m800a()) {
            c0424ht.mo1343a(c0252bj.f1070c);
        }
        if (c0252bj.m803b()) {
            c0424ht.mo1342a(c0252bj.f1071d);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0252bj c0252bj) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0252bj.f1068a = c0424ht.mo1375v();
        c0252bj.m799a(true);
        C0417hm c0417hm = new C0417hm((byte) 11, (byte) 12, c0424ht.mo1372s());
        c0252bj.f1069b = new HashMap(c0417hm.f1544c * 2);
        for (int i = 0; i < c0417hm.f1544c; i++) {
            String v = c0424ht.mo1375v();
            C0333ej c0333ej = new C0333ej();
            c0333ej.mo646a(c0424ht);
            c0252bj.f1069b.put(v, c0333ej);
        }
        c0252bj.m802b(true);
        c0252bj.f1072e = c0424ht.mo1373t();
        c0252bj.m808e(true);
        BitSet m1420b = c0424ht.m1420b(2);
        if (m1420b.get(0)) {
            c0252bj.f1070c = c0424ht.mo1373t();
            c0252bj.m804c(true);
        }
        if (m1420b.get(1)) {
            c0252bj.f1071d = c0424ht.mo1372s();
            c0252bj.m807d(true);
        }
    }
}
