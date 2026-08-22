package com.alensw.p023b.p032i;

import android.util.Log;

/* renamed from: com.alensw.b.i.c */
/* loaded from: classes.dex */
public class C0724c {

    /* renamed from: a */
    private final Object[] f2755a;

    /* renamed from: b */
    private int f2756b;

    public C0724c(int i) {
        this.f2755a = new Object[i];
    }

    /* renamed from: c */
    private boolean m2905c(Object obj) {
        for (int i = 0; i < this.f2756b; i++) {
            if (this.f2755a[i] == obj) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public Object m2906a() {
        if (this.f2756b <= 0) {
            return null;
        }
        int i = this.f2756b - 1;
        Object obj = this.f2755a[i];
        this.f2755a[i] = null;
        this.f2756b--;
        return obj;
    }

    /* renamed from: a */
    protected void mo2897a(Object obj) {
    }

    /* renamed from: b */
    public void mo2899b(Object obj) {
        if (m2905c(obj)) {
            mo2897a(obj);
            Log.e("Pool", "already in pool" + obj);
        } else {
            if (this.f2756b >= this.f2755a.length) {
                mo2897a(obj);
                return;
            }
            Object[] objArr = this.f2755a;
            int i = this.f2756b;
            this.f2756b = i + 1;
            objArr[i] = obj;
        }
    }
}
