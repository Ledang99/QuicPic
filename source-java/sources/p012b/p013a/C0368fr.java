package p012b.p013a;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: b.a.fr */
/* loaded from: classes.dex */
class C0368fr extends AbstractC0427hw {
    private C0368fr() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0366fp c0366fp) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                c0366fp.m1204k();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1390a = new C0222ag();
                        c0366fp.f1390a.mo646a(abstractC0418hn);
                        c0366fp.m1183a(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1391b = new C0476z();
                        c0366fp.f1391b.mo646a(abstractC0418hn);
                        c0366fp.m1187b(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1392c = new C0236au();
                        c0366fp.f1392c.mo646a(abstractC0418hn);
                        c0366fp.m1189c(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 4:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1393d = new C0318dv();
                        c0366fp.f1393d.mo646a(abstractC0418hn);
                        c0366fp.m1190d(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 5:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1394e = new C0462l();
                        c0366fp.f1394e.mo646a(abstractC0418hn);
                        c0366fp.m1193e(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l = abstractC0418hn.mo1365l();
                        c0366fp.f1395f = new ArrayList(mo1365l.f1541b);
                        for (int i = 0; i < mo1365l.f1541b; i++) {
                            C0297da c0297da = new C0297da();
                            c0297da.mo646a(abstractC0418hn);
                            c0366fp.f1395f.add(c0297da);
                        }
                        abstractC0418hn.mo1366m();
                        c0366fp.m1194f(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l2 = abstractC0418hn.mo1365l();
                        c0366fp.f1396g = new ArrayList(mo1365l2.f1541b);
                        for (int i2 = 0; i2 < mo1365l2.f1541b; i2++) {
                            C0352fb c0352fb = new C0352fb();
                            c0352fb.mo646a(abstractC0418hn);
                            c0366fp.f1396g.add(c0352fb);
                        }
                        abstractC0418hn.mo1366m();
                        c0366fp.m1196g(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 8:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1397h = new C0282cm();
                        c0366fp.f1397h.mo646a(abstractC0418hn);
                        c0366fp.m1198h(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 9:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1398i = new C0274ce();
                        c0366fp.f1398i.mo646a(abstractC0418hn);
                        c0366fp.m1200i(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 10:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1399j = new C0469s();
                        c0366fp.f1399j.mo646a(abstractC0418hn);
                        c0366fp.m1202j(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 11:
                    if (mo1361h.f1538b == 12) {
                        c0366fp.f1400k = new C0229an();
                        c0366fp.f1400k.mo646a(abstractC0418hn);
                        c0366fp.m1205k(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0366fp c0366fp) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        C0415hk c0415hk4;
        C0415hk c0415hk5;
        C0415hk c0415hk6;
        C0415hk c0415hk7;
        C0415hk c0415hk8;
        C0415hk c0415hk9;
        C0415hk c0415hk10;
        C0415hk c0415hk11;
        c0366fp.m1204k();
        c0423hs = C0366fp.f1377m;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0366fp.f1390a != null) {
            c0415hk11 = C0366fp.f1378n;
            abstractC0418hn.mo1344a(c0415hk11);
            c0366fp.f1390a.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1391b != null) {
            c0415hk10 = C0366fp.f1379o;
            abstractC0418hn.mo1344a(c0415hk10);
            c0366fp.f1391b.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1392c != null) {
            c0415hk9 = C0366fp.f1380p;
            abstractC0418hn.mo1344a(c0415hk9);
            c0366fp.f1392c.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1393d != null) {
            c0415hk8 = C0366fp.f1381q;
            abstractC0418hn.mo1344a(c0415hk8);
            c0366fp.f1393d.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1394e != null && c0366fp.m1184a()) {
            c0415hk7 = C0366fp.f1382r;
            abstractC0418hn.mo1344a(c0415hk7);
            c0366fp.f1394e.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1395f != null && c0366fp.m1191d()) {
            c0415hk6 = C0366fp.f1383s;
            abstractC0418hn.mo1344a(c0415hk6);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0366fp.f1395f.size()));
            Iterator it = c0366fp.f1395f.iterator();
            while (it.hasNext()) {
                ((C0297da) it.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1396g != null && c0366fp.m1195f()) {
            c0415hk5 = C0366fp.f1384t;
            abstractC0418hn.mo1344a(c0415hk5);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0366fp.f1396g.size()));
            Iterator it2 = c0366fp.f1396g.iterator();
            while (it2.hasNext()) {
                ((C0352fb) it2.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1397h != null && c0366fp.m1197g()) {
            c0415hk4 = C0366fp.f1385u;
            abstractC0418hn.mo1344a(c0415hk4);
            c0366fp.f1397h.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1398i != null && c0366fp.m1199h()) {
            c0415hk3 = C0366fp.f1386v;
            abstractC0418hn.mo1344a(c0415hk3);
            c0366fp.f1398i.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1399j != null && c0366fp.m1201i()) {
            c0415hk2 = C0366fp.f1387w;
            abstractC0418hn.mo1344a(c0415hk2);
            c0366fp.f1399j.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        if (c0366fp.f1400k != null && c0366fp.m1203j()) {
            c0415hk = C0366fp.f1388x;
            abstractC0418hn.mo1344a(c0415hk);
            c0366fp.f1400k.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
