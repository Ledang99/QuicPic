package com.p045c.p046a;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* renamed from: com.c.a.r */
/* loaded from: classes.dex */
public class C1418r {

    /* renamed from: a */
    private static List f5001a = new ArrayList();

    /* renamed from: b */
    private static ExecutorService f5002b = Executors.newSingleThreadExecutor();

    /* renamed from: c */
    private static long f5003c = 5;

    /* renamed from: d */
    private static ScheduledExecutorService f5004d = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: a */
    public static void m4602a() {
        try {
            Iterator it = f5001a.iterator();
            while (it.hasNext()) {
                ScheduledFuture scheduledFuture = (ScheduledFuture) ((WeakReference) it.next()).get();
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                }
            }
            f5001a.clear();
            if (!f5002b.isShutdown()) {
                f5002b.shutdown();
            }
            if (!f5004d.isShutdown()) {
                f5004d.shutdown();
            }
            f5002b.awaitTermination(f5003c, TimeUnit.SECONDS);
            f5004d.awaitTermination(f5003c, TimeUnit.SECONDS);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m4603a(Runnable runnable) {
        if (f5002b.isShutdown()) {
            f5002b = Executors.newSingleThreadExecutor();
        }
        f5002b.execute(runnable);
    }

    /* renamed from: a */
    public static synchronized void m4604a(Runnable runnable, long j) {
        synchronized (C1418r.class) {
            if (f5004d.isShutdown()) {
                f5004d = Executors.newSingleThreadScheduledExecutor();
            }
            f5001a.add(new WeakReference(f5004d.schedule(runnable, j, TimeUnit.MILLISECONDS)));
        }
    }

    /* renamed from: b */
    public static synchronized void m4605b(Runnable runnable) {
        synchronized (C1418r.class) {
            if (f5004d.isShutdown()) {
                f5004d = Executors.newSingleThreadScheduledExecutor();
            }
            f5004d.execute(runnable);
        }
    }
}
