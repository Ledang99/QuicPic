package p012b.p013a;

/* renamed from: b.a.n */
/* loaded from: classes.dex */
class C0464n extends AbstractC0427hw {
    private C0464n() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0462l c0462l) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0462l.m1545a()) {
                    throw new C0419ho("Required field 'ts' was not found in serialized data! Struct: " + toString());
                }
                c0462l.m1546b();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0462l.f1639a = abstractC0418hn.mo1373t();
                        c0462l.m1544a(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0462l c0462l) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        c0462l.m1546b();
        c0423hs = C0462l.f1636c;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0462l.f1637d;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0462l.f1639a);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
