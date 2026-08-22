package com.alensw.PicFolder;

import android.R;
import android.app.PendingIntent;
import android.content.Context;
import android.database.Cursor;
import android.os.Looper;
import android.util.Log;
import com.alensw.cloud.C0879e;
import com.alensw.cloud.C0961x;
import com.alensw.cloud.oauth.AbstractC0893ad;
import com.alensw.cloud.oauth.AbstractC0897ah;
import com.alensw.cloud.oauth.ActivityC0907e;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0899aj;
import com.alensw.cloud.oauth.C0904b;
import com.alensw.cloud.p036a.AbstractC0808bv;
import com.alensw.cloud.p036a.C0784ay;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0741a;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.PicFolder.c */
/* loaded from: classes.dex */
class C0561c {

    /* renamed from: h */
    private static final String[] f2165h = {"document_id", "content_url", "thumbnail_url", "last_modified"};

    /* renamed from: a */
    boolean f2166a;

    /* renamed from: b */
    String f2167b;

    /* renamed from: c */
    C0889a f2168c;

    /* renamed from: d */
    C0784ay f2169d;

    /* renamed from: e */
    AbstractC0808bv f2170e;

    /* renamed from: f */
    private final Object f2171f;

    /* renamed from: g */
    private final Object f2172g;

    /* renamed from: i */
    private final ConcurrentHashMap f2173i;

    private C0561c() {
        this.f2171f = new Object();
        this.f2172g = new Object();
        this.f2173i = new ConcurrentHashMap();
    }

    /* synthetic */ C0561c(C0526a c0526a) {
        this();
    }

    /* renamed from: a */
    public C0563e m2086a(String str) {
        C0526a c0526a = null;
        C0563e c0563e = (C0563e) this.f2173i.get(str);
        if (c0563e == null) {
            c0563e = new C0563e(c0526a);
            Cursor m3184a = this.f2169d.m3184a(str, f2165h, (String) null, (String[]) null);
            if (m3184a != null) {
                if (m3184a.moveToFirst()) {
                    c0563e.f2176a = m3184a.getString(1);
                    c0563e.f2177b = m3184a.getString(2);
                    c0563e.f2178c = m3184a.getLong(3);
                }
                m3184a.close();
            }
        }
        return c0563e;
    }

    /* renamed from: a */
    public File m2087a(String str, int i) {
        String m1950d;
        File a2;
        synchronized (this.f2171f) {
            long m3183a = this.f2169d.m3183a(str, "last_modified", 0L);
            C0784ay c0784ay = this.f2169d;
            m1950d = CloudProvider.m1950d(str, i);
            a2 = c0784ay.m2533a(m1950d, m3183a);
        }
        return a2;
    }

    /* renamed from: a */
    public void m2088a(Context context) {
        synchronized (this.f2171f) {
            if (!this.f2166a) {
                this.f2166a = this.f2169d.m3192a(context, this.f2167b, this.f2170e.mo3141a());
            }
        }
    }

    /* renamed from: a */
    public synchronized void m2089a(C0904b c0904b, InterfaceC0679f interfaceC0679f) {
        synchronized (this.f2172g) {
            C0899aj c0899aj = this.f2168c.f3196g;
            C0961x m3314a = C0879e.m3314a(this.f2168c.f3190a);
            if (m3314a == null) {
                throw new RuntimeException("drive is null");
            }
            if (m3314a.f3352e == 1) {
                AbstractC0893ad abstractC0893ad = (AbstractC0893ad) AbstractC0897ah.m3376a(this.f2168c.f3190a);
                C0675b.m2664a(interfaceC0679f);
                abstractC0893ad.mo3372a_(c0899aj, interfaceC0679f);
                this.f2170e.m3242a(c0899aj);
                synchronized (c0904b) {
                    c0904b.m3390a(this.f2168c);
                    c0904b.m2587g();
                }
                Log.i("CloudProvider", "refresh token: " + this.f2167b);
            }
        }
    }

    /* renamed from: b */
    public void m2090b(Context context) {
        synchronized (this.f2171f) {
            if (this.f2166a) {
                this.f2169d.m2542c();
            }
            this.f2169d.m3188a(context, this.f2167b);
        }
    }

    /* renamed from: b */
    public void m2091b(String str) {
        C0526a c0526a = null;
        this.f2173i.clear();
        Cursor m3185a = this.f2169d.m3185a(str, f2165h, (String) null, (String[]) null, (String) null);
        if (m3185a != null) {
            while (m3185a.moveToNext()) {
                C0563e c0563e = new C0563e(c0526a);
                String string = m3185a.getString(0);
                c0563e.f2176a = m3185a.getString(1);
                c0563e.f2177b = m3185a.getString(2);
                c0563e.f2178c = m3185a.getLong(3);
                this.f2173i.put(string, c0563e);
            }
            m3185a.close();
        }
    }

    /* renamed from: c */
    public synchronized void m2092c(Context context) {
        C0961x m3314a = C0879e.m3314a(this.f2168c.f3190a);
        if (m3314a != null && m3314a.f3352e != 0) {
            Context applicationContext = context.getApplicationContext();
            C0741a.m2956a(applicationContext, 100, true, R.drawable.stat_sys_warning, R.drawable.ic_about, R.string.authorization_expired, (CharSequence) applicationContext.getString(R.string.authorize_again), PendingIntent.getActivity(applicationContext, 100, ActivityC0907e.m3394a(applicationContext, new HandlerC0562d(this, Looper.getMainLooper(), applicationContext), this.f2168c), 134217728));
        }
    }
}
