package p012b.p013a;

/* renamed from: b.a.bz */
/* loaded from: classes.dex */
class C0268bz extends AbstractC0427hw {
    private C0268bz() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0266bx c0266bx) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0266bx.m851c()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                if (!c0266bx.m853e()) {
                    throw new C0419ho("Required field 'version' was not found in serialized data! Struct: " + toString());
                }
                c0266bx.m854f();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0266bx.f1111a = abstractC0418hn.mo1375v();
                        c0266bx.m847a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0266bx.f1112b = abstractC0418hn.mo1373t();
                        c0266bx.m849b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0266bx.f1113c = abstractC0418hn.mo1372s();
                        c0266bx.m850c(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0266bx c0266bx) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        c0266bx.m854f();
        c0423hs = C0266bx.f1106e;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0266bx.f1111a != null) {
            c0415hk3 = C0266bx.f1107f;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1348a(c0266bx.f1111a);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0266bx.f1108g;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0266bx.f1112b);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0266bx.f1109h;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1342a(c0266bx.f1113c);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
