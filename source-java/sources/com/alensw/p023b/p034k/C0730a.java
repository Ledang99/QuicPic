package com.alensw.p023b.p034k;

import android.os.Build;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.alensw.b.k.a */
/* loaded from: classes.dex */
public class C0730a extends ThreadPoolExecutor {

    /* renamed from: b */
    public static final boolean f2768b;

    /* renamed from: c */
    public static final int f2769c;

    static {
        f2768b = Build.VERSION.SDK_INT >= 11;
        f2769c = Math.max(Runtime.getRuntime().availableProcessors(), f2768b ? 2 : 1);
    }

    public C0730a(int i, int i2, int i3, int i4) {
        super(i, i2, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(i3), new ThreadFactoryC0738i(i4));
        super.setRejectedExecutionHandler(new RejectedExecutionHandlerC0731b(this));
    }

    /* renamed from: a */
    public static C0730a m2934a(int i, int i2) {
        return new C0730a(i, i, Integer.MAX_VALUE, i2);
    }

    /* renamed from: a */
    public C0733d m2935a(C0733d c0733d) {
        try {
            super.execute(c0733d);
        } catch (Throwable th) {
            Log.e("AsyncExecutor", "execute", th);
        }
        return c0733d;
    }

    /* renamed from: a */
    public C0733d m2936a(InterfaceCallableC0740k interfaceCallableC0740k) {
        return m2935a(new C0733d(interfaceCallableC0740k));
    }

    /* renamed from: a */
    public void m2937a() {
        try {
            BlockingQueue<Runnable> queue = getQueue();
            while (true) {
                Runnable poll = queue.poll();
                if (poll == null) {
                    return;
                } else {
                    mo2169a(poll);
                }
            }
        } catch (Throwable th) {
            Log.e("AsyncExecutor", "clear", th);
        }
    }

    /* renamed from: a */
    protected void mo2169a(Runnable runnable) {
        if (runnable instanceof Future) {
            ((Future) runnable).cancel(false);
        }
    }
}
