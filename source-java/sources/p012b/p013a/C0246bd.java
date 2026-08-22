package p012b.p013a;

/* renamed from: b.a.bd */
/* loaded from: classes.dex */
class C0246bd extends AbstractC0427hw {
    private C0246bd() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0244bb c0244bb) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0244bb.m775a()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                c0244bb.m778c();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0244bb.f1044a = abstractC0418hn.mo1373t();
                        c0244bb.m774a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0244bb.f1045b = abstractC0418hn.mo1375v();
                        c0244bb.m776b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0244bb.f1046c = EnumC0251bi.m787a(abstractC0418hn.mo1372s());
                        c0244bb.m779c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0244bb c0244bb) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0244bb.m778c();
        c0423hs = C0244bb.f1039e;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0244bb.f1040f;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0244bb.f1044a);
        abstractC0418hn.mo1353b();
        if (c0244bb.f1045b != null) {
            c0415hk3 = C0244bb.f1041g;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1348a(c0244bb.f1045b);
            abstractC0418hn.mo1353b();
        }
        if (c0244bb.f1046c != null && c0244bb.m777b()) {
            c0415hk2 = C0244bb.f1042h;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1342a(c0244bb.f1046c.m788a());
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
