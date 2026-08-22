package p012b.p013a;

/* renamed from: b.a.cv */
/* loaded from: classes.dex */
class C0291cv extends AbstractC0427hw {
    private C0291cv() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0289ct c0289ct) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0289ct.m915d()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                c0289ct.m917f();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0289ct.f1165a = abstractC0418hn.mo1375v();
                        c0289ct.m910a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0289ct.f1166b = abstractC0418hn.mo1373t();
                        c0289ct.m911b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0289ct.f1167c = abstractC0418hn.mo1375v();
                        c0289ct.m914c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0289ct c0289ct) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0289ct.m917f();
        c0423hs = C0289ct.f1160e;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0289ct.f1165a != null && c0289ct.m912b()) {
            c0415hk3 = C0289ct.f1161f;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1348a(c0289ct.f1165a);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0289ct.f1162g;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0289ct.f1166b);
        abstractC0418hn.mo1353b();
        if (c0289ct.f1167c != null) {
            c0415hk2 = C0289ct.f1163h;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1348a(c0289ct.f1167c);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
