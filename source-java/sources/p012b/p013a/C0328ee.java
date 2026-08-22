package p012b.p013a;

/* renamed from: b.a.ee */
/* loaded from: classes.dex */
class C0328ee extends AbstractC0427hw {
    private C0328ee() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0326ec c0326ec) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0326ec.m1040a()) {
                    throw new C0419ho("Required field 'duration' was not found in serialized data! Struct: " + toString());
                }
                c0326ec.m1041b();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0326ec.f1274a = abstractC0418hn.mo1375v();
                        c0326ec.m1039a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0326ec.f1275b = abstractC0418hn.mo1373t();
                        c0326ec.m1042b(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0326ec c0326ec) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        c0326ec.m1041b();
        c0423hs = C0326ec.f1270d;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0326ec.f1274a != null) {
            c0415hk2 = C0326ec.f1271e;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1348a(c0326ec.f1274a);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0326ec.f1272f;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0326ec.f1275b);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
