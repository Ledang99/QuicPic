package com.alensw.p022a;

import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import com.alensw.PicFolder.QuickApp;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.a.e */
/* loaded from: classes.dex */
public class C0623e extends File {

    /* renamed from: a */
    public static final boolean f2409a;

    /* renamed from: b */
    public static final String f2410b;

    /* renamed from: j */
    public static final Comparator f2411j;

    /* renamed from: k */
    public static final Comparator f2412k;

    /* renamed from: l */
    public static final Comparator f2413l;

    /* renamed from: m */
    public static final Comparator f2414m;

    /* renamed from: n */
    public static final Comparator f2415n;

    /* renamed from: o */
    public static final Comparator f2416o;

    /* renamed from: p */
    public static final Comparator f2417p;

    /* renamed from: q */
    public static final Comparator f2418q;

    /* renamed from: c */
    public int f2419c;

    /* renamed from: d */
    public int f2420d;

    /* renamed from: e */
    public int f2421e;

    /* renamed from: f */
    public int f2422f;

    /* renamed from: g */
    public int f2423g;

    /* renamed from: h */
    public ArrayList f2424h;

    /* renamed from: i */
    public final ArrayList f2425i;

    /* renamed from: r */
    private Comparator f2426r;

    static {
        f2409a = Build.VERSION.SDK_INT >= 11;
        f2410b = Environment.getExternalStorageDirectory().getPath();
        f2411j = new C0624f();
        f2412k = new C0625g();
        f2413l = new C0626h();
        f2414m = new C0627i();
        f2415n = new C0628j();
        f2416o = new C0629k();
        f2417p = new C0630l();
        f2418q = new C0631m();
    }

    public C0623e(File file, int i) {
        super(file.getPath());
        this.f2419c = -1;
        this.f2420d = 0;
        this.f2421e = 0;
        this.f2422f = -1;
        this.f2423g = 0;
        this.f2424h = null;
        this.f2425i = new ArrayList();
        this.f2426r = f2411j;
        m2357i(i);
    }

    public C0623e(File file, String str, int i) {
        super(file, str);
        this.f2419c = -1;
        this.f2420d = 0;
        this.f2421e = 0;
        this.f2422f = -1;
        this.f2423g = 0;
        this.f2424h = null;
        this.f2425i = new ArrayList();
        this.f2426r = f2411j;
        m2357i(i);
    }

    public C0623e(String str, int i) {
        super(str);
        this.f2419c = -1;
        this.f2420d = 0;
        this.f2421e = 0;
        this.f2422f = -1;
        this.f2423g = 0;
        this.f2424h = null;
        this.f2425i = new ArrayList();
        this.f2426r = f2411j;
        m2357i(i);
    }

    /* renamed from: a */
    public static int m2353a(int i, int i2) {
        return (i << 4) | i2;
    }

    /* renamed from: a */
    public static int m2354a(int i, int i2, int i3) {
        return (i << 8) | (i2 << 4) | i3;
    }

    /* renamed from: a */
    public static boolean m2355a(File file) {
        File file2 = new File(file, "!qpicfake.jpg");
        return file2.exists() && file2.length() == 0 && C0742b.m2999c(file2);
    }

    /* renamed from: a */
    public static boolean m2356a(File file, C0622d c0622d, String str) {
        String str2 = c0622d.f2404b;
        String m2975a = C0742b.m2975a(str2, false);
        if (m2975a.length() > 0) {
            str = str + "." + m2975a;
        }
        if (!C0742b.m2995b(new File(file, str2), str)) {
            return false;
        }
        c0622d.f2404b = str;
        return true;
    }

    /* renamed from: i */
    private void m2357i(int i) {
        this.f2423g = QuickApp.f2073p.m2327c(getPath());
        if (i == -1) {
            m2394n();
        } else {
            this.f2421e = i;
        }
    }

    /* renamed from: a */
    public final int m2358a() {
        return (this.f2420d >> 4) & 15;
    }

    /* renamed from: a */
    public final int m2359a(int i) {
        return m2353a(0, i == 0 ? this.f2423g == 0 ? 2 : f2409a ? 6 : 1 : i);
    }

    /* renamed from: a */
    public int m2360a(int i, String str) {
        C0622d m2381e = m2381e(i);
        if (m2381e == null || !m2356a(this, m2381e, str)) {
            return -1;
        }
        m2388h(i);
        return m2375c(m2381e);
    }

    /* renamed from: a */
    public int m2361a(C0622d c0622d) {
        int m2363a;
        if (m2382e() && c0622d.f2406d == -1) {
            m2374b(c0622d);
        }
        int m2962a = C0742b.m2962a(this.f2425i, c0622d, this.f2426r);
        return (m2962a >= 0 || (m2363a = m2363a(c0622d.f2404b)) == -1) ? m2962a : m2363a;
    }

    /* renamed from: a */
    public int m2362a(File file, char c) {
        return m2361a(new C0622d(file, c, -1));
    }

    /* renamed from: a */
    public int m2363a(String str) {
        int size = this.f2425i.size();
        for (int i = 0; i < size; i++) {
            if (((C0622d) this.f2425i.get(i)).f2404b.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public int m2364a(String str, char c) {
        return m2361a(new C0622d(new File(str), c, -1));
    }

    /* renamed from: a */
    public void m2365a(char c, int i, long j, String str) {
        if (c != 'D') {
            this.f2425i.add(new C0622d(getPath(), str, c, i, i, j));
        } else if (this.f2424h != null) {
            this.f2424h.add(new C0623e(this, str, i));
        }
    }

    /* renamed from: a */
    public void m2366a(C0623e c0623e, boolean z) {
        if (this.f2420d == 0) {
            this.f2420d = c0623e.f2420d;
        }
        this.f2421e = c0623e.f2421e;
        this.f2422f = c0623e.f2422f;
        this.f2423g = c0623e.f2423g;
        if (!z) {
            if (this.f2419c == -1) {
                this.f2419c = c0623e.f2419c;
                return;
            }
            return;
        }
        C0622d m2381e = m2381e(this.f2419c);
        this.f2425i.clear();
        this.f2425i.addAll(c0623e.f2425i);
        if (c0623e.f2424h != null) {
            this.f2424h = new ArrayList(c0623e.f2424h);
        } else {
            this.f2424h = null;
        }
        if (m2381e != null) {
            this.f2419c = m2361a(m2381e);
        }
    }

    /* renamed from: a */
    public void m2367a(Collection collection) {
        for (Object obj : collection) {
            if (obj instanceof C0622d) {
                m2380d((C0622d) obj);
            }
        }
    }

    /* renamed from: a */
    public boolean m2368a(C0623e c0623e, int i) {
        int m2390j = m2390j();
        if (m2390j != c0623e.m2390j()) {
            return false;
        }
        if (i > m2390j) {
            i = m2390j;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (!((C0622d) this.f2425i.get(i2)).equals(c0623e.m2381e(i2))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public boolean m2369a(boolean z) {
        if (this.f2422f == -1 || z) {
            this.f2422f = C0742b.m3009h(getPath()) ? 1 : 0;
        }
        return this.f2422f == 1;
    }

    /* renamed from: b */
    public final int m2370b() {
        return (this.f2420d >> 8) & 15;
    }

    /* renamed from: b */
    public int m2371b(boolean z) {
        C0622d m2381e = m2381e(this.f2419c);
        m2391k();
        m2394n();
        int m2452b = QuickApp.f2074q.m2452b(this, z);
        if (m2452b == 1 && m2395o()) {
            m2452b--;
        }
        if (m2381e != null) {
            if (m2382e() && m2381e.f2406d == -1) {
                m2374b(m2381e);
            }
            this.f2419c = m2361a(m2381e);
        }
        return m2452b;
    }

    /* renamed from: b */
    public final Uri m2372b(String str) {
        return Uri.fromFile(new File(this, str));
    }

    /* renamed from: b */
    public final String m2373b(int i) {
        return (i < 0 || i >= this.f2425i.size()) ? "" : ((C0622d) this.f2425i.get(i)).m2351a();
    }

    /* renamed from: b */
    public void m2374b(C0622d c0622d) {
        String m2351a = c0622d.m2351a();
        c0622d.f2406d = JniUtils.fuGetFileTime(m2351a);
        if (m2384f()) {
            c0622d.f2407e = (int) (C0707c.m2785a(m2351a) / 1000);
        } else {
            c0622d.f2407e = c0622d.f2406d;
        }
    }

    /* renamed from: c */
    public int m2375c(C0622d c0622d) {
        int m2361a = m2361a(c0622d);
        if (m2361a >= 0) {
            ((C0622d) this.f2425i.get(m2361a)).m2352a(c0622d);
            return m2361a;
        }
        int i = (-m2361a) - 1;
        this.f2425i.add(i, c0622d);
        return i;
    }

    /* renamed from: c */
    public final File m2376c(int i) {
        if (i < 0 || i >= this.f2425i.size()) {
            return null;
        }
        return new File(this, ((C0622d) this.f2425i.get(i)).f2404b);
    }

    /* renamed from: c */
    public final boolean m2377c() {
        int i = (this.f2420d >> 8) & 15;
        if (i != 1) {
            return i == 0 && this.f2423g == 2;
        }
        return true;
    }

    /* renamed from: d */
    public final int m2378d() {
        return this.f2420d & 15;
    }

    /* renamed from: d */
    public final Uri m2379d(int i) {
        return (i < 0 || i >= this.f2425i.size()) ? Uri.EMPTY : Uri.fromFile(new File(this, ((C0622d) this.f2425i.get(i)).f2404b));
    }

    /* renamed from: d */
    public boolean m2380d(C0622d c0622d) {
        int m2361a = m2361a(c0622d);
        if (m2361a < 0) {
            return false;
        }
        this.f2425i.remove(m2361a);
        return true;
    }

    /* renamed from: e */
    public final C0622d m2381e(int i) {
        if (i < 0 || i >= this.f2425i.size()) {
            return null;
        }
        return (C0622d) this.f2425i.get(i);
    }

    /* renamed from: e */
    public final boolean m2382e() {
        int i = this.f2420d & 15;
        return i == 3 || i == 1 || i == 5 || i == 6;
    }

    /* renamed from: f */
    public final char m2383f(int i) {
        if (i < 0 || i >= this.f2425i.size()) {
            return (char) 0;
        }
        return ((C0622d) this.f2425i.get(i)).f2405c;
    }

    /* renamed from: f */
    public final boolean m2384f() {
        int i = this.f2420d & 15;
        return i == 5 || i == 6;
    }

    /* renamed from: g */
    public final String m2385g(int i) {
        if (i < 0 || i >= this.f2425i.size()) {
            return null;
        }
        C0622d c0622d = (C0622d) this.f2425i.get(i);
        return C0690c.m2722a(c0622d.f2404b, c0622d.f2405c);
    }

    /* renamed from: g */
    public final boolean m2386g() {
        int i = this.f2420d & 15;
        return i == 2 || i == 4;
    }

    /* renamed from: h */
    public final boolean m2387h() {
        return this.f2425i.isEmpty() && (this.f2424h == null || this.f2424h.isEmpty());
    }

    /* renamed from: h */
    public boolean m2388h(int i) {
        int size = this.f2425i.size();
        if (i < 0 || i >= size) {
            return false;
        }
        this.f2425i.remove(i);
        int i2 = size - 1;
        if (this.f2419c >= i2) {
            this.f2419c = i2 - 1;
        } else if (this.f2419c > i) {
            this.f2419c--;
        }
        return true;
    }

    /* renamed from: i */
    public final int m2389i() {
        if (this.f2424h != null) {
            return this.f2424h.size();
        }
        return 0;
    }

    /* renamed from: j */
    public final int m2390j() {
        return this.f2425i.size();
    }

    /* renamed from: k */
    public void m2391k() {
        this.f2425i.clear();
        this.f2424h = null;
        this.f2419c = -1;
        this.f2421e = 0;
        this.f2422f = -1;
    }

    /* renamed from: l */
    public void m2392l() {
        switch (m2378d()) {
            case 1:
                this.f2426r = f2414m;
                break;
            case 2:
                this.f2426r = f2411j;
                break;
            case 3:
                this.f2426r = f2413l;
                break;
            case 4:
                this.f2426r = f2412k;
                break;
            case 5:
                this.f2426r = f2415n;
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                this.f2426r = f2416o;
                break;
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                this.f2426r = f2417p;
                break;
            case 8:
                this.f2426r = f2418q;
                break;
        }
        C0622d m2381e = m2381e(this.f2419c);
        C0742b.m2987a(this.f2425i, this.f2426r);
        if (m2381e != null) {
            this.f2419c = m2361a(m2381e);
        }
    }

    /* renamed from: m */
    public final boolean m2393m() {
        return this.f2421e != JniUtils.fuGetFileTime(getPath());
    }

    /* renamed from: n */
    public void m2394n() {
        this.f2421e = JniUtils.fuGetFileTime(getPath());
    }

    /* renamed from: o */
    public boolean m2395o() {
        File file = new File(this, "!qpicfake.jpg");
        boolean z = file.exists() && file.length() == 0;
        if (z && this.f2425i.size() == 1 && "!qpicfake.jpg".equals(m2381e(0).f2404b)) {
            m2388h(0);
        }
        return z;
    }

    /* renamed from: p */
    public boolean m2396p() {
        File file = new File(this, "!qpicfake.jpg");
        return file.exists() || C0742b.m2994b(file);
    }
}
