package p012b.p013a;

/* renamed from: b.a.gu */
/* loaded from: classes.dex */
class C0398gu extends AbstractC0427hw {
    private C0398gu() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, AbstractC0396gs abstractC0396gs) {
        abstractC0396gs.f1484c = null;
        abstractC0396gs.f1483b = null;
        abstractC0418hn.mo1359f();
        C0415hk mo1361h = abstractC0418hn.mo1361h();
        abstractC0396gs.f1483b = abstractC0396gs.mo1054a(abstractC0418hn, mo1361h);
        if (abstractC0396gs.f1483b != null) {
            abstractC0396gs.f1484c = abstractC0396gs.mo1059b(mo1361h.f1539c);
        }
        abstractC0418hn.mo1362i();
        abstractC0418hn.mo1361h();
        abstractC0418hn.mo1360g();
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, AbstractC0396gs abstractC0396gs) {
        if (abstractC0396gs.m1327b() == null || abstractC0396gs.m1328c() == null) {
            throw new C0419ho("Cannot write a TUnion with no set value!");
        }
        abstractC0418hn.mo1347a(abstractC0396gs.mo1053a());
        abstractC0418hn.mo1344a(abstractC0396gs.mo1052a(abstractC0396gs.f1484c));
        abstractC0396gs.mo1060c(abstractC0418hn);
        abstractC0418hn.mo1353b();
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
