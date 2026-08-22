package com.alensw.PicFolder;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ViewConfiguration;
import com.alensw.cloud.UrlTaskService;
import com.alensw.p022a.C0593ah;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0620bh;
import com.alensw.p022a.C0621c;
import com.alensw.p022a.C0637s;
import com.alensw.p022a.C0642x;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p025b.C0655b;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0718n;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p035l.C0742b;
import java.lang.reflect.Field;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.HttpStatus;
import org.apache.http.message.TokenParser;

/* loaded from: classes.dex */
public class QuickApp extends Application {

    /* renamed from: B */
    private static QuickApp f2054B;

    /* renamed from: b */
    public static boolean f2059b;

    /* renamed from: c */
    public static boolean f2060c;

    /* renamed from: d */
    public static boolean f2061d;

    /* renamed from: e */
    public static boolean f2062e;

    /* renamed from: f */
    public static int f2063f;

    /* renamed from: g */
    public static int f2064g;

    /* renamed from: h */
    public static int f2065h;

    /* renamed from: i */
    public static int f2066i;

    /* renamed from: j */
    public static int f2067j;

    /* renamed from: k */
    public static int f2068k;

    /* renamed from: l */
    public static String f2069l;

    /* renamed from: m */
    public static DateFormat f2070m;

    /* renamed from: n */
    public static DateFormat f2071n;

    /* renamed from: o */
    public static C0642x f2072o;

    /* renamed from: p */
    public static C0620bh f2073p;

    /* renamed from: q */
    public static C0637s f2074q;

    /* renamed from: r */
    public static C0615bc f2075r;

    /* renamed from: s */
    public static C0613ba f2076s;

    /* renamed from: t */
    public static C0593ah f2077t;

    /* renamed from: u */
    public static C0600ao f2078u;

    /* renamed from: v */
    public static C0645a f2079v;

    /* renamed from: w */
    public static C0645a f2080w;

    /* renamed from: x */
    public static boolean f2081x;

    /* renamed from: y */
    public static String f2082y;

    /* renamed from: C */
    private final AtomicInteger f2084C = new AtomicInteger();

    /* renamed from: D */
    private final AtomicInteger f2085D = new AtomicInteger();

    /* renamed from: E */
    private final ArrayList f2086E = new ArrayList();

    /* renamed from: a */
    public static final int[] f2058a = {2560, 2048, 1920, 1800, 1600, 1280, 1024, 960, 800, 480, 320};

    /* renamed from: z */
    private static AtomicBoolean f2083z = new AtomicBoolean();

    /* renamed from: A */
    private static AtomicBoolean f2053A = new AtomicBoolean();

    /* renamed from: F */
    private static final String[] f2055F = {null, "com.samsung.app.playreadyui", "com.htc", "com.meizu.mstore"};

    /* renamed from: G */
    private static final byte[] f2056G = {-45, 109, -115, -86, 103, -104, -36, 66, -81, -48, 74, 14, 59, 19, 77, 77};

    /* renamed from: H */
    private static final byte[] f2057H = {-62, Byte.MAX_VALUE, -75, -92, 71, 60, 75, 55, 95, -99, -31, 66, 64, 111, 101, 101};

    /* renamed from: a */
    public static QuickApp m2036a() {
        return f2054B;
    }

    /* renamed from: a */
    public static String m2037a(long j) {
        return f2070m.format(Long.valueOf(j));
    }

    /* renamed from: a */
    public static void m2039a(Context context) {
        m2040a(context, new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(Environment.getExternalStorageDirectory())));
    }

    /* renamed from: a */
    public static void m2040a(Context context, Intent intent) {
        try {
            context.getApplicationContext().sendBroadcast(intent);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m2041a(String str) {
        try {
            C0688a.m2718a(str);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static boolean m2042a(boolean z) {
        if (z) {
            f2081x = false;
        }
        return f2053A.getAndSet(z);
    }

    /* renamed from: b */
    public static String m2043b(long j) {
        return f2070m.format(Long.valueOf(j)) + TokenParser.f5042SP + f2071n.format(Long.valueOf(j));
    }

    /* renamed from: b */
    public static void m2045b(String str) {
        try {
            C0688a.m2720b(str);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public static boolean m2046b(boolean z) {
        if (z) {
            f2081x = false;
        }
        return f2083z.getAndSet(z);
    }

    /* renamed from: f */
    private int m2047f() {
        for (int i = 1; i < f2055F.length; i++) {
            if (C0742b.m2980a(this, f2055F[i])) {
                return i;
            }
        }
        return 0;
    }

    @TargetApi(14)
    /* renamed from: g */
    private boolean m2048g() {
        boolean z = false;
        Resources resources = getResources();
        Configuration configuration = resources.getConfiguration();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        C0706b.m2781a(this);
        C0675b.m2663a();
        f2059b = (configuration.screenLayout & 15) >= 3;
        f2062e = getPackageManager().hasSystemFeature("android.hardware.type.television");
        f2065h = (int) (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / displayMetrics.density);
        if (Build.VERSION.SDK_INT >= 13 && f2065h < configuration.smallestScreenWidthDp) {
            f2065h = configuration.smallestScreenWidthDp;
        }
        f2064g = Math.round(f2065h * displayMetrics.density);
        int max = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int[] iArr = f2058a;
        int length = iArr.length;
        int i = 0;
        int i2 = max;
        while (true) {
            if (i < length) {
                int i3 = iArr[i];
                if (max == i3) {
                    break;
                }
                if (max > i3) {
                    max = i2;
                    break;
                }
                i++;
                i2 = i3;
            } else {
                break;
            }
        }
        f2063f = max;
        if (Build.VERSION.SDK_INT >= 14 && !ViewConfiguration.get(this).hasPermanentMenuKey()) {
            z = true;
        }
        f2061d = z;
        f2060c = C0742b.m2980a(this, "com.google.android.gms");
        f2066i = Math.max(resources.getInteger(R.integer.config_mediumAnimTime), HttpStatus.SC_BAD_REQUEST);
        f2069l = f2067j == 2 ? "100MEDIA" : "Camera";
        f2070m = DateFormat.getDateInstance();
        f2071n = android.text.format.DateFormat.getTimeFormat(this);
        f2072o = new C0642x();
        f2073p = new C0620bh(this);
        f2074q = new C0637s(this);
        f2075r = new C0615bc(this);
        f2077t = new C0593ah(this);
        f2078u = new C0600ao(this);
        f2076s = new C0613ba(this);
        C0621c.m2337a(this, f2073p);
        C0718n.m2878a(this, f2064g);
        f2078u.m2229a(new RunnableC0555bb(this, getContentResolver()));
        int i4 = f2075r.f2372c;
        f2079v = new C0556bc(this, i4 / 2);
        f2080w = new C0557bd(this, i4);
        return true;
    }

    @TargetApi(9)
    /* renamed from: h */
    private void m2049h() {
        boolean z;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        C0621c.f2400a = defaultSharedPreferences.getString("external_sd_uuid", null);
        SharedPreferences.Editor edit = defaultSharedPreferences.edit();
        String string = defaultSharedPreferences.getString("bkgnd_theme", null);
        if (string != null) {
            edit.remove("bkgnd_theme");
            if ("4".equals(string)) {
                edit.putInt("main_theme", 1);
                edit.putBoolean("auto_black_bkgnd", true);
            } else {
                edit.putInt("main_theme", C0742b.m2960a(string, 0));
            }
            z = true;
        } else {
            z = false;
        }
        if (f2067j == 3 && f2064g >= 720 && !defaultSharedPreferences.contains("split_bar")) {
            edit.putBoolean("split_bar", true);
            z = true;
        }
        f2074q.m2450a((defaultSharedPreferences.getBoolean("include_video", true) ? 2 : 0) | 1, defaultSharedPreferences);
        C0655b.m2559a(defaultSharedPreferences.getBoolean("sort_logical", true));
        if (Build.VERSION.SDK_INT >= 19 && f2061d && !defaultSharedPreferences.contains("auto_hide_navigate_bar")) {
            edit.putBoolean("auto_hide_navigate_bar", true);
            z = true;
        }
        if (!defaultSharedPreferences.contains("show_controls") && defaultSharedPreferences.getBoolean("show_details", false)) {
            edit.putInt("show_controls", 3);
            edit.remove("show_details");
            z = true;
        }
        if (!defaultSharedPreferences.contains("protect_hidden")) {
            edit.putBoolean("protect_hidden", true);
            z = true;
        }
        int i = defaultSharedPreferences.getInt("failed_upload_tasks", 0);
        if (i > 0) {
            UrlTaskService.m3127b(this, 2, i);
        }
        int i2 = defaultSharedPreferences.getInt("failed_download_tasks", 0);
        if (i2 > 0) {
            UrlTaskService.m3127b(this, 1, i2);
        }
        if (z) {
            C0742b.m2978a(edit);
        }
    }

    /* renamed from: a */
    public void m2050a(Activity activity) {
        if (Build.VERSION.SDK_INT < 14) {
            this.f2084C.incrementAndGet();
        }
    }

    /* renamed from: a */
    public void m2051a(Runnable runnable) {
        synchronized (this.f2086E) {
            if (runnable != null) {
                if (!this.f2086E.contains(runnable)) {
                    this.f2086E.add(runnable);
                }
            }
        }
    }

    /* renamed from: b */
    protected void m2052b() {
        f2075r.m2314c();
        f2074q.m2449a();
    }

    /* renamed from: b */
    public void m2053b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 14 || this.f2084C.decrementAndGet() != 0) {
            return;
        }
        m2057d();
    }

    /* renamed from: b */
    public void m2054b(Runnable runnable) {
        synchronized (this.f2086E) {
            this.f2086E.remove(runnable);
        }
    }

    /* renamed from: c */
    protected void m2055c() {
        synchronized (this.f2086E) {
            Iterator it = this.f2086E.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        f2081x = false;
        f2082y = "";
        if (f2076s.m2291c() || !m2046b(false)) {
            return;
        }
        m2039a((Context) this);
    }

    /* renamed from: c */
    public void m2056c(Activity activity) {
        if (Build.VERSION.SDK_INT >= 14 || this.f2085D.incrementAndGet() != 1) {
            return;
        }
        m2052b();
    }

    /* renamed from: d */
    protected void m2057d() {
        if (f2074q.f2452b) {
            f2074q.f2452b = false;
            f2072o.m2498a(false);
        }
        f2075r.m2315d();
        f2074q.m2453b();
        f2078u.m2226a();
    }

    /* renamed from: d */
    public void m2058d(Activity activity) {
        if (Build.VERSION.SDK_INT >= 14 || this.f2085D.decrementAndGet() != 0) {
            return;
        }
        m2055c();
    }

    /* renamed from: e */
    public int m2059e() {
        try {
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 64);
            f2068k = packageInfo.versionCode;
            return C0742b.m2959a(packageInfo, f2056G, f2057H);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    /* renamed from: e */
    public void m2060e(Activity activity) {
        try {
            C0688a.m2718a(activity.getClass().getSimpleName());
            C0688a.m2713a(activity);
        } catch (Throwable th) {
        }
    }

    /* renamed from: f */
    public void m2061f(Activity activity) {
        try {
            C0688a.m2720b(activity.getClass().getSimpleName());
            C0688a.m2719b(activity);
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        f2054B = this;
        int m2059e = m2059e();
        String m2712a = C0688a.m2712a(this, m2059e);
        try {
            f2067j = m2047f();
            m2048g();
            m2049h();
            Log.d("QuickApp", "v=" + m2059e + ", heap=" + C0706b.f2669b + ", core=" + C0730a.f2769c + ", ch=" + m2712a);
        } catch (Throwable th) {
            Log.e("QuickApp", "init app: ", th);
            System.exit(0);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                Field declaredField = ViewConfiguration.class.getDeclaredField("sHasPermanentMenuKey");
                if (declaredField != null) {
                    declaredField.setAccessible(true);
                    declaredField.setBoolean(ViewConfiguration.get(this), false);
                }
            } catch (Exception e) {
            }
            registerActivityLifecycleCallbacks(new C0554ba(this));
        }
    }
}
