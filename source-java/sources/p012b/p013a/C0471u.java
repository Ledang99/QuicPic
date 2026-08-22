package p012b.p013a;

/* renamed from: b.a.u */
/* loaded from: classes.dex */
class C0471u extends AbstractC0427hw {
    private C0471u() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0469s c0469s) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                c0469s.m1557a();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0469s.f1651a = abstractC0418hn.mo1375v();
                        c0469s.m1558a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0469s.f1652b = abstractC0418hn.mo1375v();
                        c0469s.m1559b(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0469s c0469s) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        c0469s.m1557a();
        c0423hs = C0469s.f1647d;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0469s.f1651a != null) {
            c0415hk2 = C0469s.f1648e;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1348a(c0469s.f1651a);
            abstractC0418hn.mo1353b();
        }
        if (c0469s.f1652b != null) {
            c0415hk = C0469s.f1649f;
            abstractC0418hn.mo1344a(c0415hk);
            abstractC0418hn.mo1348a(c0469s.f1652b);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
