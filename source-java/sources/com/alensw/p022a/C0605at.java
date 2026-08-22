package com.alensw.p022a;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import com.alensw.bean.CommonFile;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p031h.C0708d;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p031h.C0715k;
import com.alensw.p023b.p031h.C0718n;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.alensw.a.at */
/* loaded from: classes.dex */
class C0605at implements InterfaceCallableC0740k {

    /* renamed from: a */
    public final CommonFile f2316a;

    /* renamed from: b */
    public final int f2317b;

    /* renamed from: c */
    final /* synthetic */ C0600ao f2318c;

    /* renamed from: d */
    private final Handler f2319d;

    /* renamed from: e */
    private final Uri f2320e;

    /* renamed from: f */
    private final String f2321f;

    /* renamed from: g */
    private boolean f2322g;

    /* renamed from: h */
    private long f2323h;

    /* renamed from: i */
    private C0705a f2324i;

    /* renamed from: j */
    private C0707c f2325j;

    /* renamed from: k */
    private final AtomicReference f2326k = new AtomicReference();

    /* renamed from: l */
    private final AtomicInteger f2327l = new AtomicInteger(1);

    /* renamed from: m */
    private boolean f2328m = false;

    public C0605at(C0600ao c0600ao, CommonFile commonFile, int i, Handler handler) {
        this.f2318c = c0600ao;
        this.f2316a = commonFile;
        this.f2317b = i;
        this.f2319d = handler;
        String mo3022j = this.f2316a.mo3022j();
        this.f2320e = this.f2316a.mo3021i();
        this.f2321f = mo3022j == null ? C0662f.m2592a(this.f2320e) ? this.f2320e.getPath() : null : mo3022j;
    }

    /* renamed from: a */
    private C0714j m2241a(C0662f c0662f, Uri uri) {
        C0645a c0645a;
        C0645a c0645a2;
        int i;
        int min;
        Bitmap bitmap;
        boolean z;
        Bitmap bitmap2;
        boolean z2;
        int i2;
        int i3;
        Bitmap m2194a;
        int i4;
        int i5;
        boolean m2209d;
        Bitmap m2195a;
        int i6;
        int i7;
        c0645a = this.f2318c.f2302o;
        C0714j c0714j = (C0714j) c0645a.m2521b(uri);
        if (c0714j != null) {
            return c0714j.mo2865l();
        }
        c0645a2 = this.f2318c.f2302o;
        c0645a2.m2522b(2);
        this.f2318c.m2211e();
        this.f2318c.m2214g();
        char m3020h = this.f2316a.m3020h();
        boolean z3 = m3020h == 'V';
        String str = this.f2321f;
        C0705a c0705a = this.f2324i;
        String str2 = c0705a.outMimeType;
        int i8 = c0705a.f2665c;
        int i9 = c0705a.outWidth;
        int i10 = c0705a.outHeight;
        if (z3) {
            min = 0;
        } else {
            i = this.f2318c.f2291d;
            min = Math.min(i9 * i10, (i * 2) / 3);
        }
        Bitmap bitmap3 = null;
        boolean z4 = false;
        if (!z3) {
            i6 = this.f2318c.f2291d;
            if (i6 <= 196608 && this.f2325j.m2797b() && !c0705a.mCancel) {
                C0707c c0707c = this.f2325j;
                i7 = this.f2318c.f2291d;
                bitmap3 = C0706b.m2780a(c0707c, i7, c0705a);
            }
        }
        if (this.f2318c.f2288a && bitmap3 == null) {
            m2209d = this.f2318c.m2209d(uri);
            if (m2209d || c0705a.mCancel) {
                z4 = m2209d;
                bitmap = bitmap3;
            } else {
                m2195a = this.f2318c.m2195a(uri, str, this.f2323h, c0705a, min);
                z4 = m2209d;
                bitmap = m2195a;
            }
        } else {
            bitmap = bitmap3;
        }
        c0705a.outWidth = i9;
        c0705a.outHeight = i10;
        c0705a.f2665c = i8;
        c0705a.outMimeType = str2;
        if (bitmap != null || c0705a.mCancel) {
            z = false;
            bitmap2 = bitmap;
            z2 = false;
        } else {
            z = true;
            m2243a((C0714j) this.f2326k.get());
            if (m3020h == 'I') {
                i5 = this.f2318c.f2290c;
                bitmap2 = C0706b.m2779a(c0662f, false, i5, c0705a);
                z2 = c0705a.inSampleSize > 1 || "image/gif".equals(c0705a.outMimeType);
            } else {
                if (m3020h == 'D' || m3020h == 0) {
                    i4 = this.f2318c.f2290c;
                    bitmap2 = C0706b.m2779a(c0662f, false, i4, c0705a);
                } else {
                    bitmap2 = bitmap;
                }
                if (bitmap2 == null) {
                    bitmap2 = C0706b.m2776a(c0662f);
                }
                z2 = true;
            }
        }
        if (bitmap2 == null) {
            return null;
        }
        C0600ao c0600ao = this.f2318c;
        i2 = this.f2318c.f2291d;
        i3 = this.f2318c.f2292e;
        m2194a = c0600ao.m2194a(bitmap2, i2, i3);
        boolean z5 = z2 | (m2194a != bitmap2);
        C0714j c0714j2 = new C0714j(m2194a, z3 ? 4 : (!z || z5) ? 1 : 2, uri, c0705a);
        this.f2318c.m2228a(c0714j2);
        m2243a(c0714j2);
        if (this.f2318c.f2288a && z && z5 && !z4) {
            this.f2318c.m2200a(uri, str, this.f2323h);
        }
        return c0714j2;
    }

    /* renamed from: a */
    private void m2243a(C0714j c0714j) {
        if (this.f2319d == null || c0714j == null) {
            return;
        }
        this.f2319d.obtainMessage(30, 0, 0, c0714j.mo2865l()).sendToTarget();
    }

    /* renamed from: a */
    private void m2244a(boolean z) {
        C0714j c0714j = (C0714j) this.f2326k.getAndSet((!z || this.f2324i.outWidth == 0 || this.f2324i.outHeight == 0) ? null : new C0714j(this.f2316a.mo3021i(), this.f2324i));
        if (c0714j != null) {
            c0714j.m2866m();
        }
    }

    /* renamed from: b */
    private C0714j m2245b(C0662f c0662f, Uri uri) {
        int i;
        int i2;
        Bitmap m2194a;
        C0705a c0705a = this.f2324i;
        C0708d m2816a = (!"image/gif".equals(c0705a.outMimeType) || c0705a.mCancel) ? null : C0708d.m2816a(c0662f, uri, this.f2319d);
        if (m2816a != null) {
            m2816a.f2698b.f2702d = c0705a.f2665c;
            if (c0705a.mCancel) {
                return m2816a;
            }
            m2243a(m2816a);
            return m2816a;
        }
        if (c0705a.mCancel) {
            return null;
        }
        this.f2318c.m2213f();
        i = this.f2318c.f2293f;
        Bitmap m2779a = C0706b.m2779a(c0662f, false, i, c0705a);
        this.f2318c.m2214g();
        if (m2779a == null) {
            return null;
        }
        C0600ao c0600ao = this.f2318c;
        int i3 = this.f2318c.f2289b;
        i2 = this.f2318c.f2294g;
        m2194a = c0600ao.m2194a(m2779a, i3, i2);
        C0714j c0714j = new C0714j(m2194a, 1, uri, c0705a);
        m2243a(c0714j);
        return c0714j;
    }

    /* renamed from: c */
    private C0714j m2246c(C0662f c0662f, Uri uri) {
        Bitmap bitmap;
        C0705a c0705a = this.f2324i;
        C0714j m2816a = (!this.f2322g || c0705a.mCancel) ? (!"image/gif".equals(c0705a.outMimeType) || c0705a.mCancel) ? null : C0708d.m2816a(c0662f, uri, this.f2319d) : C0718n.m2876a(c0662f, uri, c0705a.outMimeType, this.f2319d);
        if (m2816a != null) {
            m2816a.f2698b.f2702d = c0705a.f2665c;
            if (c0705a.mCancel) {
                return m2816a;
            }
            m2243a(m2816a);
            return m2816a;
        }
        if (c0705a.mCancel) {
            return null;
        }
        this.f2318c.m2213f();
        Bitmap m2777a = C0706b.m2777a(c0662f, 0, c0705a);
        if (m2777a == null && !c0705a.mCancel && c0705a.m2770d()) {
            c0705a.m2767a(false);
            m2777a = C0706b.m2777a(c0662f, 3145728, c0705a);
        }
        this.f2318c.m2214g();
        if (m2777a == null || !c0705a.mCancel) {
            bitmap = m2777a;
        } else {
            m2777a.recycle();
            bitmap = null;
        }
        if (bitmap == null) {
            return null;
        }
        C0714j c0714j = new C0714j(bitmap, 2, uri, c0705a);
        m2243a(c0714j);
        return c0714j;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x008e -> B:10:0x0013). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00ab -> B:10:0x0013). Please report as a decompilation issue!!! */
    /* renamed from: g */
    private C0662f m2247g() {
        ContentResolver contentResolver;
        ContentResolver contentResolver2;
        int i;
        C0662f c0662f = null;
        if (this.f2321f != null) {
            try {
                return C0662f.m2591a(new File(this.f2321f), true);
            } catch (FileNotFoundException e) {
                Log.w("PictureLoader", "open failed: " + this.f2320e);
            } catch (Throwable th) {
                C0705a c0705a = this.f2324i;
                this.f2324i.outHeight = -1;
                c0705a.outWidth = -1;
                Log.e("PictureLoader", "open failed: " + this.f2320e, th);
                return null;
            }
        }
        try {
            if (this.f2316a.m3020h() == 'V' && C0725a.m2920c(this.f2320e)) {
                Uri uri = this.f2320e;
                contentResolver2 = this.f2318c.f2296i;
                Uri uri2 = this.f2320e;
                i = this.f2318c.f2290c;
                c0662f = new C0662f(uri, C0725a.m2911a(contentResolver2, uri2, i));
            } else {
                contentResolver = this.f2318c.f2296i;
                c0662f = C0662f.m2590a(contentResolver, this.f2320e);
            }
        } catch (C0674a e2) {
            Log.w("PictureLoader", "open cancelled: " + this.f2320e);
        } catch (Throwable th2) {
            C0705a c0705a2 = this.f2324i;
            this.f2324i.outHeight = -1;
            c0705a2.outWidth = -1;
            m2244a(true);
            Log.e("PictureLoader", "open failed: " + this.f2320e, th2);
        }
        return c0662f;
    }

    /* renamed from: h */
    private C0662f m2248h() {
        C0645a c0645a;
        C0645a c0645a2;
        C0705a c0705a = this.f2324i;
        c0645a = this.f2318c.f2301n;
        C0715k c0715k = (C0715k) c0645a.m2521b(this.f2320e);
        boolean z = c0715k != null;
        if (c0715k != null) {
            c0705a.outWidth = c0715k.f2708a;
            c0705a.outHeight = c0715k.f2709b;
            c0705a.f2664b = c0715k.f2710c;
            c0705a.f2665c = c0715k.f2711d;
            c0705a.f2666d = c0715k.f2713i;
            c0705a.outMimeType = c0715k.f2719o;
            m2244a(true);
        } else {
            c0715k = new C0715k();
            c0705a.f2665c = 360;
        }
        C0662f m2247g = m2247g();
        if (m2247g == null) {
            return null;
        }
        this.f2325j = new C0707c();
        this.f2323h = this.f2316a.m3017e();
        if (this.f2323h == 0 && this.f2321f != null) {
            this.f2323h = m2247g.m2599f() / 1000;
        }
        if (this.f2316a.m3020h() == 'I') {
            if (c0705a.f2665c == 360 && !c0705a.mCancel) {
                if (this.f2325j.m2798b(m2247g, true)) {
                    this.f2325j.m2793a(c0715k, this.f2323h * 1000);
                    c0705a.outWidth = c0715k.f2708a;
                    c0705a.outHeight = c0715k.f2709b;
                    c0705a.f2664b = c0715k.f2710c;
                    c0705a.f2665c = c0715k.f2711d;
                    c0705a.f2666d = c0715k.f2713i;
                    c0705a.outMimeType = c0715k.f2719o;
                    m2244a(true);
                } else {
                    c0705a.f2665c = 0;
                }
            }
            if ((c0705a.outWidth <= 0 || c0705a.outHeight <= 0) && !c0705a.mCancel) {
                if (!C0706b.m2783b(m2247g, c0705a)) {
                    c0705a.outHeight = -1;
                    c0705a.outWidth = -1;
                    m2244a(true);
                    return null;
                }
                c0715k.f2708a = c0705a.outWidth;
                c0715k.f2709b = c0705a.outHeight;
                c0715k.f2711d = 0;
                c0715k.f2713i = "image/jpeg".equals(c0705a.outMimeType) || "image/png".equals(c0705a.outMimeType);
                c0715k.f2719o = c0705a.outMimeType;
                m2244a(true);
            }
        } else {
            c0705a.outWidth = 512;
            c0705a.outHeight = 384;
            c0705a.f2665c = 0;
            m2244a(true);
        }
        if (!z) {
            c0645a2 = this.f2318c.f2301n;
            c0645a2.m2517a(this.f2320e, c0715k);
        }
        if (this.f2317b == 3 || this.f2317b == 4) {
            this.f2322g = C0600ao.m2203a(c0715k);
        }
        if (this.f2317b == 4) {
            c0705a.m2767a(true);
        }
        return m2247g;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        ContentResolver contentResolver;
        if (this.f2321f == null && C0725a.m2920c(this.f2320e)) {
            try {
                contentResolver = this.f2318c.f2296i;
                C0725a.m2912a(contentResolver, this.f2320e);
            } catch (Throwable th) {
            }
        }
        synchronized (this) {
            if (this.f2324i != null) {
                this.f2324i.requestCancelDecode();
            }
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        m2251e();
    }

    /* renamed from: c */
    public void m2249c() {
        if (this.f2328m) {
            m2244a(false);
        }
    }

    /* renamed from: d */
    public int m2250d() {
        return this.f2327l.incrementAndGet();
    }

    /* renamed from: e */
    public int m2251e() {
        int decrementAndGet = this.f2327l.decrementAndGet();
        if (decrementAndGet == 0) {
            m2249c();
        }
        return decrementAndGet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0605at)) {
            return false;
        }
        C0605at c0605at = (C0605at) obj;
        return this.f2317b == c0605at.f2317b && this.f2319d == c0605at.f2319d && this.f2316a.equals(c0605at.f2316a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0014, code lost:
    
        if (r0.contains(r7) != false) goto L8;
     */
    @Override // java.util.concurrent.Callable
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void call() {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        ConcurrentLinkedQueue concurrentLinkedQueue2;
        ConcurrentLinkedQueue concurrentLinkedQueue3;
        boolean z = this.f2317b < 3;
        if (z) {
            concurrentLinkedQueue3 = this.f2318c.f2300m;
        }
        m2250d();
        if (z) {
            concurrentLinkedQueue2 = this.f2318c.f2300m;
            concurrentLinkedQueue2.add(this);
        }
        synchronized (this) {
            this.f2324i = C0705a.m2765e();
        }
        Uri uri = this.f2320e;
        C0662f m2248h = m2248h();
        if (m2248h == null) {
            if (!this.f2324i.mCancel) {
                m2243a((C0714j) this.f2326k.get());
            }
        } else if (!this.f2324i.mCancel) {
            C0714j m2241a = (this.f2317b <= 1 || this.f2316a.m3020h() == 'V') ? m2241a(m2248h, uri) : this.f2317b == 2 ? m2245b(m2248h, uri) : m2246c(m2248h, uri);
            if (m2241a != null) {
                m2241a.m2866m();
                this.f2328m = true;
            }
        }
        if (this.f2325j != null) {
            this.f2325j.m2792a();
        }
        this.f2325j = null;
        if (m2248h != null) {
            m2248h.m2601h();
        }
        synchronized (this) {
            C0705a.m2764a(this.f2324i);
            this.f2324i = null;
        }
        if (z) {
            concurrentLinkedQueue = this.f2318c.f2300m;
            concurrentLinkedQueue.remove(this);
        }
        m2251e();
        return null;
    }

    public int hashCode() {
        return this.f2316a.hashCode() + this.f2317b;
    }

    public String toString() {
        return "uri=" + this.f2316a.m3012a() + ", req=" + this.f2317b;
    }
}
