package com.alensw.p022a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import com.alensw.bean.CommonFolder;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.util.Set;

/* renamed from: com.alensw.a.av */
/* loaded from: classes.dex */
public class C0607av implements InterfaceCallableC0740k {

    /* renamed from: a */
    private String f2331a = "QueryCursorTask";

    /* renamed from: b */
    private final boolean f2332b;

    /* renamed from: c */
    private final Set f2333c;

    /* renamed from: d */
    private final boolean f2334d;

    /* renamed from: e */
    private final boolean f2335e;

    /* renamed from: f */
    private final String f2336f;

    /* renamed from: g */
    private final InterfaceC0611az f2337g;

    /* renamed from: h */
    private final CommonFolder f2338h;

    /* renamed from: i */
    private final ContentResolver f2339i;

    /* renamed from: j */
    private final Handler f2340j;

    /* renamed from: k */
    private volatile boolean f2341k;

    public C0607av(ContentResolver contentResolver, CommonFolder commonFolder, boolean z, Set set, Handler handler, InterfaceC0611az interfaceC0611az) {
        this.f2332b = z;
        this.f2333c = set;
        int c = commonFolder.m3015c();
        this.f2334d = (268435456 & c) == 0;
        this.f2335e = (536870912 & c) == 0;
        this.f2339i = contentResolver;
        this.f2340j = handler;
        this.f2337g = interfaceC0611az;
        this.f2338h = commonFolder.mo3028a(false);
        int m3044l = commonFolder.m3044l();
        if (this.f2334d && m3044l == 3) {
            this.f2336f = "datetaken ASC";
        } else if (this.f2334d && m3044l == 1) {
            this.f2336f = "datetaken DESC";
        } else {
            this.f2336f = null;
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f2341k = true;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        boolean z;
        Object[] mo3034a = this.f2335e ? this.f2338h.mo3034a(this.f2339i) : null;
        Cursor mo3026a = this.f2338h.mo3026a(this.f2339i, this.f2336f);
        if (mo3026a != null) {
            if (!this.f2341k) {
                Bundle extras = mo3026a.getExtras();
                boolean z2 = extras != null && extras.getBoolean("loading");
                if (z2) {
                    this.f2339i.registerContentObserver(Build.VERSION.SDK_INT >= 19 ? mo3026a.getNotificationUri() : this.f2338h.mo3049q(), false, new C0608aw(this, this.f2340j, mo3034a));
                }
                if (this.f2332b) {
                    this.f2338h.mo3031a(mo3026a, this.f2333c);
                } else {
                    this.f2338h.mo3039b(mo3026a, this.f2333c);
                }
                mo3026a.close();
                z = z2;
            }
            return null;
        }
        z = false;
        if (!this.f2341k) {
            if (this.f2334d && !this.f2338h.m3045m()) {
                this.f2338h.m3051s();
            }
            if (!this.f2341k) {
                this.f2340j.post(new RunnableC0610ay(this, mo3026a, z));
            }
        }
        return null;
    }
}
