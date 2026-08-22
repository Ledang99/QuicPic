package p012b.p013a;

import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.bl */
/* loaded from: classes.dex */
class C0254bl extends AbstractC0427hw {
    private C0254bl() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0252bj c0252bj) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0252bj.m805c()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                c0252bj.m806d();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b == 11) {
                        c0252bj.f1068a = abstractC0418hn.mo1375v();
                        c0252bj.m799a(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b == 13) {
                        C0417hm mo1363j = abstractC0418hn.mo1363j();
                        c0252bj.f1069b = new HashMap(mo1363j.f1544c * 2);
                        for (int i = 0; i < mo1363j.f1544c; i++) {
                            String mo1375v = abstractC0418hn.mo1375v();
                            C0333ej c0333ej = new C0333ej();
                            c0333ej.mo646a(abstractC0418hn);
                            c0252bj.f1069b.put(mo1375v, c0333ej);
                        }
                        abstractC0418hn.mo1364k();
                        c0252bj.m802b(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b == 10) {
                        c0252bj.f1070c = abstractC0418hn.mo1373t();
                        c0252bj.m804c(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 4:
                    if (mo1361h.f1538b == 8) {
                        c0252bj.f1071d = abstractC0418hn.mo1372s();
                        c0252bj.m807d(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 5:
                    if (mo1361h.f1538b == 10) {
                        c0252bj.f1072e = abstractC0418hn.mo1373t();
                        c0252bj.m808e(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0252bj c0252bj) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        C0415hk c0415hk4;
        C0415hk c0415hk5;
        c0252bj.m806d();
        c0423hs = C0252bj.f1061g;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0252bj.f1068a != null) {
            c0415hk5 = C0252bj.f1062h;
            abstractC0418hn.mo1344a(c0415hk5);
            abstractC0418hn.mo1348a(c0252bj.f1068a);
            abstractC0418hn.mo1353b();
        }
        if (c0252bj.f1069b != null) {
            c0415hk4 = C0252bj.f1063i;
            abstractC0418hn.mo1344a(c0415hk4);
            abstractC0418hn.mo1346a(new C0417hm((byte) 11, (byte) 12, c0252bj.f1069b.size()));
            for (Map.Entry entry : c0252bj.f1069b.entrySet()) {
                abstractC0418hn.mo1348a((String) entry.getKey());
                ((C0333ej) entry.getValue()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1356d();
            abstractC0418hn.mo1353b();
        }
        if (c0252bj.m800a()) {
            c0415hk3 = C0252bj.f1064j;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1343a(c0252bj.f1070c);
            abstractC0418hn.mo1353b();
        }
        if (c0252bj.m803b()) {
            c0415hk2 = C0252bj.f1065k;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1342a(c0252bj.f1071d);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0252bj.f1066l;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0252bj.f1072e);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
