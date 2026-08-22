package com.alensw.p038ui.p041c;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Toast;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0632n;
import com.alensw.p023b.p025b.C0655b;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.p039a.InterfaceC1084s;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import org.apache.http.HttpStatus;

/* renamed from: com.alensw.ui.c.a */
/* loaded from: classes.dex */
public class C1159a extends C1234cu implements Handler.Callback {

    /* renamed from: a */
    public static final boolean f3849a;

    /* renamed from: f */
    private static String f3850f;

    /* renamed from: b */
    protected Handler f3851b;

    /* renamed from: c */
    protected ViewGroup f3852c;

    /* renamed from: d */
    protected View.OnClickListener f3853d;

    /* renamed from: e */
    protected InterfaceC1277m f3854e;

    static {
        f3849a = Build.VERSION.SDK_INT < 14;
    }

    /* renamed from: a */
    public static void m3857a(Context context, C0714j c0714j, String str) {
        if (c0714j == null || c0714j.f2705d < 2) {
            return;
        }
        String str2 = c0714j.f2706h;
        if (str2 == null) {
            str2 = "unknown";
        }
        String str3 = str2.startsWith("video/") ? "video" : str2.endsWith("/gif") ? "gif" : "image";
        HashMap hashMap = new HashMap(2);
        hashMap.put("source", str);
        hashMap.put("type", str3);
        C0688a.m2716a(context, EnumC0689b.OpenPicture, hashMap);
    }

    /* renamed from: a */
    public static void m3858a(Context context, String str) {
        C0688a.m2715a(context, EnumC0689b.OpenFolder, str);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public long mo3860a(boolean z, RectF rectF) {
        if (!z && this.f3852c != null && this.f3852c.getVisibility() == 0) {
            this.f3852c.setVisibility(4);
        }
        return super.mo3860a(z, rectF);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(8)
    /* renamed from: a */
    public void mo3861a() {
        super.mo3861a();
        String mo3882c = mo3882c();
        if (mo3882c != null) {
            QuickApp.m2041a(mo3882c);
        }
        boolean z = (this instanceof C1256dp) || (this instanceof C1178as);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f4082C);
        Window window = this.f4082C.getWindow();
        int m2960a = C0742b.m2960a(defaultSharedPreferences.getString("screen_orientation", "-1"), -1);
        if (!z) {
            this.f4082C.m3851a(-1);
        } else if (m2960a != -2) {
            this.f4082C.m3851a(m2960a);
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z && defaultSharedPreferences.getBoolean("auto_max_brightness", false)) {
            attributes.screenBrightness = 1.0f;
        } else {
            attributes.screenBrightness = -1.0f;
        }
        window.setAttributes(attributes);
        boolean z2 = defaultSharedPreferences.getBoolean("hide_status_bar", false);
        if (!this.f4082C.m3816e(defaultSharedPreferences.getBoolean("auto_hide_navigate_bar", false))) {
            z2 |= z;
        }
        window.setFlags(z2 ? 1024 : 0, 1024);
        this.f4082C.m3804a(this.f3852c);
        if (z) {
            this.f4082C.m3817f(((int) this.f4082C.m4039b(true)) + 50);
        } else {
            this.f4082C.mo1994a(z ? false : true);
        }
    }

    /* renamed from: a */
    public void m3862a(Intent intent) {
        intent.addFlags(1);
        this.f4082C.setResult(-1, intent);
        this.f4082C.finish();
    }

    /* renamed from: a */
    public void m3863a(Uri uri) {
        InterfaceC1277m interfaceC1277m = this.f3854e;
        this.f3854e = null;
        if (interfaceC1277m == null) {
            m3864a(uri, "vnd.android.document/directory");
            return;
        }
        Intent intent = new Intent();
        intent.setDataAndType(uri, "vnd.android.document/directory");
        this.f3851b.post(new RunnableC1186b(this, interfaceC1277m, intent));
        m4023E();
    }

    /* renamed from: a */
    public void m3864a(Uri uri, String str) {
        Intent intent = new Intent();
        intent.setDataAndType(uri, str);
        m3862a(intent);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        this.f3851b = new Handler(this);
        this.f3853d = this.f4082C.f3747Z;
    }

    /* renamed from: a */
    public final void m3866a(Menu menu, int i, int i2) {
        this.f4082C.mo1992a(menu.findItem(i), i2);
    }

    /* renamed from: a */
    public final void m3867a(Menu menu, int i, boolean z) {
        this.f4082C.m3802a(menu, i, z);
    }

    /* renamed from: a */
    public final void m3868a(MenuItem menuItem, int i) {
        this.f4082C.mo1992a(menuItem, i);
    }

    /* renamed from: a */
    public void m3869a(C0623e c0623e) {
        m3875a(c0623e.getName(), Uri.fromFile(c0623e), c0623e.m2379d(0));
    }

    /* renamed from: a */
    public void m3870a(C0623e c0623e, int i, InterfaceC1279o interfaceC1279o) {
        File m2376c;
        if (c0623e == null || (m2376c = c0623e.m2376c(i)) == null) {
            return;
        }
        String m2997c = C0742b.m2997c(m2376c.getName());
        C1071f.m3740a(this.f4082C, R.string.rename, m2997c, (CharSequence) null, new C1271g(this, m2997c, c0623e, i, interfaceC1279o));
    }

    /* renamed from: a */
    public void m3871a(C0623e c0623e, InterfaceC1084s interfaceC1084s) {
        ArrayList arrayList = new ArrayList();
        for (File file = c0623e; file != null; file = file.getParentFile()) {
            String path = file.getPath();
            if (path.lastIndexOf(File.separatorChar) <= 0) {
                break;
            }
            arrayList.add(path);
        }
        if (arrayList.isEmpty()) {
            arrayList.add(c0623e.getPath());
        }
        C1071f.m3736a(this.f4082C, R.string.exclude, R.string.exclude_confirm, arrayList, interfaceC1084s);
    }

    /* renamed from: a */
    public void m3872a(C0623e c0623e, Runnable runnable) {
        C0623e c0623e2 = new C0623e(c0623e.getPath(), c0623e.f2421e);
        c0623e2.m2366a(c0623e, false);
        m4029c(true);
        QuickApp.f2078u.m2229a(new RunnableC1272h(this, c0623e2, c0623e, runnable));
    }

    /* renamed from: a */
    public void m3873a(InterfaceC1277m interfaceC1277m) {
        this.f3854e = interfaceC1277m;
    }

    /* renamed from: a */
    public void m3874a(File file) {
        PreferenceManager.getDefaultSharedPreferences(this.f4082C).edit().putString("dest_folder", file.getPath()).commit();
        m3863a(Uri.fromFile(file));
    }

    @TargetApi(11)
    /* renamed from: a */
    public void m3875a(String str, Uri uri, Uri uri2) {
        String m2407a = C0632n.m2405a(this.f4082C).m2407a(uri);
        C0712h m2307a = m2407a != null ? QuickApp.f2075r.m2307a(m2407a, 0L, new C0705a()) : null;
        C0712h m2305a = (m2307a == null || !m2307a.m2854j()) ? QuickApp.f2075r.m2305a(uri2, 0L, new C0705a()) : m2307a;
        if (m2305a == null || !m2305a.m2854j()) {
            return;
        }
        Resources F = m4024F();
        int launcherLargeIconSize = Build.VERSION.SDK_INT >= 11 ? ((ActivityManager) this.f4082C.getSystemService("activity")).getLauncherLargeIconSize() : F.getDimensionPixelSize(android.R.dimen.app_icon_size);
        Bitmap m2773a = C0706b.m2773a(launcherLargeIconSize, launcherLargeIconSize, Bitmap.Config.ARGB_8888);
        if (m2773a != null) {
            float f = F.getDisplayMetrics().density;
            int i = (int) (4.0f * f);
            RectF rectF = new RectF(0.0f, 0.0f, launcherLargeIconSize, launcherLargeIconSize);
            Paint paint = new Paint(7);
            Matrix matrix = new Matrix();
            m2305a.m2844a(matrix, launcherLargeIconSize - (i * 2), launcherLargeIconSize - (i * 2), 2);
            matrix.postTranslate(i, i);
            paint.setColor(-1);
            paint.setShadowLayer(f, f, f, -12303292);
            rectF.inset(2.0f, 2.0f);
            Canvas canvas = new Canvas(m2773a);
            canvas.drawRect(rectF, paint);
            canvas.clipRect(i, i, launcherLargeIconSize - i, launcherLargeIconSize - i);
            paint.clearShadowLayer();
            canvas.drawBitmap(m2305a.m2848d(), matrix, paint);
            m2305a.m2866m();
            Intent intent = new Intent();
            intent.setComponent(new ComponentName(this.f4082C.getPackageName(), GalleryActivity.class.getName()));
            intent.setData(uri);
            intent.addFlags(69730304);
            Intent intent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            intent2.putExtra("android.intent.extra.shortcut.NAME", str);
            intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
            intent2.putExtra("android.intent.extra.shortcut.ICON", m2773a);
            intent2.putExtra("duplicate", false);
            this.f4082C.sendBroadcast(intent2);
        }
    }

    /* renamed from: a */
    public void m3876a(HashSet hashSet, boolean z, InterfaceC1278n interfaceC1278n) {
        int size = hashSet.size();
        if (size == 0) {
            return;
        }
        if (this.f4082C.m3832q()) {
            this.f4082C.m3813d(false);
        }
        C1213c c1213c = new C1213c(this, interfaceC1278n, z, size, hashSet, this.f4082C.getContentResolver());
        int i = z ? R.string.copy_to : R.string.move_to;
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("vnd.android.document/directory");
        intent.putExtra("activity_title", m4032g(i) + ":");
        ((C1159a) this.f4082C.m4037a(C1212bz.class, intent, (Bundle) null)).m3873a(c1213c);
    }

    /* renamed from: a */
    public boolean m3877a(int i) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f4082C);
        int i2 = QuickApp.f2074q.f2453c;
        if (i == 1) {
            r0 = 1;
        } else if (i != 2) {
            r0 = (defaultSharedPreferences.getBoolean("include_video", true) ? 2 : 0) | 1;
        }
        boolean z = QuickApp.f2074q.f2453c != r0;
        if (z) {
            QuickApp.f2074q.m2450a(r0, defaultSharedPreferences);
        }
        if (C0655b.m2559a(defaultSharedPreferences.getBoolean("sort_logical", true)) | z) {
            QuickApp.m2042a(true);
        }
        return QuickApp.m2042a(false);
    }

    /* renamed from: a */
    public boolean m3878a(C0623e c0623e, boolean z, Runnable runnable) {
        String path = c0623e.getPath();
        if (!z) {
            if (!C0742b.m2984a((File) c0623e, false) || c0623e.m2369a(true)) {
                m3879a(c0623e.getPath());
            } else {
                QuickApp.f2076s.m2279a();
                new ProgressDialogC1276l(this, this.f4082C, m4032g(R.string.running_wait), 0, path).m3731c();
            }
            return true;
        }
        if (c0623e.f2423g == 2) {
            Toast.makeText(this.f4082C, R.string.can_not_hide_camera_folder, 1).show();
            return false;
        }
        if (QuickApp.f2073p.m2324a(path)) {
            Toast.makeText(this.f4082C, "Can't hide the SD folder!", 1).show();
            return false;
        }
        new ProgressDialogC1274j(this, this.f4082C, m4032g(R.string.running_wait), 0, c0623e, QuickApp.f2076s, path, runnable).m3731c();
        return true;
    }

    /* renamed from: a */
    public boolean m3879a(String str) {
        return this.f4082C.m3852a(str);
    }

    /* renamed from: b */
    public String m3880b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? str : lastIndexOf <= 32 ? str.substring(0, lastIndexOf) : str.substring(0, 32) + (char) 8230;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3881b() {
        super.mo3881b();
        this.f4082C.m3836u();
        String mo3882c = mo3882c();
        if (mo3882c != null) {
            QuickApp.m2045b(mo3882c);
        }
    }

    /* renamed from: c */
    protected String mo3882c() {
        return null;
    }

    /* renamed from: c */
    public void m3883c(String str) {
        C1071f.m3740a(this.f4082C, android.R.string.search_go, f3850f, (CharSequence) null, new C1267e(this, str));
    }

    /* renamed from: d */
    public void m3884d(String str) {
        if (str == null) {
            return;
        }
        QuickApp.f2078u.m2229a(new RunnableC1270f(this, str));
    }

    /* renamed from: d */
    public boolean m3885d() {
        if (!QuickApp.f2076s.m2291c()) {
            return false;
        }
        C1071f.m3737a((Context) this.f4082C, android.R.string.dialog_alert_title, (CharSequence) m4032g(R.string.can_not_operate_now));
        return true;
    }

    /* renamed from: e */
    public int[] m3886e() {
        int i = (int) (m4024F().getDisplayMetrics().density * (((QuickApp.f2065h / HttpStatus.SC_BAD_REQUEST) * 8) + 72));
        return new int[]{Math.min(QuickApp.f2075r.f2373d, i), Math.min(QuickApp.f2075r.f2374e, i)};
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        return false;
    }
}
