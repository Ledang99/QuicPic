package com.alensw.p023b.p032i;

import android.util.Log;

/* renamed from: com.alensw.b.i.b */
/* loaded from: classes.dex */
public class C0723b {

    /* renamed from: a */
    private final int[] f2751a;

    /* renamed from: b */
    private int f2752b;

    /* renamed from: c */
    private int f2753c;

    /* renamed from: d */
    private int f2754d;

    public C0723b(int i) {
        this.f2751a = new int[i];
    }

    /* renamed from: a */
    public void m2900a() {
        this.f2754d = 0;
        this.f2753c = 0;
        this.f2752b = 0;
    }

    /* renamed from: a */
    public boolean m2901a(int i) {
        int i2 = this.f2753c;
        for (int i3 = 0; i3 < this.f2752b; i3++) {
            if (this.f2751a[i2] == i) {
                return true;
            }
            i2++;
            if (i2 >= this.f2751a.length) {
                i2 = 0;
            }
        }
        return false;
    }

    /* renamed from: b */
    public int m2902b() {
        if (this.f2752b <= 0) {
            Log.e("IntQueue", "empty!");
            return 0;
        }
        int i = this.f2751a[this.f2753c];
        this.f2751a[this.f2753c] = 0;
        this.f2753c = (this.f2753c + 1) % this.f2751a.length;
        this.f2752b--;
        return i;
    }

    /* renamed from: b */
    public void m2903b(int i) {
        if (this.f2752b >= this.f2751a.length) {
            Log.e("IntQueue", "full!");
            return;
        }
        this.f2751a[this.f2754d] = i;
        this.f2754d = (this.f2754d + 1) % this.f2751a.length;
        this.f2752b++;
    }

    /* renamed from: c */
    public final int m2904c() {
        return this.f2752b;
    }
}
