package com.alensw.p022a;

import com.alensw.p023b.p024a.C0645a;

/* renamed from: com.alensw.a.be */
/* loaded from: classes.dex */
class C0617be {

    /* renamed from: a */
    private C0645a f2385a;

    private C0617be() {
        this.f2385a = new C0645a(128);
    }

    /* renamed from: a */
    public int m2316a() {
        return this.f2385a.m2516a();
    }

    /* renamed from: a */
    public void m2317a(String str, int i, long j, byte[] bArr) {
        switch (i) {
            case 1:
                C0618bf c0618bf = (C0618bf) this.f2385a.m2521b(str);
                if (c0618bf != null) {
                    c0618bf.f2386a = i;
                    c0618bf.f2388c = bArr;
                    return;
                }
                break;
            case 2:
                C0618bf c0618bf2 = (C0618bf) this.f2385a.m2521b(str);
                if (c0618bf2 != null) {
                    if (c0618bf2.f2386a != 1) {
                        c0618bf2.f2386a = i;
                    }
                    c0618bf2.f2387b = j;
                    return;
                }
                break;
            case 3:
                this.f2385a.m2523c(str);
                break;
            case 5:
                this.f2385a.m2524c();
                break;
        }
        this.f2385a.m2517a(str, new C0618bf(str, i, j, bArr));
        synchronized (this) {
            notify();
        }
    }

    /* renamed from: a */
    public byte[] m2318a(String str) {
        byte[] bArr;
        C0618bf c0618bf = (C0618bf) this.f2385a.m2521b(str);
        if (c0618bf == null) {
            return null;
        }
        if (c0618bf.f2388c != null) {
            return c0618bf.f2388c;
        }
        bArr = C0615bc.f2370p;
        return bArr;
    }

    /* renamed from: b */
    public C0618bf m2319b() {
        return (C0618bf) this.f2385a.m2520b();
    }
}
