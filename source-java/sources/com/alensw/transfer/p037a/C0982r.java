package com.alensw.transfer.p037a;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.alensw.transfer.a.r */
/* loaded from: classes.dex */
public class C0982r extends ScheduledThreadPoolExecutor {
    public C0982r(int i) {
        super(i);
    }

    /* renamed from: a */
    private Runnable m3610a(Runnable runnable) {
        return new RunnableC0983s(this, runnable);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return super.scheduleAtFixedRate(m3610a(runnable), j, j2, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        return super.scheduleWithFixedDelay(m3610a(runnable), j, j2, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledThreadPoolExecutor, java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future submit(Runnable runnable) {
        return super.submit(m3610a(runnable));
    }
}
