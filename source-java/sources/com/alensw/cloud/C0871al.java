package com.alensw.cloud;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.preference.PreferenceManager;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p023b.p035l.C0742b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Future;

/* renamed from: com.alensw.cloud.al */
/* loaded from: classes.dex */
public class C0871al {

    /* renamed from: a */
    protected static final int f3149a = C0730a.f2769c;

    /* renamed from: b */
    protected static final C0730a f3150b = new C0730a(f3149a, f3149a, Integer.MAX_VALUE, 5);

    /* renamed from: c */
    private int f3151c;

    /* renamed from: d */
    private Context f3152d;

    /* renamed from: e */
    private ContentResolver f3153e;

    /* renamed from: f */
    private Handler f3154f;

    /* renamed from: g */
    private final C0864ae f3155g = new C0864ae();

    /* renamed from: h */
    private final ConcurrentHashMap f3156h = new ConcurrentHashMap(128);

    /* renamed from: i */
    private final CopyOnWriteArraySet f3157i = new CopyOnWriteArraySet();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public int m3294f() {
        return C0675b.m2650a(this.f3152d);
    }

    /* renamed from: a */
    public void m3297a() {
        boolean z = false;
        for (C0863ad c0863ad : this.f3156h.keySet()) {
            Future future = (Future) this.f3156h.remove(c0863ad);
            if (future != null) {
                future.cancel(false);
            }
            z = this.f3155g.m2583c(c0863ad) | z;
        }
        f3150b.purge();
        if (z) {
            this.f3154f.obtainMessage(4, this.f3151c, 0).sendToTarget();
        }
        m3307e();
    }

    /* renamed from: a */
    public void m3298a(int i, Context context, Handler handler) {
        this.f3151c = i;
        this.f3152d = context;
        this.f3153e = context.getContentResolver();
        this.f3154f = handler;
        if (this.f3155g.m3283a(context, i == 1 ? "download_tasks.bin" : "upload_tasks.bin")) {
            ArrayList arrayList = new ArrayList(this.f3155g.m2582c());
            int m3294f = m3294f();
            Iterator it = this.f3155g.iterator();
            while (it.hasNext()) {
                C0863ad c0863ad = (C0863ad) it.next();
                C0733d c0733d = new C0733d(new C0873an(this, c0863ad, m3294f));
                c0863ad.f3140d = 4;
                if (this.f3156h.putIfAbsent(c0863ad, c0733d) == null) {
                    arrayList.add(c0863ad);
                }
            }
            this.f3155g.m2585e();
            this.f3155g.m2577a((Collection) arrayList);
        }
    }

    /* renamed from: a */
    public void m3299a(C0863ad c0863ad) {
        C0733d c0733d = new C0733d(new C0873an(this, c0863ad, m3294f()));
        if (((C0733d) this.f3156h.putIfAbsent(c0863ad, c0733d)) == null) {
            this.f3155g.m2580b(c0863ad);
        } else if (c0863ad.f3140d != 4) {
            return;
        } else {
            c0863ad.f3140d = 0;
        }
        c0863ad.f3140d = 0;
        this.f3154f.obtainMessage(1, this.f3151c, 0, c0863ad).sendToTarget();
        f3150b.m2935a(c0733d);
    }

    /* renamed from: a */
    public void m3300a(InterfaceC0872am interfaceC0872am) {
        if (interfaceC0872am == null || !this.f3157i.add(interfaceC0872am)) {
            return;
        }
        this.f3154f.obtainMessage(4, this.f3151c, 0).sendToTarget();
    }

    /* renamed from: b */
    public int m3301b() {
        int i = 0;
        Iterator it = this.f3155g.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            C0863ad c0863ad = (C0863ad) it.next();
            i = (c0863ad.f3140d == 1 || c0863ad.f3140d == 0) ? i2 + 1 : i2;
        }
    }

    /* renamed from: b */
    public void m3302b(C0863ad c0863ad) {
        Future future = (Future) this.f3156h.remove(c0863ad);
        if (future != null) {
            future.cancel(false);
            f3150b.purge();
        }
        if (this.f3155g.m2583c(c0863ad)) {
            this.f3154f.obtainMessage(4, this.f3151c, 0).sendToTarget();
        }
    }

    /* renamed from: b */
    public void m3303b(InterfaceC0872am interfaceC0872am) {
        this.f3157i.remove(interfaceC0872am);
    }

    /* renamed from: c */
    public int m3304c() {
        return this.f3155g.m2582c();
    }

    /* renamed from: c */
    public void m3305c(C0863ad c0863ad) {
        Iterator it = this.f3157i.iterator();
        while (it.hasNext()) {
            ((InterfaceC0872am) it.next()).mo3284a(c0863ad);
        }
    }

    /* renamed from: d */
    public void m3306d() {
        List d = this.f3155g.m2584d();
        Iterator it = this.f3157i.iterator();
        while (it.hasNext()) {
            ((InterfaceC0872am) it.next()).mo3285a(d);
        }
    }

    /* renamed from: e */
    public void m3307e() {
        if (this.f3155g.m2586f()) {
            this.f3155g.m2587g();
        }
        int c = this.f3155g.m2582c();
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.f3152d).edit();
        String str = this.f3151c == 1 ? "failed_download_tasks" : "failed_upload_tasks";
        if (c > 0) {
            edit.putInt(str, c);
        } else {
            edit.remove(str);
        }
        C0742b.m2978a(edit);
    }
}
