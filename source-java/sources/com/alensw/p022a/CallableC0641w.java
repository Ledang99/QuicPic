package com.alensw.p022a;

import java.util.Stack;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.a.w */
/* loaded from: classes.dex */
class CallableC0641w implements Callable {

    /* renamed from: a */
    final /* synthetic */ boolean f2483a;

    /* renamed from: b */
    final /* synthetic */ C0623e f2484b;

    /* renamed from: c */
    final /* synthetic */ AtomicInteger f2485c;

    /* renamed from: d */
    final /* synthetic */ Stack f2486d;

    /* renamed from: e */
    final /* synthetic */ boolean f2487e;

    /* renamed from: f */
    final /* synthetic */ C0640v f2488f;

    CallableC0641w(C0640v c0640v, boolean z, C0623e c0623e, AtomicInteger atomicInteger, Stack stack, boolean z2) {
        this.f2488f = c0640v;
        this.f2483a = z;
        this.f2484b = c0623e;
        this.f2485c = atomicInteger;
        this.f2486d = stack;
        this.f2487e = z2;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void call() {
        int m2470a;
        C0612b c0612b;
        C0612b c0612b2;
        int m2470a2;
        if (!this.f2483a) {
            m2470a = this.f2488f.m2470a(this.f2484b, true);
            if (this.f2486d != null && this.f2484b.m2389i() > 0) {
                this.f2486d.addAll(this.f2484b.f2424h);
            }
            if (!this.f2487e) {
                this.f2484b.f2424h = null;
            }
            if (m2470a > 0 || this.f2484b.m2389i() > 0) {
                this.f2488f.f2477c.obtainMessage(12, 0, 0, this.f2484b).sendToTarget();
            }
            this.f2485c.incrementAndGet();
        } else if (this.f2484b.m2393m() || (this.f2484b.f2423g != 0 && !this.f2484b.getPath().startsWith(C0623e.f2410b))) {
            String path = this.f2484b.getPath();
            c0612b = this.f2488f.f2480f.f2467a.f2456h;
            c0612b.m2614c(path);
            c0612b2 = this.f2488f.f2480f.f2467a.f2457i;
            c0612b2.m2614c(path);
            C0623e c0623e = new C0623e(path, 0);
            m2470a2 = this.f2488f.m2470a(c0623e, true);
            if (this.f2484b.f2424h == null) {
                c0623e.f2424h = null;
            }
            if (m2470a2 == 0 || c0623e.f2421e != this.f2484b.f2421e) {
                this.f2488f.f2477c.obtainMessage(13, 0, 0, this.f2484b).sendToTarget();
            }
            if (m2470a2 > 0 || this.f2484b.m2389i() > 0) {
                this.f2488f.f2477c.obtainMessage(12, 0, 0, c0623e).sendToTarget();
            }
            this.f2485c.incrementAndGet();
        }
        return null;
    }
}
