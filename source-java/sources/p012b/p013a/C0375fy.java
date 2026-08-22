package p012b.p013a;

import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: b.a.fy */
/* loaded from: classes.dex */
class C0375fy extends AbstractC0427hw {
    private C0375fy() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0373fw c0373fw) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0373fw.m1229a()) {
                    throw new C0419ho("Required field 'serial_num' was not found in serialized data! Struct: " + toString());
                }
                if (!c0373fw.m1233b()) {
                    throw new C0419ho("Required field 'ts_secs' was not found in serialized data! Struct: " + toString());
                }
                if (!c0373fw.m1237c()) {
                    throw new C0419ho("Required field 'length' was not found in serialized data! Struct: " + toString());
                }
                c0373fw.m1243e();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1430a = abstractC0418hn.mo1375v();
                        c0373fw.m1228a(true);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1431b = abstractC0418hn.mo1375v();
                        c0373fw.m1232b(true);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1432c = abstractC0418hn.mo1375v();
                        c0373fw.m1236c(true);
                        break;
                    }
                case 4:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1433d = abstractC0418hn.mo1372s();
                        c0373fw.m1240d(true);
                        break;
                    }
                case 5:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1434e = abstractC0418hn.mo1372s();
                        c0373fw.m1244e(true);
                        break;
                    }
                case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1435f = abstractC0418hn.mo1372s();
                        c0373fw.m1245f(true);
                        break;
                    }
                case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1436g = abstractC0418hn.mo1376w();
                        c0373fw.m1246g(true);
                        break;
                    }
                case 8:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1437h = abstractC0418hn.mo1375v();
                        c0373fw.m1247h(true);
                        break;
                    }
                case 9:
                    if (mo1361h.f1538b != 11) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1438i = abstractC0418hn.mo1375v();
                        c0373fw.m1248i(true);
                        break;
                    }
                case 10:
                    if (mo1361h.f1538b != 8) {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    } else {
                        c0373fw.f1439j = abstractC0418hn.mo1372s();
                        c0373fw.m1249j(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0373fw c0373fw) {
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
        c0373fw.m1243e();
        c0423hs = C0373fw.f1418l;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0373fw.f1430a != null) {
            c0415hk10 = C0373fw.f1419m;
            abstractC0418hn.mo1344a(c0415hk10);
            abstractC0418hn.mo1348a(c0373fw.f1430a);
            abstractC0418hn.mo1353b();
        }
        if (c0373fw.f1431b != null) {
            c0415hk9 = C0373fw.f1420n;
            abstractC0418hn.mo1344a(c0415hk9);
            abstractC0418hn.mo1348a(c0373fw.f1431b);
            abstractC0418hn.mo1353b();
        }
        if (c0373fw.f1432c != null) {
            c0415hk8 = C0373fw.f1421o;
            abstractC0418hn.mo1344a(c0415hk8);
            abstractC0418hn.mo1348a(c0373fw.f1432c);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0373fw.f1422p;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1342a(c0373fw.f1433d);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0373fw.f1423q;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1342a(c0373fw.f1434e);
        abstractC0418hn.mo1353b();
        c0415hk3 = C0373fw.f1424r;
        abstractC0418hn.mo1344a(c0415hk3);
        abstractC0418hn.mo1342a(c0373fw.f1435f);
        abstractC0418hn.mo1353b();
        if (c0373fw.f1436g != null) {
            c0415hk7 = C0373fw.f1425s;
            abstractC0418hn.mo1344a(c0415hk7);
            abstractC0418hn.mo1349a(c0373fw.f1436g);
            abstractC0418hn.mo1353b();
        }
        if (c0373fw.f1437h != null) {
            c0415hk6 = C0373fw.f1426t;
            abstractC0418hn.mo1344a(c0415hk6);
            abstractC0418hn.mo1348a(c0373fw.f1437h);
            abstractC0418hn.mo1353b();
        }
        if (c0373fw.f1438i != null) {
            c0415hk5 = C0373fw.f1427u;
            abstractC0418hn.mo1344a(c0415hk5);
            abstractC0418hn.mo1348a(c0373fw.f1438i);
            abstractC0418hn.mo1353b();
        }
        if (c0373fw.m1241d()) {
            c0415hk4 = C0373fw.f1428v;
            abstractC0418hn.mo1344a(c0415hk4);
            abstractC0418hn.mo1342a(c0373fw.f1439j);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
