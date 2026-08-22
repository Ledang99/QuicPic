package com.alensw.p023b.p031h;

import android.util.Log;
import com.alensw.p023b.p024a.AbstractC0647c;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.b.h.l */
/* loaded from: classes.dex */
public abstract class AbstractC0716l extends AbstractC0647c {

    /* renamed from: a */
    private final AtomicInteger f2720a = new AtomicInteger(1);

    /* renamed from: a */
    protected void mo2421a() {
    }

    /* renamed from: l */
    public Object mo2865l() {
        this.f2720a.incrementAndGet();
        return this;
    }

    /* renamed from: m */
    public int m2866m() {
        int decrementAndGet = this.f2720a.decrementAndGet();
        if (decrementAndGet == 0) {
            mo2421a();
        } else if (decrementAndGet < 0) {
            Log.e("RefObject", "error release: " + decrementAndGet + ", " + this);
        }
        return decrementAndGet;
    }

    /* renamed from: n */
    protected int m2867n() {
        return this.f2720a.get();
    }
}
