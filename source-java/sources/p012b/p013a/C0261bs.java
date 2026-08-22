package p012b.p013a;

/* renamed from: b.a.bs */
/* loaded from: classes.dex */
class C0261bs extends AbstractC0427hw {
    private C0261bs() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0259bq c0259bq) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0259bq.m827b()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                c0259bq.m829c();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0259bq.f1091a = abstractC0418hn.mo1375v();
                        c0259bq.m823a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0259bq.f1092b = abstractC0418hn.mo1375v();
                        c0259bq.m826b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0259bq.f1093c = abstractC0418hn.mo1375v();
                        c0259bq.m830c(true);
                        break;
                    }
                case 4:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0259bq.f1094d = abstractC0418hn.mo1373t();
                        c0259bq.m831d(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0259bq c0259bq) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        C0415hk c0415hk4;
        c0259bq.m829c();
        c0423hs = C0259bq.f1085f;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0259bq.f1091a != null) {
            c0415hk4 = C0259bq.f1086g;
            abstractC0418hn.mo1344a(c0415hk4);
            abstractC0418hn.mo1348a(c0259bq.f1091a);
            abstractC0418hn.mo1353b();
        }
        if (c0259bq.f1092b != null && c0259bq.m824a()) {
            c0415hk3 = C0259bq.f1087h;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1348a(c0259bq.f1092b);
            abstractC0418hn.mo1353b();
        }
        if (c0259bq.f1093c != null) {
            c0415hk2 = C0259bq.f1088i;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1348a(c0259bq.f1093c);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0259bq.f1089j;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0259bq.f1094d);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
