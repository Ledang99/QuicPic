package p012b.p013a;

/* renamed from: b.a.gw */
/* loaded from: classes.dex */
class C0400gw extends AbstractC0428hx {
    private C0400gw() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, AbstractC0396gs abstractC0396gs) {
        abstractC0396gs.f1484c = null;
        abstractC0396gs.f1483b = null;
        short mo1371r = abstractC0418hn.mo1371r();
        abstractC0396gs.f1483b = abstractC0396gs.mo1055a(abstractC0418hn, mo1371r);
        if (abstractC0396gs.f1483b != null) {
            abstractC0396gs.f1484c = abstractC0396gs.mo1059b(mo1371r);
        }
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public void mo630a(AbstractC0418hn abstractC0418hn, AbstractC0396gs abstractC0396gs) {
        if (abstractC0396gs.m1327b() == null || abstractC0396gs.m1328c() == null) {
            throw new C0419ho("Cannot write a TUnion with no set value!");
        }
        abstractC0418hn.mo1350a(abstractC0396gs.f1484c.mo639a());
        abstractC0396gs.mo1061d(abstractC0418hn);
    }
}
