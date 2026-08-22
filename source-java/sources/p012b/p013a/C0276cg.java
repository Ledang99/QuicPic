package p012b.p013a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.cg */
/* loaded from: classes.dex */
class C0276cg extends AbstractC0427hw {
    private C0276cg() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0274ce c0274ce) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                c0274ce.m875e();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b == 13) {
                        C0417hm mo1363j = abstractC0418hn.mo1363j();
                        c0274ce.f1130a = new HashMap(mo1363j.f1544c * 2);
                        for (int i = 0; i < mo1363j.f1544c; i++) {
                            String mo1375v = abstractC0418hn.mo1375v();
                            C0266bx c0266bx = new C0266bx();
                            c0266bx.mo646a(abstractC0418hn);
                            c0274ce.f1130a.put(mo1375v, c0266bx);
                        }
                        abstractC0418hn.mo1364k();
                        c0274ce.m869a(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l = abstractC0418hn.mo1365l();
                        c0274ce.f1131b = new ArrayList(mo1365l.f1541b);
                        for (int i2 = 0; i2 < mo1365l.f1541b; i2++) {
                            C0259bq c0259bq = new C0259bq();
                            c0259bq.mo646a(abstractC0418hn);
                            c0274ce.f1131b.add(c0259bq);
                        }
                        abstractC0418hn.mo1366m();
                        c0274ce.m871b(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b == 11) {
                        c0274ce.f1132c = abstractC0418hn.mo1375v();
                        c0274ce.m872c(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                default:
                    C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                    break;
            }
            abstractC0418hn.mo1362i();
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, C0274ce c0274ce) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0274ce.m875e();
        c0423hs = C0274ce.f1125e;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0274ce.f1130a != null) {
            c0415hk3 = C0274ce.f1126f;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1346a(new C0417hm((byte) 11, (byte) 12, c0274ce.f1130a.size()));
            for (Map.Entry entry : c0274ce.f1130a.entrySet()) {
                abstractC0418hn.mo1348a((String) entry.getKey());
                ((C0266bx) entry.getValue()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1356d();
            abstractC0418hn.mo1353b();
        }
        if (c0274ce.f1131b != null && c0274ce.m873c()) {
            c0415hk2 = C0274ce.f1127g;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0274ce.f1131b.size()));
            Iterator it = c0274ce.f1131b.iterator();
            while (it.hasNext()) {
                ((C0259bq) it.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0274ce.f1132c != null && c0274ce.m874d()) {
            c0415hk = C0274ce.f1128h;
            abstractC0418hn.mo1344a(c0415hk);
            abstractC0418hn.mo1348a(c0274ce.f1132c);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
