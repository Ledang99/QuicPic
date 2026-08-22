package p012b.p013a;

/* renamed from: b.a.dq */
/* loaded from: classes.dex */
class C0313dq extends AbstractC0427hw {
    private C0313dq() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0311do c0311do) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0311do.m971a()) {
                    throw new C0419ho("Required field 'lat' was not found in serialized data! Struct: " + toString());
                }
                if (!c0311do.m973b()) {
                    throw new C0419ho("Required field 'lng' was not found in serialized data! Struct: " + toString());
                }
                if (!c0311do.m975c()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                c0311do.m976d();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 4) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0311do.f1217a = abstractC0418hn.mo1374u();
                        c0311do.m970a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 4) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0311do.f1218b = abstractC0418hn.mo1374u();
                        c0311do.m972b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0311do.f1219c = abstractC0418hn.mo1373t();
                        c0311do.m974c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0311do c0311do) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0311do.m976d();
        c0423hs = C0311do.f1212e;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0311do.f1213f;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1341a(c0311do.f1217a);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0311do.f1214g;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1341a(c0311do.f1218b);
        abstractC0418hn.mo1353b();
        c0415hk3 = C0311do.f1215h;
        abstractC0418hn.mo1344a(c0415hk3);
        abstractC0418hn.mo1343a(c0311do.f1219c);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
