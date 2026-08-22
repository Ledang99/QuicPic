package com.alensw.p023b.p034k;

import android.util.Log;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/* renamed from: com.alensw.b.k.b */
/* loaded from: classes.dex */
class RejectedExecutionHandlerC0731b implements RejectedExecutionHandler {

    /* renamed from: a */
    final /* synthetic */ C0730a f2770a;

    RejectedExecutionHandlerC0731b(C0730a c0730a) {
        this.f2770a = c0730a;
    }

    @Override // java.util.concurrent.RejectedExecutionHandler
    public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        if (threadPoolExecutor.isShutdown()) {
            return;
        }
        try {
            Runnable poll = threadPoolExecutor.getQueue().poll();
            this.f2770a.mo2169a(poll);
            threadPoolExecutor.execute(runnable);
            Log.w("AsyncExecutor", "discard: " + poll + " -> " + runnable);
        } catch (Throwable th) {
            Log.e("AsyncExecutor", "discard " + runnable, th);
        }
    }
}
