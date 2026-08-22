package p012b.p013a;

/* renamed from: b.a.ai */
/* loaded from: classes.dex */
class C0224ai extends AbstractC0427hw {
    private C0224ai() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0222ag c0222ag) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0222ag.m648a()) {
                    throw new C0419ho("Required field 'successful_requests' was not found in serialized data! Struct: " + toString());
                }
                if (!c0222ag.m652b()) {
                    throw new C0419ho("Required field 'failed_requests' was not found in serialized data! Struct: " + toString());
                }
                c0222ag.m656d();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0222ag.f947a = abstractC0418hn.mo1372s();
                        c0222ag.m647a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0222ag.f948b = abstractC0418hn.mo1372s();
                        c0222ag.m651b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0222ag.f949c = abstractC0418hn.mo1372s();
                        c0222ag.m654c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0222ag c0222ag) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0222ag.m656d();
        c0423hs = C0222ag.f942e;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0222ag.f943f;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0222ag.f947a);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0222ag.f944g;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1342a(c0222ag.f948b);
        abstractC0418hn.mo1353b();
        if (c0222ag.m655c()) {
            c0415hk3 = C0222ag.f945h;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1342a(c0222ag.f949c);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
