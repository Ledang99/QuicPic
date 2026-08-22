package com.alensw.p022a;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p025b.C0655b;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.a.x */
/* loaded from: classes.dex */
public class C0642x {

    /* renamed from: b */
    public static final Comparator f2489b = new C0643y();

    /* renamed from: c */
    public static final Comparator f2490c = new C0644z();

    /* renamed from: d */
    public static final Comparator f2491d = new C0586aa();

    /* renamed from: e */
    public static final Comparator f2492e = new C0587ab();

    /* renamed from: f */
    public static final Comparator f2493f = new C0588ac();

    /* renamed from: g */
    public static final Comparator f2494g = new C0589ad();

    /* renamed from: h */
    public static final Comparator f2495h = new C0590ae();

    /* renamed from: i */
    public static final Comparator f2496i = new C0591af();

    /* renamed from: j */
    public static final Comparator f2497j = new C0592ag();

    /* renamed from: k */
    private int f2499k = m2487a(false, 0, 1);

    /* renamed from: a */
    protected Comparator f2498a = f2491d;

    /* renamed from: l */
    private final ArrayList f2500l = new ArrayList(256);

    /* renamed from: m */
    private final HashSet f2501m = new HashSet(256);

    /* renamed from: a */
    public static final int m2486a(C0623e c0623e, C0623e c0623e2) {
        String path = c0623e.getPath();
        String path2 = c0623e2.getPath();
        if (path.length() == path2.length() && path.equalsIgnoreCase(path2)) {
            return 0;
        }
        return C0655b.f2525a.compare(path, path2);
    }

    /* renamed from: a */
    public static int m2487a(boolean z, int i, int i2) {
        return (z ? 65536 : 0) | (i2 << 8) | i;
    }

    /* renamed from: b */
    public static final int m2488b(C0623e c0623e, C0623e c0623e2) {
        int m2486a = m2486a(c0623e, c0623e2);
        if (m2486a == 0) {
            return m2486a;
        }
        int i = c0623e.f2421e - c0623e2.f2421e;
        if (i == 0) {
            i = m2486a;
        }
        return i;
    }

    /* renamed from: c */
    public static final int m2489c(C0623e c0623e, C0623e c0623e2) {
        int m2486a = m2486a(c0623e, c0623e2);
        if (m2486a == 0) {
            return m2486a;
        }
        int compare = C0655b.f2525a.compare(c0623e.getName(), c0623e2.getName());
        if (compare == 0) {
            compare = m2486a;
        }
        return compare;
    }

    /* renamed from: d */
    public static final int m2490d(C0623e c0623e, C0623e c0623e2) {
        int m2486a = m2486a(c0623e, c0623e2);
        if (m2486a == 0) {
            return m2486a;
        }
        int i = c0623e.m2390j() > 0 ? 0 : 1;
        int i2 = c0623e2.m2390j() <= 0 ? 1 : 0;
        if (i != i2) {
            return i - i2;
        }
        int compare = C0655b.f2525a.compare(c0623e.getName(), c0623e2.getName());
        if (compare == 0) {
            compare = m2486a;
        }
        return compare;
    }

    /* renamed from: e */
    public static final int m2491e(C0623e c0623e, C0623e c0623e2) {
        int i = 1;
        int m2370b = c0623e.m2370b();
        int m2370b2 = c0623e2.m2370b();
        int i2 = (m2370b == 1 || (m2370b == 0 && c0623e.f2423g == 2)) ? 0 : 1;
        if (m2370b2 == 1 || (m2370b2 == 0 && c0623e2.f2423g == 2)) {
            i = 0;
        }
        return i2 - i;
    }

    /* renamed from: a */
    public final int m2492a() {
        return this.f2499k & 255;
    }

    /* renamed from: a */
    public int m2493a(int i, String str) {
        if (i < 0 || i >= this.f2500l.size()) {
            return -1;
        }
        C0623e c0623e = (C0623e) this.f2500l.get(i);
        File parentFile = c0623e.getParentFile();
        if (parentFile == null) {
            return -1;
        }
        C0623e c0623e2 = new C0623e(parentFile, str, 0);
        try {
            if (!c0623e2.exists()) {
                if (C0742b.m2995b(c0623e, str)) {
                    c0623e2.m2366a(c0623e, true);
                    m2504c(i);
                    return m2505d(c0623e2);
                }
            }
            return -1;
        } catch (Throwable th) {
            return -1;
        }
    }

    /* renamed from: a */
    public int m2494a(C0623e c0623e) {
        int m2962a = C0742b.m2962a(this.f2500l, c0623e, this.f2498a);
        if (m2962a < 0 && this.f2501m.contains(Integer.valueOf(c0623e.getPath().toLowerCase().hashCode()))) {
            Log.w("Gallery", "not found: " + c0623e.getPath());
            int m2503c = m2503c(c0623e);
            if (m2503c >= 0) {
                return m2503c;
            }
        }
        return m2962a;
    }

    /* renamed from: a */
    public C0623e m2495a(Context context, Uri uri) {
        C0623e c0623e;
        String m2277a = QuickApp.f2076s.m2277a(uri);
        if (m2277a == null) {
            return null;
        }
        File file = new File(m2277a);
        boolean isDirectory = file.isDirectory();
        if (isDirectory) {
            c0623e = new C0623e(m2277a, -1);
        } else {
            String parent = file.getParent();
            c0623e = parent != null ? new C0623e(parent, -1) : null;
        }
        if (c0623e == null) {
            return null;
        }
        c0623e.f2420d = C0635q.m2430a(context).m2432a(c0623e);
        int m2494a = m2494a(c0623e);
        if (m2494a < 0) {
            return c0623e;
        }
        C0623e m2500b = m2500b(m2494a);
        if (isDirectory) {
            m2500b.f2419c = -1;
            return m2500b;
        }
        if (!m2277a.equals(m2500b.m2373b(m2500b.f2419c))) {
            char m2721a = C0690c.m2721a(m2277a);
            if (m2721a == 0) {
                m2721a = 'I';
            }
            m2500b.f2419c = m2500b.m2362a(file, m2721a);
            if (m2500b.f2419c < 0) {
                m2500b.f2419c = m2500b.m2375c(new C0622d(file, m2721a, -1));
            }
        }
        return m2500b;
    }

    /* renamed from: a */
    public void m2496a(int i) {
        this.f2499k = i;
        boolean m2501b = m2501b();
        Comparator comparator = this.f2498a;
        switch (m2502c()) {
            case 1:
                this.f2498a = m2501b ? f2495h : f2491d;
                break;
            case 2:
                this.f2498a = m2501b ? f2496i : f2492e;
                break;
            case 3:
                this.f2498a = f2489b;
                break;
            case 4:
                this.f2498a = f2490c;
                break;
            case 5:
                this.f2498a = f2493f;
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                this.f2498a = f2494g;
                break;
        }
        if (this.f2498a != comparator) {
            m2513i();
        }
    }

    /* renamed from: a */
    public void m2497a(C0623e c0623e, boolean z) {
        c0623e.m2394n();
        if (m2506d()) {
            m2513i();
        }
        if (c0623e.m2387h()) {
            m2510f(c0623e);
        } else if (z) {
            QuickApp.f2079v.m2523c(c0623e);
        }
    }

    /* renamed from: a */
    public boolean m2498a(boolean z) {
        boolean z2;
        boolean z3 = false;
        int size = this.f2500l.size() - 1;
        while (size >= 0) {
            if (((C0623e) this.f2500l.get(size)).m2369a(z)) {
                m2504c(size);
                z2 = true;
            } else {
                z2 = z3;
            }
            size--;
            z3 = z2;
        }
        return z3;
    }

    /* renamed from: b */
    public int m2499b(C0623e c0623e) {
        return C0742b.m2962a(this.f2500l, c0623e, this.f2498a);
    }

    /* renamed from: b */
    public final C0623e m2500b(int i) {
        if (i < 0 || i >= this.f2500l.size()) {
            return null;
        }
        return (C0623e) this.f2500l.get(i);
    }

    /* renamed from: b */
    public final boolean m2501b() {
        return ((this.f2499k >> 16) & 255) != 0;
    }

    /* renamed from: c */
    public final int m2502c() {
        return (this.f2499k >> 8) & 255;
    }

    /* renamed from: c */
    public int m2503c(C0623e c0623e) {
        int size = this.f2500l.size();
        for (int i = 0; i < size; i++) {
            if (m2486a((C0623e) this.f2500l.get(i), c0623e) == 0) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: c */
    public C0623e m2504c(int i) {
        if (i < 0 || i >= this.f2500l.size()) {
            return null;
        }
        C0623e c0623e = (C0623e) this.f2500l.remove(i);
        this.f2501m.remove(Integer.valueOf(c0623e.getPath().toLowerCase().hashCode()));
        QuickApp.f2079v.m2523c(c0623e);
        return c0623e;
    }

    /* renamed from: d */
    public int m2505d(C0623e c0623e) {
        int i;
        if (c0623e.m2390j() == 1) {
            c0623e.m2395o();
        }
        int m2494a = m2494a(c0623e);
        if (m2494a >= 0) {
            C0623e c0623e2 = (C0623e) this.f2500l.get(m2494a);
            if (c0623e2.f2420d != c0623e.f2420d && c0623e.f2420d != 0) {
                c0623e2.f2420d = c0623e.f2420d;
                C0635q.m2430a(QuickApp.m2036a()).m2434b(c0623e2);
            }
            this.f2500l.remove(m2494a);
            this.f2501m.remove(Integer.valueOf(c0623e2.getPath().toLowerCase().hashCode()));
            if (!c0623e.m2368a(c0623e2, 4)) {
                QuickApp.f2079v.m2523c(c0623e2);
            }
            i = m2494a(c0623e);
        } else {
            i = m2494a;
        }
        if (i < 0) {
            i = (-i) - 1;
            this.f2500l.add(i, c0623e);
        }
        this.f2501m.add(Integer.valueOf(c0623e.getPath().toLowerCase().hashCode()));
        return i;
    }

    /* renamed from: d */
    public final boolean m2506d() {
        int i = (this.f2499k >> 8) & 255;
        return i == 3 || i == 4;
    }

    /* renamed from: e */
    public final int m2507e() {
        return this.f2499k;
    }

    /* renamed from: e */
    public void m2508e(C0623e c0623e) {
        m2510f(c0623e);
        String path = c0623e.getPath();
        for (int size = this.f2500l.size() - 1; size >= 0; size--) {
            if (C0742b.m3000c(path, ((C0623e) this.f2500l.get(size)).getPath())) {
                m2504c(size);
            }
        }
    }

    /* renamed from: f */
    public final int m2509f() {
        return this.f2500l.size();
    }

    /* renamed from: f */
    public C0623e m2510f(C0623e c0623e) {
        int m2494a = m2494a(c0623e);
        if (m2494a < 0 || m2494a >= this.f2500l.size()) {
            return null;
        }
        return m2504c(m2494a);
    }

    /* renamed from: g */
    public void m2511g() {
        Iterator it = this.f2500l.iterator();
        while (it.hasNext()) {
            ((C0623e) it.next()).m2391k();
        }
        this.f2500l.clear();
        this.f2501m.clear();
    }

    /* renamed from: h */
    public final ArrayList m2512h() {
        return new ArrayList(this.f2500l);
    }

    /* renamed from: i */
    public void m2513i() {
        C0742b.m2987a(this.f2500l, this.f2498a);
    }
}
