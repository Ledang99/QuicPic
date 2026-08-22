package p012b.p013a;

import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.co */
/* loaded from: classes.dex */
class C0284co extends AbstractC0427hw {
    private C0284co() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0282cm c0282cm) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0282cm.m895d()) {
                    throw new C0419ho("Required field 'version' was not found in serialized data! Struct: " + toString());
                }
                c0282cm.m897f();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b == 13) {
                        C0417hm mo1363j = abstractC0418hn.mo1363j();
                        c0282cm.f1148a = new HashMap(mo1363j.f1544c * 2);
                        for (int i = 0; i < mo1363j.f1544c; i++) {
                            String mo1375v = abstractC0418hn.mo1375v();
                            C0289ct c0289ct = new C0289ct();
                            c0289ct.mo646a(abstractC0418hn);
                            c0282cm.f1148a.put(mo1375v, c0289ct);
                        }
                        abstractC0418hn.mo1364k();
                        c0282cm.m890a(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b == 8) {
                        c0282cm.f1149b = abstractC0418hn.mo1372s();
                        c0282cm.m891b(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b == 11) {
                        c0282cm.f1150c = abstractC0418hn.mo1375v();
                        c0282cm.m894c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0282cm c0282cm) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0282cm.m897f();
        c0423hs = C0282cm.f1143e;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0282cm.f1148a != null) {
            c0415hk3 = C0282cm.f1144f;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1346a(new C0417hm((byte) 11, (byte) 12, c0282cm.f1148a.size()));
            for (Map.Entry entry : c0282cm.f1148a.entrySet()) {
                abstractC0418hn.mo1348a((String) entry.getKey());
                ((C0289ct) entry.getValue()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1356d();
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0282cm.f1145g;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0282cm.f1149b);
        abstractC0418hn.mo1353b();
        if (c0282cm.f1150c != null) {
            c0415hk2 = C0282cm.f1146h;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1348a(c0282cm.f1150c);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
