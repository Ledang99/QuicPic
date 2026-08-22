package com.alensw.p023b.p027d;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.alensw.p023b.p034k.C0730a;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.alensw.b.d.f */
/* loaded from: classes.dex */
public class C0670f {

    /* renamed from: b */
    private static C0670f f2550b;

    /* renamed from: c */
    private static final C0730a f2551c = new C0730a(2, 4, Integer.MAX_VALUE, 10);

    /* renamed from: f */
    private final C0669e f2555f;

    /* renamed from: j */
    private int f2559j;

    /* renamed from: a */
    private Handler f2552a = new Handler(Looper.getMainLooper());

    /* renamed from: g */
    private final C0668d f2556g = new C0668d();

    /* renamed from: h */
    private final ConcurrentHashMap f2557h = new ConcurrentHashMap(256);

    /* renamed from: i */
    private final ConcurrentHashMap f2558i = new ConcurrentHashMap(256);

    /* renamed from: k */
    private final AtomicReference f2560k = new AtomicReference();

    /* renamed from: d */
    private final C0665a f2553d = new C0665a();

    /* renamed from: e */
    private final C0666b f2554e = new C0666b();

    private C0670f(Context context) {
        this.f2555f = new C0669e(context);
    }

    /* renamed from: a */
    public static long m2631a(float f, float f2) {
        return (long) ((((((int) ((f + 90.0f) * 500.0f)) / 500.0f) * 2.0f * 90.0f) + (((int) ((180.0f + f2) * 1000.0f)) / 1000.0f)) * 6378137.0f);
    }

    /* renamed from: a */
    public static synchronized C0670f m2633a(Context context) {
        C0670f c0670f;
        synchronized (C0670f.class) {
            if (f2550b == null) {
                f2550b = new C0670f(context);
            }
            if (!f2550b.f2556g.m2552a()) {
                f2550b.f2556g.m2628a(context);
            }
            c0670f = f2550b;
        }
        return c0670f;
    }

    /* renamed from: a */
    public static String m2634a(String str) {
        return str != null ? str.replace("自治", "") : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2635a() {
        Runnable runnable = (Runnable) this.f2560k.getAndSet(null);
        if (runnable != null) {
            this.f2552a.post(runnable);
        }
    }

    /* renamed from: b */
    public static boolean m2637b(float f, float f2) {
        return f >= 3.86f && f <= 53.55f && f2 >= 73.66f && f2 <= 135.05f && (f < 21.88f || f > 25.3f || f2 < 120.13f || f2 > 122.02f);
    }

    /* renamed from: f */
    static /* synthetic */ int m2641f(C0670f c0670f) {
        int i = c0670f.f2559j;
        c0670f.f2559j = i + 1;
        return i;
    }

    /* renamed from: a */
    public String m2646a(float f, float f2, long j) {
        if (f < -90.0f || f > 90.0f || f2 < -180.0f || f2 > 180.0f) {
            return null;
        }
        if (j == 0) {
            j = m2631a(f, f2);
        }
        String str = (String) this.f2557h.get(Long.valueOf(j));
        if (str != null) {
            return str;
        }
        String str2 = (String) this.f2556g.m2548a(j);
        if (str2 == null) {
            return str2;
        }
        this.f2557h.put(Long.valueOf(j), str2);
        return str2;
    }

    /* renamed from: a */
    public void m2647a(Runnable runnable) {
        if (this.f2560k.compareAndSet(null, runnable)) {
            this.f2559j = 0;
        }
    }

    /* renamed from: a */
    public boolean m2648a(float f, float f2, long j, InterfaceC0671g interfaceC0671g) {
        if (f < -90.0f || f > 90.0f || f2 < -180.0f || f2 > 180.0f) {
            return false;
        }
        long m2631a = j == 0 ? m2631a(f, f2) : j;
        RunnableC0672h runnableC0672h = new RunnableC0672h(this, f, f2, m2631a, interfaceC0671g);
        if (this.f2558i.putIfAbsent(Long.valueOf(m2631a), runnableC0672h) == null) {
            f2551c.execute(runnableC0672h);
        }
        return true;
    }
}
