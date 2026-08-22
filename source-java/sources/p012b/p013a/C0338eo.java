package p012b.p013a;

/* renamed from: b.a.eo */
/* loaded from: classes.dex */
class C0338eo extends AbstractC0427hw {
    private C0338eo() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0336em c0336em) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0336em.m1069a()) {
                    throw new C0419ho("Required field 'height' was not found in serialized data! Struct: " + toString());
                }
                if (!c0336em.m1071b()) {
                    throw new C0419ho("Required field 'width' was not found in serialized data! Struct: " + toString());
                }
                c0336em.m1072c();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0336em.f1299a = abstractC0418hn.mo1372s();
                        c0336em.m1068a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0336em.f1300b = abstractC0418hn.mo1372s();
                        c0336em.m1070b(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0336em c0336em) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        c0336em.m1072c();
        c0423hs = C0336em.f1295d;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0336em.f1296e;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0336em.f1299a);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0336em.f1297f;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1342a(c0336em.f1300b);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
