package p012b.p013a;

/* renamed from: b.a.ap */
/* loaded from: classes.dex */
class C0231ap extends AbstractC0427hw {
    private C0231ap() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0229an c0229an) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                c0229an.m669b();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 12) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0229an.f963a = new C0304dh();
                        c0229an.f963a.mo646a(abstractC0418hn);
                        c0229an.m667a(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0229an c0229an) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        c0229an.m669b();
        c0423hs = C0229an.f960c;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0229an.f963a != null && c0229an.m668a()) {
            c0415hk = C0229an.f961d;
            abstractC0418hn.mo1344a(c0415hk);
            c0229an.f963a.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
