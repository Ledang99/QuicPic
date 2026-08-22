package p012b.p013a;

/* renamed from: b.a.ev */
/* loaded from: classes.dex */
class C0345ev extends AbstractC0427hw {
    private C0345ev() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0343et c0343et) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0343et.m1085a()) {
                    throw new C0419ho("Required field 'resp_code' was not found in serialized data! Struct: " + toString());
                }
                c0343et.m1092f();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0343et.f1314a = abstractC0418hn.mo1372s();
                        c0343et.m1084a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0343et.f1315b = abstractC0418hn.mo1375v();
                        c0343et.m1087b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 12) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0343et.f1316c = new C0282cm();
                        c0343et.f1316c.mo646a(abstractC0418hn);
                        c0343et.m1088c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0343et c0343et) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0343et.m1092f();
        c0423hs = C0343et.f1309e;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0343et.f1310f;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0343et.f1314a);
        abstractC0418hn.mo1353b();
        if (c0343et.f1315b != null && c0343et.m1089c()) {
            c0415hk3 = C0343et.f1311g;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1348a(c0343et.f1315b);
            abstractC0418hn.mo1353b();
        }
        if (c0343et.f1316c != null && c0343et.m1091e()) {
            c0415hk2 = C0343et.f1312h;
            abstractC0418hn.mo1344a(c0415hk2);
            c0343et.f1316c.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
