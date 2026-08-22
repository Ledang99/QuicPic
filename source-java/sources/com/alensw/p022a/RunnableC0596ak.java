package com.alensw.p022a;

import android.content.ContentResolver;
import android.graphics.Paint;
import android.net.Uri;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p038ui.p042d.C1297g;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.alensw.a.ak */
/* loaded from: classes.dex */
class RunnableC0596ak implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0593ah f2269a;

    /* renamed from: b */
    private final boolean f2270b;

    /* renamed from: c */
    private final C0622d f2271c;

    /* renamed from: d */
    private final CommonFile f2272d;

    /* renamed from: e */
    private final InterfaceC0595aj f2273e;

    /* renamed from: f */
    private C0705a f2274f;

    /* renamed from: g */
    private Uri f2275g;

    public RunnableC0596ak(C0593ah c0593ah, C0622d c0622d, boolean z, InterfaceC0595aj interfaceC0595aj) {
        this.f2269a = c0593ah;
        this.f2270b = z;
        this.f2271c = c0622d;
        this.f2272d = null;
        this.f2273e = interfaceC0595aj;
    }

    public RunnableC0596ak(C0593ah c0593ah, CommonFile commonFile, boolean z, InterfaceC0595aj interfaceC0595aj) {
        this.f2269a = c0593ah;
        this.f2270b = z;
        this.f2272d = commonFile;
        this.f2271c = null;
        this.f2273e = interfaceC0595aj;
    }

    /* renamed from: a */
    private C0662f m2171a(File file, Uri uri, int i) {
        ContentResolver contentResolver;
        ContentResolver contentResolver2;
        if (file != null) {
            try {
                return C0662f.m2591a(file, true);
            } catch (FileNotFoundException e) {
            } catch (Throwable th) {
                return null;
            }
        }
        try {
            if (!C0725a.m2924d(uri)) {
                contentResolver = this.f2269a.f2266f;
                return C0662f.m2590a(contentResolver, uri);
            }
            synchronized (this) {
                this.f2275g = uri;
            }
            contentResolver2 = this.f2269a.f2266f;
            return new C0662f(uri, C0725a.m2911a(contentResolver2, uri, i));
        } catch (C0674a e2) {
            return null;
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: a */
    protected void m2172a() {
        Uri uri;
        File file;
        char c;
        Paint paint;
        C0712h m2840a;
        C0615bc c0615bc = QuickApp.f2075r;
        C0705a c0705a = this.f2274f;
        long j = 0;
        if (this.f2271c != null) {
            File file2 = new File(this.f2271c.f2403a, this.f2271c.f2404b);
            c = this.f2271c.f2405c;
            j = this.f2271c.f2406d > 0 ? this.f2271c.f2406d : JniUtils.fuGetFileTime(file2.getPath());
            file = file2;
            uri = null;
        } else if (this.f2272d != null) {
            String mo3022j = this.f2272d.mo3022j();
            File file3 = mo3022j != null ? new File(mo3022j) : null;
            Uri mo3021i = this.f2272d.mo3021i();
            c = this.f2272d.m3020h();
            j = this.f2272d.m3017e();
            uri = mo3021i;
            file = file3;
        } else {
            uri = null;
            file = null;
            c = 0;
        }
        if (file == null && uri == null) {
            return;
        }
        c0705a.f2665c = 0;
        c0705a.inPreferredConfig = C0615bc.f2368a;
        C0712h m2307a = file != null ? c0615bc.m2307a(file.getPath(), j, c0705a) : null;
        if (m2307a == null && uri != null && !c0705a.mCancel) {
            m2307a = c0615bc.m2305a(uri, j, c0705a);
        }
        if (m2307a != null) {
            if (this.f2270b && m2307a.m2851g() <= c0615bc.f2373d && m2307a.m2852h() <= c0615bc.f2374e) {
                m2307a.m2866m();
                m2307a = null;
            } else if (!this.f2270b && ((m2307a.m2851g() >= c0615bc.f2375f || m2307a.m2852h() >= c0615bc.f2376g) && (m2840a = m2307a.m2840a(c0615bc.f2373d, c0615bc.f2374e, c0615bc.f2371b, C0615bc.f2368a)) != null)) {
                m2307a.m2866m();
                m2307a = m2840a;
            }
        }
        if (m2307a == null && !c0705a.mCancel) {
            int i = this.f2270b ? c0615bc.f2375f : c0615bc.f2373d;
            int i2 = this.f2270b ? c0615bc.f2376g : c0615bc.f2374e;
            C0662f m2171a = m2171a(file, uri, (i * 4) / 3);
            if (m2171a != null) {
                m2307a = c0615bc.m2306a(m2171a, (uri == null || !C0725a.m2924d(uri)) ? c : 'I', i, i2, j, c0705a);
                m2171a.m2601h();
            }
        }
        if (m2307a != null) {
            if (!c0705a.mCancel) {
                if (c == 'V') {
                    C1297g m2164a = this.f2269a.m2164a();
                    int i3 = this.f2270b ? c0615bc.f2375f : c0615bc.f2373d;
                    int i4 = this.f2270b ? c0615bc.f2376g : c0615bc.f2374e;
                    paint = this.f2269a.f2265e;
                    m2307a.m2841a(i3, i4, 0.33333334f, m2164a, paint);
                    this.f2269a.m2167a(m2164a);
                }
                this.f2273e.mo2170a(m2173b(), m2307a);
            }
            m2307a.m2866m();
        }
    }

    /* renamed from: b */
    public Object m2173b() {
        return this.f2271c != null ? this.f2271c : this.f2272d;
    }

    /* renamed from: c */
    public void m2174c() {
        Uri uri;
        C0705a c0705a;
        ContentResolver contentResolver;
        synchronized (this) {
            uri = this.f2275g;
            c0705a = this.f2274f;
        }
        if (uri != null) {
            try {
                contentResolver = this.f2269a.f2266f;
                C0725a.m2912a(contentResolver, this.f2272d.mo3021i());
            } catch (Throwable th) {
            }
        }
        if (c0705a != null) {
            c0705a.requestCancelDecode();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RunnableC0596ak) {
            RunnableC0596ak runnableC0596ak = (RunnableC0596ak) obj;
            if (this.f2271c != null) {
                return this.f2271c.equals(runnableC0596ak.f2271c);
            }
            if (this.f2272d != null) {
                return this.f2272d.equals(runnableC0596ak.f2272d);
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f2271c != null ? this.f2271c.hashCode() : this.f2272d != null ? this.f2272d.hashCode() : super.hashCode();
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        ConcurrentLinkedQueue concurrentLinkedQueue2;
        C0705a m2765e = C0705a.m2765e();
        synchronized (this) {
            this.f2274f = m2765e;
        }
        concurrentLinkedQueue = this.f2269a.f2264d;
        concurrentLinkedQueue.add(this);
        m2172a();
        concurrentLinkedQueue2 = this.f2269a.f2264d;
        concurrentLinkedQueue2.remove(this);
        synchronized (this) {
            this.f2274f = null;
        }
        C0705a.m2764a(m2765e);
    }

    public String toString() {
        return "Name=" + (this.f2271c != null ? this.f2271c.f2404b : this.f2272d != null ? this.f2272d.m3012a() : null);
    }
}
