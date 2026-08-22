package com.alensw.p023b.p024a;

import android.util.Log;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.b.a.a */
/* loaded from: classes.dex */
public class C0645a {

    /* renamed from: a */
    private int f2502a;

    /* renamed from: b */
    private final ConcurrentHashMap f2503b;

    /* renamed from: c */
    private final C0648d f2504c;

    public C0645a(int i) {
        this.f2502a = i;
        this.f2503b = new ConcurrentHashMap(i <= 0 ? 256 : i);
        this.f2504c = new C0648d(this);
    }

    /* renamed from: a */
    public final int m2516a() {
        return this.f2503b.size();
    }

    /* renamed from: a */
    public AbstractC0647c m2517a(Object obj, AbstractC0647c abstractC0647c) {
        AbstractC0647c m2527b;
        boolean z;
        abstractC0647c.f2505e = obj;
        synchronized (this.f2504c) {
            this.f2504c.m2526a(abstractC0647c);
        }
        AbstractC0647c abstractC0647c2 = (AbstractC0647c) this.f2503b.put(obj, abstractC0647c);
        if (abstractC0647c2 != null) {
            synchronized (this.f2504c) {
                this.f2504c.m2528b(abstractC0647c2);
            }
            abstractC0647c2.f2505e = null;
            mo2082a(abstractC0647c2);
            return abstractC0647c2;
        }
        synchronized (this.f2504c) {
            m2527b = this.f2504c.m2527b();
            z = m2527b != null && this.f2503b.size() > this.f2502a;
            if (z) {
                this.f2504c.m2528b(m2527b);
            }
        }
        if (z) {
            this.f2503b.remove(m2527b.f2505e);
            m2527b.f2505e = null;
            mo2082a(m2527b);
        }
        return null;
    }

    /* renamed from: a */
    public void m2518a(int i) {
        this.f2502a = i;
    }

    /* renamed from: a */
    protected void mo2082a(AbstractC0647c abstractC0647c) {
    }

    /* renamed from: a */
    public final boolean m2519a(Object obj) {
        return this.f2503b.containsKey(obj);
    }

    /* renamed from: b */
    public AbstractC0647c m2520b() {
        AbstractC0647c m2527b;
        synchronized (this.f2504c) {
            m2527b = this.f2504c.m2527b();
            if (m2527b != null) {
                this.f2504c.m2528b(m2527b);
            }
        }
        if (m2527b == null) {
            return null;
        }
        this.f2503b.remove(m2527b.f2505e);
        m2527b.f2505e = null;
        mo2082a(m2527b);
        return m2527b;
    }

    /* renamed from: b */
    public final AbstractC0647c m2521b(Object obj) {
        AbstractC0647c abstractC0647c = (AbstractC0647c) this.f2503b.get(obj);
        if (abstractC0647c == null) {
            return null;
        }
        synchronized (this.f2504c) {
            if (this.f2504c.m2528b(abstractC0647c)) {
                this.f2504c.m2526a(abstractC0647c);
            } else {
                Log.i("ConcurrentLruHashMap", "entry was unlinked: " + abstractC0647c);
            }
        }
        return abstractC0647c;
    }

    /* renamed from: b */
    public void m2522b(int i) {
        int size = this.f2503b.size() - i;
        while (true) {
            int i2 = size - 1;
            if (size <= 0) {
                return;
            }
            if (m2520b() == null) {
                Log.v("ConcurrentLruHashMap", "eldest is null!");
                return;
            }
            size = i2;
        }
    }

    /* renamed from: c */
    public AbstractC0647c m2523c(Object obj) {
        AbstractC0647c abstractC0647c = (AbstractC0647c) this.f2503b.remove(obj);
        if (abstractC0647c == null) {
            return null;
        }
        synchronized (this.f2504c) {
            this.f2504c.m2528b(abstractC0647c);
        }
        abstractC0647c.f2505e = null;
        mo2082a(abstractC0647c);
        return abstractC0647c;
    }

    /* renamed from: c */
    public void m2524c() {
        this.f2503b.clear();
        synchronized (this.f2504c) {
            this.f2504c.m2525a();
        }
    }
}
