package p012b.p013a;

import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: b.a.hq */
/* loaded from: classes.dex */
public class C0421hq {

    /* renamed from: a */
    private static int f1547a = Integer.MAX_VALUE;

    /* renamed from: a */
    public static void m1415a(AbstractC0418hn abstractC0418hn, byte b2) {
        m1416a(abstractC0418hn, b2, f1547a);
    }

    /* renamed from: a */
    public static void m1416a(AbstractC0418hn abstractC0418hn, byte b2, int i) {
        int i2 = 0;
        if (i <= 0) {
            throw new C0393gp("Maximum skip depth exceeded");
        }
        switch (b2) {
            case 2:
                abstractC0418hn.mo1369p();
                return;
            case 3:
                abstractC0418hn.mo1370q();
                return;
            case 4:
                abstractC0418hn.mo1374u();
                return;
            case 5:
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
            case 9:
            default:
                return;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                abstractC0418hn.mo1371r();
                return;
            case 8:
                abstractC0418hn.mo1372s();
                return;
            case 10:
                abstractC0418hn.mo1373t();
                return;
            case 11:
                abstractC0418hn.mo1376w();
                return;
            case 12:
                abstractC0418hn.mo1359f();
                while (true) {
                    C0415hk mo1361h = abstractC0418hn.mo1361h();
                    if (mo1361h.f1538b == 0) {
                        abstractC0418hn.mo1360g();
                        return;
                    } else {
                        m1416a(abstractC0418hn, mo1361h.f1538b, i - 1);
                        abstractC0418hn.mo1362i();
                    }
                }
            case 13:
                C0417hm mo1363j = abstractC0418hn.mo1363j();
                while (i2 < mo1363j.f1544c) {
                    m1416a(abstractC0418hn, mo1363j.f1542a, i - 1);
                    m1416a(abstractC0418hn, mo1363j.f1543b, i - 1);
                    i2++;
                }
                abstractC0418hn.mo1364k();
                return;
            case 14:
                C0422hr mo1367n = abstractC0418hn.mo1367n();
                while (i2 < mo1367n.f1549b) {
                    m1416a(abstractC0418hn, mo1367n.f1548a, i - 1);
                    i2++;
                }
                abstractC0418hn.mo1368o();
                return;
            case 15:
                C0416hl mo1365l = abstractC0418hn.mo1365l();
                while (i2 < mo1365l.f1541b) {
                    m1416a(abstractC0418hn, mo1365l.f1540a, i - 1);
                    i2++;
                }
                abstractC0418hn.mo1366m();
                return;
        }
    }
}
