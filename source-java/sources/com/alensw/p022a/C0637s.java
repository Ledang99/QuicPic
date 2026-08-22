package com.alensw.p022a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p026c.C0660d;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.alensw.a.s */
/* loaded from: classes.dex */
public class C0637s {

    /* renamed from: a */
    public static final String[] f2449a = {"Android/data/com.facebook.orca/files/stickers", "clockworkmod/blobs", "Pictures/cache", "autonavi/mini_mapv3", "BaiduMap/vmp", "taobao/wvcache"};

    /* renamed from: d */
    private static final C0730a f2450d = new C0730a(2, 2, Integer.MAX_VALUE, 3);

    /* renamed from: e */
    private static final C0730a f2451e = new C0730a(2, 2, Integer.MAX_VALUE, 3);

    /* renamed from: b */
    public boolean f2452b;

    /* renamed from: f */
    private final Context f2454f;

    /* renamed from: j */
    private final File f2458j;

    /* renamed from: k */
    private final File f2459k;

    /* renamed from: l */
    private final String f2460l;

    /* renamed from: o */
    private C0639u f2463o;

    /* renamed from: c */
    public int f2453c = 0;

    /* renamed from: h */
    private final C0612b f2456h = new C0612b(2048);

    /* renamed from: i */
    private final C0612b f2457i = new C0612b(2048);

    /* renamed from: m */
    private final C0660d f2461m = new C0660d(4096);

    /* renamed from: n */
    private String f2462n = "";

    /* renamed from: g */
    private final C0597al f2455g = new C0597al();

    public C0637s(Context context) {
        this.f2454f = context;
        this.f2458j = C0658b.m2564a(context, "folder_cache");
        this.f2459k = C0658b.m2564a(context, "folder_cache2");
        this.f2460l = C0658b.m2568b(context, "others_").getPath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m2437a(C0597al c0597al, C0623e c0623e, boolean z, boolean z2) {
        HashMap hashMap;
        int i;
        Integer num;
        String path = c0623e.getPath();
        if (z2 && c0623e.f2424h != null && (num = (Integer) this.f2461m.m2610b(path)) != null) {
            if (num.intValue() == c0623e.f2421e && c0623e.f2421e != 0) {
                return 0;
            }
            this.f2461m.m2614c(path);
        }
        int i2 = c0623e.f2424h != null ? 1 : 0;
        if (z) {
            i2 |= 8;
        }
        int m2378d = c0623e.m2378d();
        boolean z3 = (m2378d == 2 || m2378d == 4) ? false : true;
        boolean z4 = C0623e.f2409a || c0623e.m2384f();
        boolean z5 = m2378d == 7 || m2378d == 8;
        if (z3) {
            r2 = z4 ? f2450d.submit(new CallableC0638t(this, z5, path)) : null;
            if (!z4 || !C0598am.m2183d(path)) {
                i2 |= 240;
            }
        }
        if (c0597al.m2180b(c0623e, i2) < 0) {
            return 0;
        }
        ArrayList arrayList = c0623e.f2425i;
        ArrayList arrayList2 = c0623e.f2424h;
        int size = arrayList.size();
        if (size <= 8 && arrayList2 != null) {
            int i3 = size - 1;
            while (i3 >= 0) {
                if (C0690c.m2725c(((C0622d) arrayList.get(i3)).f2404b)) {
                    arrayList.remove(i3);
                    i = size - 1;
                } else {
                    i = size;
                }
                i3--;
                size = i;
            }
        }
        if (z2 && size == 0 && c0623e.f2421e != 0 && arrayList2 != null && arrayList2.size() == 0) {
            if (this.f2461m.m2613c() < 4096) {
                this.f2461m.m2606a(path, Integer.valueOf(c0623e.f2421e));
            }
        } else if (size > 0) {
            this.f2461m.m2614c(path);
        }
        if (z3 && z4 && size > 0) {
            try {
                hashMap = (HashMap) r2.get();
            } catch (Throwable th) {
                th.printStackTrace();
                hashMap = null;
            }
            HashMap hashMap2 = hashMap == null ? new HashMap() : hashMap;
            String m3006e = C0742b.m3006e(path);
            if (z5) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    C0622d c0622d = (C0622d) it.next();
                    long[] jArr = (long[]) hashMap2.get(c0622d.f2404b);
                    if (jArr != null) {
                        c0622d.f2408f = jArr[0];
                    } else if (c0622d.f2408f == 0) {
                        c0622d.f2408f = JniUtils.fuGetFileSize(m3006e + c0622d.f2404b);
                    }
                }
            } else {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    C0622d c0622d2 = (C0622d) it2.next();
                    long[] jArr2 = (long[]) hashMap2.get(c0622d2.f2404b);
                    if (jArr2 != null) {
                        c0622d2.f2406d = (int) jArr2[0];
                        c0622d2.f2407e = (int) (jArr2[1] / 1000);
                        if (c0622d2.f2407e == 0) {
                            c0622d2.f2407e = c0622d2.f2406d;
                        }
                    } else if (c0622d2.f2406d == 0) {
                        int fuGetFileTime = JniUtils.fuGetFileTime(m3006e + c0622d2.f2404b);
                        c0622d2.f2406d = fuGetFileTime;
                        c0622d2.f2407e = fuGetFileTime;
                    }
                }
            }
            hashMap2.clear();
        }
        c0623e.m2392l();
        return size;
    }

    /* renamed from: a */
    public int m2448a(C0623e c0623e, boolean z) {
        if (c0623e.f2424h != null) {
            c0623e.f2424h.clear();
        } else {
            c0623e.f2424h = new ArrayList(128);
        }
        int m2177a = this.f2455g.m2177a(c0623e, z ? 2 : 0);
        if (m2177a < 0) {
            return 0;
        }
        return m2177a;
    }

    /* renamed from: a */
    public void m2449a() {
        if (this.f2463o == null) {
            this.f2463o = new C0639u(this, null);
        }
        this.f2463o.m2950b();
    }

    /* renamed from: a */
    public void m2450a(int i, SharedPreferences sharedPreferences) {
        if (this.f2453c != i) {
            this.f2453c = i;
            this.f2461m.m2615d();
            this.f2462n = C0597al.m2175a((i & 1) != 0, (i & 2) != 0, sharedPreferences);
            this.f2455g.m2178a(this.f2462n);
        }
    }

    /* renamed from: a */
    public void m2451a(int i, Object obj, Handler handler) {
        if (this.f2463o != null) {
            this.f2463o.m2951b(i, 0, 0, obj, handler);
        }
    }

    /* renamed from: b */
    public int m2452b(C0623e c0623e, boolean z) {
        return m2437a(this.f2455g, c0623e, z, false);
    }

    /* renamed from: b */
    public void m2453b() {
        if (this.f2463o != null) {
            this.f2463o.m2952c();
            this.f2463o = null;
        }
    }

    /* renamed from: c */
    public void m2454c() {
        if (this.f2463o != null) {
            this.f2463o.m2949a(true);
        }
    }
}
