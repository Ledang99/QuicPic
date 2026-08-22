package p012b.p013a;

/* renamed from: b.a.fk */
/* loaded from: classes.dex */
class C0361fk extends AbstractC0427hw {
    private C0361fk() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0359fi c0359fi) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0359fi.m1147a()) {
                    throw new C0419ho("Required field 'upload_traffic' was not found in serialized data! Struct: " + toString());
                }
                if (!c0359fi.m1150b()) {
                    throw new C0419ho("Required field 'download_traffic' was not found in serialized data! Struct: " + toString());
                }
                c0359fi.m1151c();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0359fi.f1367a = abstractC0418hn.mo1372s();
                        c0359fi.m1146a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0359fi.f1368b = abstractC0418hn.mo1372s();
                        c0359fi.m1149b(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0359fi c0359fi) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        c0359fi.m1151c();
        c0423hs = C0359fi.f1363d;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0359fi.f1364e;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0359fi.f1367a);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0359fi.f1365f;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1342a(c0359fi.f1368b);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
