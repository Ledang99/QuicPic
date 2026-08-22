package com.alensw.p022a;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Paint;
import com.alensw.bean.CommonFile;
import com.alensw.p023b.p032i.C0724c;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p038ui.p042d.C1297g;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.alensw.a.ah */
/* loaded from: classes.dex */
public class C0593ah {

    /* renamed from: a */
    private static final int f2261a;

    /* renamed from: f */
    private final ContentResolver f2266f;

    /* renamed from: b */
    private final C0730a f2262b = new C0594ai(this, f2261a, f2261a + 2, 256, 5);

    /* renamed from: c */
    private final ConcurrentHashMap f2263c = new ConcurrentHashMap(256);

    /* renamed from: d */
    private final ConcurrentLinkedQueue f2264d = new ConcurrentLinkedQueue();

    /* renamed from: e */
    private final Paint f2265e = new Paint(5);

    /* renamed from: g */
    private final C0724c f2267g = new C0724c(4);

    static {
        f2261a = C0730a.f2769c > 1 ? 2 : 1;
    }

    public C0593ah(Context context) {
        this.f2262b.prestartCoreThread();
        this.f2265e.setColor(-855638017);
        this.f2266f = context.getContentResolver();
    }

    /* renamed from: a */
    protected C1297g m2164a() {
        C1297g c1297g;
        synchronized (this.f2267g) {
            c1297g = (C1297g) this.f2267g.m2906a();
        }
        return c1297g == null ? new C1297g(0) : c1297g;
    }

    /* renamed from: a */
    public void m2165a(C0622d c0622d, boolean z, InterfaceC0595aj interfaceC0595aj) {
        if (c0622d == null || this.f2263c.containsKey(c0622d)) {
            return;
        }
        RunnableC0596ak runnableC0596ak = new RunnableC0596ak(this, c0622d, z, interfaceC0595aj);
        this.f2263c.put(runnableC0596ak.m2173b(), runnableC0596ak);
        this.f2262b.execute(runnableC0596ak);
    }

    /* renamed from: a */
    public void m2166a(CommonFile commonFile, boolean z, InterfaceC0595aj interfaceC0595aj) {
        if (commonFile == null || this.f2263c.containsKey(commonFile)) {
            return;
        }
        RunnableC0596ak runnableC0596ak = new RunnableC0596ak(this, commonFile, z, interfaceC0595aj);
        this.f2263c.put(runnableC0596ak.m2173b(), runnableC0596ak);
        this.f2262b.execute(runnableC0596ak);
    }

    /* renamed from: a */
    protected void m2167a(C1297g c1297g) {
        synchronized (this.f2267g) {
            this.f2267g.mo2899b(c1297g);
        }
    }

    /* renamed from: a */
    public void m2168a(boolean z) {
        this.f2262b.m2937a();
        if (!z) {
            return;
        }
        while (true) {
            RunnableC0596ak runnableC0596ak = (RunnableC0596ak) this.f2264d.poll();
            if (runnableC0596ak == null) {
                return;
            }
            this.f2263c.remove(runnableC0596ak.m2173b());
            runnableC0596ak.m2174c();
        }
    }
}
