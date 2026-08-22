package p012b.p013a;

import android.content.Context;
import com.p045c.p046a.C1398a;
import com.p045c.p046a.C1404d;
import com.p045c.p046a.C1405e;
import com.p045c.p046a.C1406f;
import com.p045c.p046a.C1409i;
import com.p045c.p046a.C1412l;
import com.p045c.p046a.C1420t;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: b.a.ik */
/* loaded from: classes.dex */
public class C0442ik {

    /* renamed from: a */
    final /* synthetic */ C0440ii f1576a;

    /* renamed from: e */
    private C1409i f1580e;

    /* renamed from: f */
    private int f1581f;

    /* renamed from: g */
    private int f1582g;

    /* renamed from: h */
    private int f1583h;

    /* renamed from: i */
    private int f1584i;

    /* renamed from: b */
    private final long f1577b = 1296000000;

    /* renamed from: c */
    private final int f1578c = 1800000;

    /* renamed from: d */
    private final int f1579d = 10000;

    /* renamed from: j */
    private boolean f1585j = false;

    public C0442ik(C0440ii c0440ii) {
        C1420t c1420t;
        C1420t c1420t2;
        C1420t c1420t3;
        this.f1576a = c0440ii;
        c1420t = c0440ii.f1568b;
        this.f1581f = c1420t.m4617c();
        c1420t2 = c0440ii.f1568b;
        int m4619d = c1420t2.m4619d();
        if (m4619d > 0) {
            this.f1582g = m1472c(m4619d);
        } else if (C1398a.f4959g > 0) {
            this.f1582g = m1472c(C1398a.f4959g);
        } else {
            this.f1582g = 10000;
        }
        c1420t3 = c0440ii.f1568b;
        int[] m4616b = c1420t3.m4616b();
        this.f1583h = m4616b[0];
        this.f1584i = m4616b[1];
    }

    /* renamed from: a */
    private C1409i m1471a(int i, int i2) {
        Context context;
        C0242b c0242b;
        C0242b c0242b2;
        switch (i) {
            case 4:
                c0242b = this.f1576a.f1569c;
                break;
            case 5:
                context = this.f1576a.f1574h;
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                c0242b2 = this.f1576a.f1569c;
                break;
        }
        return new C1406f();
    }

    /* renamed from: c */
    private int m1472c(int i) {
        if (i > 1800000) {
            return 1800000;
        }
        return i;
    }

    /* renamed from: a */
    protected void m1473a() {
        Context context;
        C1409i c1404d;
        C0242b c0242b;
        C0458j c0458j;
        if (this.f1581f > 0) {
            if ((this.f1580e instanceof C1404d) && this.f1580e.mo4581a()) {
                c1404d = this.f1580e;
            } else {
                c0242b = this.f1576a.f1569c;
                c0458j = this.f1576a.f1570d;
                c1404d = new C1404d(c0242b, c0458j);
            }
            this.f1580e = c1404d;
        } else {
            if (!((this.f1580e instanceof C1405e) && this.f1580e.mo4581a())) {
                if (m1476b()) {
                    context = this.f1576a.f1574h;
                    int m4583a = C1412l.m4583a(this.f1582g, C0383gf.m1287a(context));
                    this.f1580e = new C1405e(m4583a);
                    this.f1576a.m1460e(m4583a);
                } else {
                    this.f1580e = m1471a(this.f1583h, this.f1584i);
                }
            }
        }
        this.f1585j = false;
    }

    /* renamed from: a */
    public void m1474a(int i) {
        this.f1582g = m1472c(i);
        m1478d();
    }

    /* renamed from: b */
    public void m1475b(int i) {
        this.f1581f = i;
        m1478d();
    }

    /* renamed from: b */
    protected boolean m1476b() {
        C1420t c1420t;
        C0242b c0242b;
        C0242b c0242b2;
        c1420t = this.f1576a.f1568b;
        if (c1420t.m4623g()) {
            return false;
        }
        c0242b = this.f1576a.f1569c;
        if (c0242b.m752a()) {
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        c0242b2 = this.f1576a.f1569c;
        return currentTimeMillis - c0242b2.m761j() > 1296000000;
    }

    /* renamed from: c */
    public C1409i m1477c() {
        m1473a();
        return this.f1580e;
    }

    /* renamed from: d */
    protected void m1478d() {
        this.f1585j = true;
    }
}
