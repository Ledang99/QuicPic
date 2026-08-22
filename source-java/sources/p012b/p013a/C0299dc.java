package p012b.p013a;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: b.a.dc */
/* loaded from: classes.dex */
class C0299dc extends AbstractC0427hw {
    private C0299dc() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0297da c0297da) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                c0297da.m943e();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b == 11) {
                        c0297da.f1184a = abstractC0418hn.mo1375v();
                        c0297da.m936a(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l = abstractC0418hn.mo1365l();
                        c0297da.f1185b = new ArrayList(mo1365l.f1541b);
                        for (int i = 0; i < mo1365l.f1541b; i++) {
                            C0244bb c0244bb = new C0244bb();
                            c0244bb.mo646a(abstractC0418hn);
                            c0297da.f1185b.add(c0244bb);
                        }
                        abstractC0418hn.mo1366m();
                        c0297da.m937b(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l2 = abstractC0418hn.mo1365l();
                        c0297da.f1186c = new ArrayList(mo1365l2.f1541b);
                        for (int i2 = 0; i2 < mo1365l2.f1541b; i2++) {
                            C0252bj c0252bj = new C0252bj();
                            c0252bj.mo646a(abstractC0418hn);
                            c0297da.f1186c.add(c0252bj);
                        }
                        abstractC0418hn.mo1366m();
                        c0297da.m939c(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 4:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l3 = abstractC0418hn.mo1365l();
                        c0297da.f1187d = new ArrayList(mo1365l3.f1541b);
                        for (int i3 = 0; i3 < mo1365l3.f1541b; i3++) {
                            C0252bj c0252bj2 = new C0252bj();
                            c0252bj2.mo646a(abstractC0418hn);
                            c0297da.f1187d.add(c0252bj2);
                        }
                        abstractC0418hn.mo1366m();
                        c0297da.m941d(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0297da c0297da) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        C0415hk c0415hk4;
        c0297da.m943e();
        c0423hs = C0297da.f1178f;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0297da.f1184a != null) {
            c0415hk4 = C0297da.f1179g;
            abstractC0418hn.mo1344a(c0415hk4);
            abstractC0418hn.mo1348a(c0297da.f1184a);
            abstractC0418hn.mo1353b();
        }
        if (c0297da.f1185b != null && c0297da.m938b()) {
            c0415hk3 = C0297da.f1180h;
            abstractC0418hn.mo1344a(c0415hk3);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0297da.f1185b.size()));
            Iterator it = c0297da.f1185b.iterator();
            while (it.hasNext()) {
                ((C0244bb) it.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0297da.f1186c != null && c0297da.m940c()) {
            c0415hk2 = C0297da.f1181i;
            abstractC0418hn.mo1344a(c0415hk2);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0297da.f1186c.size()));
            Iterator it2 = c0297da.f1186c.iterator();
            while (it2.hasNext()) {
                ((C0252bj) it2.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0297da.f1187d != null && c0297da.m942d()) {
            c0415hk = C0297da.f1182j;
            abstractC0418hn.mo1344a(c0415hk);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0297da.f1187d.size()));
            Iterator it3 = c0297da.f1187d.iterator();
            while (it3.hasNext()) {
                ((C0252bj) it3.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
