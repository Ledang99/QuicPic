package com.alensw.p023b.p024a;

import android.util.Log;

/* renamed from: com.alensw.b.a.d */
/* loaded from: classes.dex */
class C0648d {

    /* renamed from: a */
    final /* synthetic */ C0645a f2508a;

    /* renamed from: b */
    private final AbstractC0647c f2509b;

    private C0648d(C0645a c0645a) {
        this.f2508a = c0645a;
        this.f2509b = new C0649e(this);
    }

    /* renamed from: a */
    public void m2525a() {
        AbstractC0647c abstractC0647c = this.f2509b;
        AbstractC0647c abstractC0647c2 = abstractC0647c.f2507g;
        while (true) {
            if (abstractC0647c2 != abstractC0647c) {
                if (abstractC0647c2 == null) {
                    Log.v("ConcurrentLruHashMap", "entry is null!");
                    break;
                }
                AbstractC0647c abstractC0647c3 = abstractC0647c2.f2507g;
                abstractC0647c2.f2506f = null;
                abstractC0647c2.f2507g = null;
                abstractC0647c2.f2505e = null;
                this.f2508a.mo2082a(abstractC0647c2);
                abstractC0647c2 = abstractC0647c3;
            } else {
                break;
            }
        }
        abstractC0647c.f2506f = abstractC0647c;
        abstractC0647c.f2507g = abstractC0647c;
    }

    /* renamed from: a */
    public void m2526a(AbstractC0647c abstractC0647c) {
        AbstractC0647c abstractC0647c2 = this.f2509b;
        AbstractC0647c abstractC0647c3 = abstractC0647c2.f2506f;
        abstractC0647c.f2507g = abstractC0647c2;
        abstractC0647c.f2506f = abstractC0647c3;
        abstractC0647c2.f2506f = abstractC0647c;
        abstractC0647c3.f2507g = abstractC0647c;
    }

    /* renamed from: b */
    public AbstractC0647c m2527b() {
        AbstractC0647c abstractC0647c = this.f2509b.f2507g;
        if (abstractC0647c != this.f2509b) {
            return abstractC0647c;
        }
        return null;
    }

    /* renamed from: b */
    public boolean m2528b(AbstractC0647c abstractC0647c) {
        boolean z = (abstractC0647c.f2506f == null || abstractC0647c.f2507g == null) ? false : true;
        if (z) {
            abstractC0647c.f2506f.f2507g = abstractC0647c.f2507g;
            abstractC0647c.f2507g.f2506f = abstractC0647c.f2506f;
        }
        abstractC0647c.f2506f = null;
        abstractC0647c.f2507g = null;
        return z;
    }
}
