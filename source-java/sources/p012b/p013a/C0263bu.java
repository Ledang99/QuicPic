package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.bu */
/* loaded from: classes.dex */
class C0263bu extends AbstractC0428hx {
    private C0263bu() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0259bq c0259bq) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0424ht.mo1348a(c0259bq.f1091a);
        c0424ht.mo1348a(c0259bq.f1093c);
        c0424ht.mo1343a(c0259bq.f1094d);
        BitSet bitSet = new BitSet();
        if (c0259bq.m824a()) {
            bitSet.set(0);
        }
        c0424ht.m1419a(bitSet, 1);
        if (c0259bq.m824a()) {
            c0424ht.mo1348a(c0259bq.f1092b);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0259bq c0259bq) {
        C0424ht c0424ht = (C0424ht) abstractC0418hn;
        c0259bq.f1091a = c0424ht.mo1375v();
        c0259bq.m823a(true);
        c0259bq.f1093c = c0424ht.mo1375v();
        c0259bq.m830c(true);
        c0259bq.f1094d = c0424ht.mo1373t();
        c0259bq.m831d(true);
        if (c0424ht.m1420b(1).get(0)) {
            c0259bq.f1092b = c0424ht.mo1375v();
            c0259bq.m826b(true);
        }
    }
}
