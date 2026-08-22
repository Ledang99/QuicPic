package p012b.p013a;

import java.util.ArrayList;
import java.util.Iterator;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: b.a.fd */
/* loaded from: classes.dex */
class C0354fd extends AbstractC0427hw {
    private C0354fd() {
    }

    @Override // p012b.p013a.InterfaceC0425hu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo632b(AbstractC0418hn abstractC0418hn, C0352fb c0352fb) {
        abstractC0418hn.mo1359f();
        while (true) {
            C0415hk mo1361h = abstractC0418hn.mo1361h();
            if (mo1361h.f1538b == 0) {
                abstractC0418hn.mo1360g();
                if (!c0352fb.m1118a()) {
                    throw new C0419ho("Required field 'start_time' was not found in serialized data! Struct: " + toString());
                }
                if (!c0352fb.m1122b()) {
                    throw new C0419ho("Required field 'end_time' was not found in serialized data! Struct: " + toString());
                }
                if (!c0352fb.m1125c()) {
                    throw new C0419ho("Required field 'duration' was not found in serialized data! Struct: " + toString());
                }
                c0352fb.m1134h();
                return;
            }
            switch (mo1361h.f1539c) {
                case 1:
                    if (mo1361h.f1538b == 11) {
                        c0352fb.f1342a = abstractC0418hn.mo1375v();
                        c0352fb.m1117a(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 2:
                    if (mo1361h.f1538b == 10) {
                        c0352fb.f1343b = abstractC0418hn.mo1373t();
                        c0352fb.m1121b(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 3:
                    if (mo1361h.f1538b == 10) {
                        c0352fb.f1344c = abstractC0418hn.mo1373t();
                        c0352fb.m1124c(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 4:
                    if (mo1361h.f1538b == 10) {
                        c0352fb.f1345d = abstractC0418hn.mo1373t();
                        c0352fb.m1127d(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case 5:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l = abstractC0418hn.mo1365l();
                        c0352fb.f1346e = new ArrayList(mo1365l.f1541b);
                        for (int i = 0; i < mo1365l.f1541b; i++) {
                            C0326ec c0326ec = new C0326ec();
                            c0326ec.mo646a(abstractC0418hn);
                            c0352fb.f1346e.add(c0326ec);
                        }
                        abstractC0418hn.mo1366m();
                        c0352fb.m1128e(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                    if (mo1361h.f1538b == 15) {
                        C0416hl mo1365l2 = abstractC0418hn.mo1365l();
                        c0352fb.f1347f = new ArrayList(mo1365l2.f1541b);
                        for (int i2 = 0; i2 < mo1365l2.f1541b; i2++) {
                            C0311do c0311do = new C0311do();
                            c0311do.mo646a(abstractC0418hn);
                            c0352fb.f1347f.add(c0311do);
                        }
                        abstractC0418hn.mo1366m();
                        c0352fb.m1130f(true);
                        break;
                    } else {
                        C0421hq.m1415a(abstractC0418hn, mo1361h.f1538b);
                        break;
                    }
                case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                    if (mo1361h.f1538b == 12) {
                        c0352fb.f1348g = new C0359fi();
                        c0352fb.f1348g.mo646a(abstractC0418hn);
                        c0352fb.m1132g(true);
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
    public void mo630a(AbstractC0418hn abstractC0418hn, C0352fb c0352fb) {
        C0423hs c0423hs;
        C0415hk c0415hk;
        C0415hk c0415hk2;
        C0415hk c0415hk3;
        C0415hk c0415hk4;
        C0415hk c0415hk5;
        C0415hk c0415hk6;
        C0415hk c0415hk7;
        c0352fb.m1134h();
        c0423hs = C0352fb.f1333i;
        abstractC0418hn.mo1347a(c0423hs);
        if (c0352fb.f1342a != null) {
            c0415hk7 = C0352fb.f1334j;
            abstractC0418hn.mo1344a(c0415hk7);
            abstractC0418hn.mo1348a(c0352fb.f1342a);
            abstractC0418hn.mo1353b();
        }
        c0415hk = C0352fb.f1335k;
        abstractC0418hn.mo1344a(c0415hk);
        abstractC0418hn.mo1343a(c0352fb.f1343b);
        abstractC0418hn.mo1353b();
        c0415hk2 = C0352fb.f1336l;
        abstractC0418hn.mo1344a(c0415hk2);
        abstractC0418hn.mo1343a(c0352fb.f1344c);
        abstractC0418hn.mo1353b();
        c0415hk3 = C0352fb.f1337m;
        abstractC0418hn.mo1344a(c0415hk3);
        abstractC0418hn.mo1343a(c0352fb.f1345d);
        abstractC0418hn.mo1353b();
        if (c0352fb.f1346e != null && c0352fb.m1129e()) {
            c0415hk6 = C0352fb.f1338n;
            abstractC0418hn.mo1344a(c0415hk6);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0352fb.f1346e.size()));
            Iterator it = c0352fb.f1346e.iterator();
            while (it.hasNext()) {
                ((C0326ec) it.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0352fb.f1347f != null && c0352fb.m1131f()) {
            c0415hk5 = C0352fb.f1339o;
            abstractC0418hn.mo1344a(c0415hk5);
            abstractC0418hn.mo1345a(new C0416hl((byte) 12, c0352fb.f1347f.size()));
            Iterator it2 = c0352fb.f1347f.iterator();
            while (it2.hasNext()) {
                ((C0311do) it2.next()).mo650b(abstractC0418hn);
            }
            abstractC0418hn.mo1358e();
            abstractC0418hn.mo1353b();
        }
        if (c0352fb.f1348g != null && c0352fb.m1133g()) {
            c0415hk4 = C0352fb.f1340p;
            abstractC0418hn.mo1344a(c0415hk4);
            c0352fb.f1348g.mo650b(abstractC0418hn);
            abstractC0418hn.mo1353b();
        }
        abstractC0418hn.mo1354c();
        abstractC0418hn.mo1339a();
    }
}
