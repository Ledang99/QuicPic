package p012b.p013a;

/* renamed from: b.a.dj */
/* loaded from: classes.dex */
class C0306dj extends AbstractC0427hw {
    private C0306dj() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0304dh c0304dh) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0304dh.m955a()) {
                    throw new C0419ho("Required field 'latency' was not found in serialized data! Struct: " + toString());
                }
                if (!c0304dh.m957b()) {
                    throw new C0419ho("Required field 'interval' was not found in serialized data! Struct: " + toString());
                }
                c0304dh.m958c();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0304dh.f1202a = abstractC0418hn.mo1372s();
                        c0304dh.m954a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 10) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0304dh.f1203b = abstractC0418hn.mo1373t();
                        c0304dh.m956b(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0304dh c0304dh) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        c0304dh.m958c();
        c0423hs = C0304dh.f1198d;
        abstractC0418hn.mo1347a(c0423hs);
        c0415hk = C0304dh.f1199e;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0304dh.f1202a);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0304dh.f1200f;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1343a(c0304dh.f1203b);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
