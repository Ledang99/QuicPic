package com.alensw.p038ui.view;

import java.lang.reflect.Array;

/* renamed from: com.alensw.ui.view.ao */
/* loaded from: classes.dex */
public class C1314ao {

    /* renamed from: c */
    static C1314ao[][] f4538c = (C1314ao[][]) Array.newInstance((Class<?>) C1314ao.class, 3, 3);

    /* renamed from: a */
    int f4539a;

    /* renamed from: b */
    int f4540b;

    static {
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                f4538c[i][i2] = new C1314ao(i, i2);
            }
        }
    }

    private C1314ao(int i, int i2) {
        m4348b(i, i2);
        this.f4539a = i;
        this.f4540b = i2;
    }

    /* renamed from: a */
    public static synchronized C1314ao m4347a(int i, int i2) {
        C1314ao c1314ao;
        synchronized (C1314ao.class) {
            m4348b(i, i2);
            c1314ao = f4538c[i][i2];
        }
        return c1314ao;
    }

    /* renamed from: b */
    private static void m4348b(int i, int i2) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("row must be in range 0-2");
        }
        if (i2 < 0 || i2 > 2) {
            throw new IllegalArgumentException("column must be in range 0-2");
        }
    }

    /* renamed from: a */
    public int m4349a() {
        return this.f4539a;
    }

    /* renamed from: b */
    public int m4350b() {
        return this.f4540b;
    }

    public String toString() {
        return "(row=" + this.f4539a + ",clmn=" + this.f4540b + ")";
    }
}
