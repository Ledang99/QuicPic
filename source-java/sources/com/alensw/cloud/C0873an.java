package com.alensw.cloud;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.bean.UriFile;
import com.alensw.cloud.p036a.AbstractC0808bv;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p033j.InterfaceC0729e;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.cloud.an */
/* loaded from: classes.dex */
class C0873an implements InterfaceC0678e, InterfaceCallableC0740k {

    /* renamed from: a */
    protected final C0863ad f3158a;

    /* renamed from: b */
    protected final int f3159b;

    /* renamed from: c */
    protected long f3160c;

    /* renamed from: d */
    final /* synthetic */ C0871al f3161d;

    public C0873an(C0871al c0871al, C0863ad c0863ad, int i) {
        this.f3161d = c0871al;
        this.f3158a = c0863ad;
        this.f3159b = i;
    }

    /* renamed from: a */
    private void m3308a(InterfaceC0729e interfaceC0729e) {
        try {
            File file = new File(this.f3158a.f3137a.getPath());
            File createTempFile = File.createTempFile("qpic_download", "tmp", file.getParentFile());
            if (mo2081b_()) {
                throw new C0674a();
            }
            String m2916b = C0725a.m2916b(this.f3158a.f3138b);
            interfaceC0729e.mo1963a(m2916b, createTempFile.getPath(), this);
            File m2969a = C0742b.m2969a(file, (String) null);
            C0742b.m2995b(createTempFile, m2969a.getName());
            Log.d("UrlTaskManager", "download: " + m2916b + " -> " + m2969a.getName());
            m3309a(C0690c.m2724b(m2969a.getName()));
            QuickApp.f2076s.m2294f(m2969a.getPath());
        } catch (Exception e) {
            if (0 != 0) {
                C0742b.m2999c((File) null);
            }
            throw e;
        }
    }

    /* renamed from: a */
    private void m3309a(String str) {
        Context context;
        int i;
        if (str == null) {
            str = "unknown";
        }
        int indexOf = str.indexOf(47);
        context = this.f3161d.f3152d;
        Context applicationContext = context.getApplicationContext();
        i = this.f3161d.f3151c;
        EnumC0689b enumC0689b = i == 1 ? EnumC0689b.DownloadFile : EnumC0689b.UploadFile;
        if (indexOf > 0) {
            str = str.substring(0, indexOf);
        }
        C0688a.m2715a(applicationContext, enumC0689b, str);
    }

    /* renamed from: b */
    private void m3310b(InterfaceC0729e interfaceC0729e) {
        ContentResolver contentResolver;
        String str;
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = null;
        try {
            contentResolver = this.f3161d.f3153e;
            ParcelFileDescriptor m2588a = C0662f.m2588a(contentResolver, this.f3158a.f3137a, true);
            if (mo2081b_()) {
                throw new C0674a();
            }
            CommonFile m3074a = UriFile.m3074a(this.f3158a.f3137a);
            String m3008g = C0742b.m3008g(m3074a.m3012a());
            String m3014b = m3074a.m3014b();
            if (m3008g == null || m3008g.length() == 0) {
                m3008g = AbstractC0808bv.m3241h();
            }
            if (C0690c.m2721a(m3008g) == 0) {
                if (m3014b == null || m3014b.length() == 0) {
                    C0705a c0705a = new C0705a();
                    if (C0706b.m2783b(new C0662f(this.f3158a.f3137a, m2588a), c0705a)) {
                        m3014b = c0705a.outMimeType;
                    }
                }
                str = C0690c.m2723a(m3008g, m3014b);
            } else {
                str = m3008g;
            }
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream2 = new ParcelFileDescriptor.AutoCloseInputStream(m2588a);
            try {
                if (mo2081b_()) {
                    throw new C0674a();
                }
                m3309a(m3014b);
                C0682i c0682i = new C0682i();
                c0682i.f2574a = m3074a.m3016d();
                c0682i.f2575b = m3074a.m3017e() * 1000;
                c0682i.f2576c = m3074a.m3014b();
                c0682i.f2578e = autoCloseInputStream2;
                Log.d("UrlTaskManager", "upload: " + m3074a.m3012a() + " -> " + interfaceC0729e.mo1966b(C0725a.m2916b(this.f3158a.f3138b), str, c0682i, this));
                C0675b.m2665a(autoCloseInputStream2);
            } catch (Throwable th) {
                th = th;
                autoCloseInputStream = autoCloseInputStream2;
                C0675b.m2665a(autoCloseInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f3158a.f3140d = 2;
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0678e
    /* renamed from: a */
    public void mo2683a(long j, long j2) {
        Handler handler;
        Handler handler2;
        int i;
        int i2 = j2 > 0 ? (int) ((100 * j) / j2) : 0;
        if (this.f3158a.f3139c != i2) {
            this.f3158a.f3139c = i2;
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis > this.f3160c + 30) {
                this.f3160c = currentTimeMillis;
                handler = this.f3161d.f3154f;
                handler.removeMessages(3, this.f3158a);
                handler2 = this.f3161d.f3154f;
                i = this.f3161d.f3151c;
                handler2.obtainMessage(3, i, 0, this.f3158a).sendToTarget();
            }
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        ConcurrentHashMap concurrentHashMap;
        C0864ae c0864ae;
        Handler handler;
        int i;
        if (this.f3158a.f3140d == 2 || this.f3158a.f3140d == 3) {
            concurrentHashMap = this.f3161d.f3156h;
            concurrentHashMap.remove(this.f3158a);
            c0864ae = this.f3161d.f3155g;
            c0864ae.m2583c(this.f3158a);
        }
        handler = this.f3161d.f3154f;
        i = this.f3161d.f3151c;
        handler.obtainMessage(2, i, 0, this.f3158a).sendToTarget();
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0679f
    /* renamed from: b_ */
    public boolean mo2081b_() {
        return this.f3158a.f3140d == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d8  */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void call() {
        int m3294f;
        Handler handler;
        ContentProviderClient contentProviderClient;
        ContentProviderClient contentProviderClient2;
        ContentProviderClient contentProviderClient3;
        ContentResolver contentResolver;
        int i;
        int i2;
        m3294f = this.f3161d.m3294f();
        if (m3294f == 1 || m3294f == this.f3159b) {
            this.f3158a.f3140d = 1;
            handler = this.f3161d.f3154f;
            contentProviderClient = this.f3161d.f3151c;
            handler.obtainMessage(3, contentProviderClient, 0, this.f3158a).sendToTarget();
            try {
                try {
                    contentResolver = this.f3161d.f3153e;
                    contentProviderClient2 = contentResolver.acquireContentProviderClient(this.f3158a.f3138b);
                    try {
                        InterfaceC0729e interfaceC0729e = (InterfaceC0729e) contentProviderClient2.getLocalContentProvider();
                        i = this.f3161d.f3151c;
                        if (i == 1) {
                            m3308a(interfaceC0729e);
                        } else {
                            i2 = this.f3161d.f3151c;
                            if (i2 == 2) {
                                m3310b(interfaceC0729e);
                            }
                        }
                        if (this.f3158a.f3140d == 1) {
                            this.f3158a.f3140d = 3;
                        }
                        if (contentProviderClient2 != null) {
                            contentProviderClient2.release();
                        }
                    } catch (C0674a e) {
                        contentProviderClient3 = contentProviderClient2;
                        try {
                            Log.e("UrlTaskManager", "task cancel: " + this.f3158a);
                            if (contentProviderClient3 != null) {
                                contentProviderClient3.release();
                            }
                            return null;
                        } catch (Throwable th) {
                            contentProviderClient = contentProviderClient3;
                            th = th;
                            if (contentProviderClient != 0) {
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (this.f3158a.f3140d == 1) {
                            this.f3158a.f3140d = 4;
                        }
                        Log.e("UrlTaskManager", "task failed: " + this.f3158a, th);
                        if (contentProviderClient2 != null) {
                            contentProviderClient2.release();
                        }
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (contentProviderClient != 0) {
                        contentProviderClient.release();
                    }
                    throw th;
                }
            } catch (C0674a e2) {
                contentProviderClient3 = null;
            } catch (Throwable th4) {
                th = th4;
                contentProviderClient = 0;
                if (contentProviderClient != 0) {
                }
                throw th;
            }
        } else {
            this.f3158a.f3140d = 4;
            Log.w("UrlTaskManager", "task network changed: " + m3294f);
        }
        return null;
    }
}
