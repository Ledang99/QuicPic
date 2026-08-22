package p012b.p013a;

import android.content.Context;
import java.util.Arrays;
import java.util.List;

/* renamed from: b.a.j */
/* loaded from: classes.dex */
public class C0458j {

    /* renamed from: a */
    private int f1623a = 0;

    /* renamed from: b */
    private final long f1624b = 60000;

    /* renamed from: a */
    public long m1524a() {
        switch (this.f1623a) {
            case 1:
                return 14400000L;
            case 2:
                return 28800000L;
            case 3:
                return 86400000L;
            default:
                return 0L;
        }
    }

    /* renamed from: a */
    public C0352fb m1525a(Context context) {
        long currentTimeMillis = System.currentTimeMillis();
        C0352fb c0352fb = new C0352fb();
        c0352fb.m1114a(C0460jb.m1535e(context));
        c0352fb.m1112a(currentTimeMillis);
        c0352fb.m1119b(currentTimeMillis + 60000);
        c0352fb.m1123c(60000L);
        return c0352fb;
    }

    /* renamed from: a */
    public C0366fp m1526a(Context context, C0366fp c0366fp) {
        if (c0366fp == null) {
            return null;
        }
        if (this.f1623a == 1) {
            c0366fp.m1180a((List) null);
            return c0366fp;
        }
        if (this.f1623a == 2) {
            c0366fp.m1186b(Arrays.asList(m1525a(context)));
            c0366fp.m1180a((List) null);
            return c0366fp;
        }
        if (this.f1623a != 3) {
            return c0366fp;
        }
        c0366fp.m1186b((List) null);
        c0366fp.m1180a((List) null);
        return c0366fp;
    }

    /* renamed from: a */
    public void m1527a(int i) {
        if (i < 0 || i > 3) {
            return;
        }
        this.f1623a = i;
    }

    /* renamed from: b */
    public boolean m1528b() {
        return this.f1623a != 0;
    }
}
