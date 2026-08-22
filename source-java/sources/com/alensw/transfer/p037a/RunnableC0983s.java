package com.alensw.transfer.p037a;

import android.util.Log;

/* renamed from: com.alensw.transfer.a.s */
/* loaded from: classes.dex */
class RunnableC0983s implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0982r f3457a;

    /* renamed from: b */
    private final Runnable f3458b;

    public RunnableC0983s(C0982r c0982r, Runnable runnable) {
        this.f3457a = c0982r;
        this.f3458b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3458b.run();
        } catch (Throwable th) {
            Log.e("LogScheduledExecutor", "run error: " + this.f3458b, th);
        }
    }
}
