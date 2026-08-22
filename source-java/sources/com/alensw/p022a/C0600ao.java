package com.alensw.p022a;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.util.FloatMath;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.bean.UriFile;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p024a.C0650f;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p031h.C0715k;
import com.alensw.p023b.p031h.C0718n;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0733d;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.alensw.a.ao */
/* loaded from: classes.dex */
public class C0600ao {

    /* renamed from: b */
    protected int f2289b;

    /* renamed from: c */
    private int f2290c;

    /* renamed from: d */
    private int f2291d;

    /* renamed from: e */
    private int f2292e;

    /* renamed from: f */
    private int f2293f;

    /* renamed from: g */
    private int f2294g;

    /* renamed from: h */
    private final Context f2295h;

    /* renamed from: i */
    private final ContentResolver f2296i;

    /* renamed from: p */
    private C0714j f2303p;

    /* renamed from: r */
    private Bitmap f2305r;

    /* renamed from: a */
    public boolean f2288a = true;

    /* renamed from: k */
    private final C0730a f2298k = new C0730a(3, 4, 8, 5);

    /* renamed from: l */
    private final C0730a f2299l = new C0730a(1, 1, 8, 7);

    /* renamed from: m */
    private final ConcurrentLinkedQueue f2300m = new ConcurrentLinkedQueue();

    /* renamed from: n */
    private final C0645a f2301n = new C0645a(3);

    /* renamed from: o */
    private final C0645a f2302o = new C0601ap(this, 3);

    /* renamed from: q */
    private final Object f2304q = new Object();

    /* renamed from: s */
    private final ConcurrentHashMap f2306s = new ConcurrentHashMap(8);

    /* renamed from: j */
    private final C0650f f2297j = new C0650f();

    public C0600ao(Context context) {
        this.f2295h = context;
        this.f2296i = context.getContentResolver();
        this.f2297j.m2534a(0L);
        this.f2289b = QuickApp.f2063f * QuickApp.f2064g;
        int i = QuickApp.f2063f;
        this.f2290c = i > 320 ? i <= 480 ? 480 : i <= 960 ? 512 : Math.min(i / 2, 1024) : 320;
        this.f2291d = this.f2290c * ((this.f2290c * 3) / 4);
        this.f2292e = (this.f2291d * 9) / 8;
        this.f2293f = Math.max(QuickApp.f2063f, QuickApp.f2064g);
        this.f2294g = (this.f2289b * 9) / 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Bitmap m2194a(Bitmap bitmap, int i, int i2) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth() * bitmap.getHeight();
        if (width <= i2) {
            return bitmap;
        }
        float sqrt = FloatMath.sqrt(i / width);
        float round = Math.round(r1 * sqrt) / 4096.0f;
        float round2 = Math.round(r2 * sqrt) / 4096.0f;
        if (round > 1.0f || round2 > 1.0f) {
            sqrt /= Math.max(round, round2);
        }
        Bitmap m2775a = C0706b.m2775a(bitmap, sqrt);
        if (m2775a == null) {
            return bitmap;
        }
        bitmap.recycle();
        return m2775a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Bitmap m2195a(Uri uri, String str, long j, C0705a c0705a, int i) {
        File m2533a = this.f2297j.m2533a(str != null ? "file://" + str : uri.toString(), j);
        if (m2533a == null || c0705a.mCancel) {
            return null;
        }
        return m2198a(m2533a.getPath(), c0705a, i);
    }

    /* renamed from: a */
    private static Bitmap m2198a(String str, C0705a c0705a, int i) {
        Bitmap bitmap;
        Bitmap bitmap2;
        try {
            C0662f m2591a = C0662f.m2591a(new File(str), true);
            c0705a.m2768b();
            bitmap2 = BitmapFactory.decodeFileDescriptor(m2591a.m2595b(), null, c0705a);
            try {
                m2591a.m2601h();
            } catch (FileNotFoundException e) {
            } catch (Throwable th) {
                bitmap = bitmap2;
                th = th;
                Log.e("PictureLoader", "load thumbnail: " + str, th);
                bitmap2 = bitmap;
            }
        } catch (FileNotFoundException e2) {
            bitmap2 = null;
        } catch (Throwable th2) {
            th = th2;
            bitmap = null;
        }
        if (bitmap2 == null || i <= 0 || c0705a.outWidth * c0705a.outHeight >= i) {
            return bitmap2;
        }
        bitmap2.recycle();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2200a(Uri uri, String str, long j) {
        C0606au c0606au = new C0606au(this, null);
        if (this.f2306s.putIfAbsent(uri, c0606au) != null) {
            Log.w("PictureLoader", "saving thumbnail: " + uri);
        } else {
            this.f2299l.m2936a(new C0603ar(this, uri, c0606au, str, j));
        }
    }

    /* renamed from: a */
    public static boolean m2203a(C0715k c0715k) {
        if (!C0718n.f2723a || c0715k == null) {
            return false;
        }
        int i = c0715k.f2708a * c0715k.f2709b;
        if ("image/jpeg".equals(c0715k.f2719o)) {
            return c0715k.f2713i && i > 1228800;
        }
        if ("image/png".equals(c0715k.f2719o)) {
            return i > 4096000;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static boolean m2206b(String str, C0714j c0714j) {
        boolean z;
        Throwable th;
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
            z = c0714j.m2848d().compress(c0714j.m2853i() && "image/png".equals(c0714j.f2706h) ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 80, bufferedOutputStream);
            try {
                bufferedOutputStream.close();
                fileOutputStream.close();
            } catch (Throwable th2) {
                th = th2;
                Log.e("PictureLoader", "save thumbnail: " + str + ", " + th);
                return z;
            }
        } catch (Throwable th3) {
            z = false;
            th = th3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public boolean m2209d(Uri uri) {
        C0606au c0606au = (C0606au) this.f2306s.get(uri);
        return c0606au != null && c0606au.f2329a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public synchronized boolean m2211e() {
        boolean m2540a;
        synchronized (this) {
            m2540a = this.f2297j.m2544d() ? true : this.f2297j.m2540a(this.f2295h, C0658b.m2568b(this.f2295h, "preview"), "preview", 1);
        }
        return m2540a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m2213f() {
        synchronized (this.f2304q) {
            if (this.f2305r == null) {
                this.f2305r = C0706b.m2773a(this.f2289b / 16, 32, Bitmap.Config.ARGB_8888);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m2214g() {
        synchronized (this.f2304q) {
            if (this.f2305r != null) {
                this.f2305r.recycle();
                this.f2305r = null;
            }
        }
    }

    /* renamed from: a */
    public C0604as m2223a(Uri uri, char c, int i, Handler handler) {
        return m2224a(UriFile.m3072a(c, uri, null), i, handler);
    }

    /* renamed from: a */
    public C0604as m2224a(CommonFile commonFile, int i, Handler handler) {
        C0604as c0604as = new C0604as(this, new C0605at(this, commonFile, i, handler));
        this.f2298k.m2935a((C0733d) c0604as);
        return c0604as;
    }

    /* renamed from: a */
    public C0714j m2225a(Uri uri) {
        C0714j c0714j = (C0714j) this.f2302o.m2521b(uri);
        if (c0714j != null) {
            return c0714j.mo2865l();
        }
        return null;
    }

    /* renamed from: a */
    public void m2226a() {
        if (this.f2297j.m2544d()) {
            this.f2299l.submit(new RunnableC0602aq(this));
        }
    }

    /* renamed from: a */
    public void m2227a(Uri uri, boolean z) {
        this.f2302o.m2523c(uri);
        this.f2301n.m2523c(uri);
        if (z && m2211e()) {
            this.f2297j.m2543c(uri.toString());
        }
    }

    /* renamed from: a */
    public void m2228a(C0714j c0714j) {
        this.f2302o.m2517a(c0714j.f2707i, c0714j.mo2865l());
    }

    /* renamed from: a */
    public void m2229a(Runnable runnable) {
        this.f2298k.execute(runnable);
    }

    /* renamed from: b */
    public C0715k m2230b(Uri uri) {
        return (C0715k) this.f2301n.m2521b(uri);
    }

    /* renamed from: b */
    public void m2231b() {
        this.f2302o.m2524c();
        this.f2301n.m2524c();
    }

    /* renamed from: b */
    public void m2232b(C0714j c0714j) {
        if (c0714j != null) {
            c0714j.mo2865l();
        }
        if (this.f2303p != null) {
            this.f2303p.m2866m();
        }
        this.f2303p = c0714j;
    }

    /* renamed from: c */
    public void m2233c() {
        QuickApp.f2076s.m2289b();
        if (m2211e()) {
            this.f2297j.m2545e();
        }
    }

    /* renamed from: c */
    public boolean m2234c(Uri uri) {
        return this.f2302o.m2521b(uri) != null;
    }

    /* renamed from: d */
    public C0714j m2235d() {
        C0714j c0714j = this.f2303p;
        this.f2303p = null;
        return c0714j;
    }
}
