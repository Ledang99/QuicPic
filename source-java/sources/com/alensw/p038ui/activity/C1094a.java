package com.alensw.p038ui.activity;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import com.alensw.PicFolder.PlayerActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0613ba;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p023b.p030g.SubMenuC0704m;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.p040b.C1158a;
import com.p043b.p044a.C1387b;
import com.p043b.p044a.C1397l;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.alensw.ui.activity.a */
/* loaded from: classes.dex */
public class C1094a {
    @TargetApi(13)
    /* renamed from: a */
    public static int m3769a(Context context, Intent intent, int i, View view, InterfaceC1146o interfaceC1146o) {
        boolean z;
        List m3771a = m3771a(context, intent, 0);
        String action = intent.getAction();
        Intent intent2 = new Intent();
        HashSet hashSet = new HashSet();
        if ("android.intent.action.SEND".equals(action)) {
            intent2.setAction("android.intent.action.SEND_MSG");
            intent2.setType(intent.getType());
            intent2.putExtras(intent);
            List m3771a2 = m3771a(context, intent2, 0);
            m3771a.addAll(m3771a2);
            hashSet.addAll(m3771a2);
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action)) {
            intent2.setAction("android.intent.action.SEND");
            intent2.setType(intent.getType());
            intent2.putExtras(intent);
            Iterator it = m3771a(context, intent2, 0).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                ResolveInfo resolveInfo = (ResolveInfo) it.next();
                if (resolveInfo.activityInfo.applicationInfo.packageName.startsWith("com.htc.")) {
                    m3771a.add(resolveInfo);
                    hashSet.add(resolveInfo);
                    break;
                }
            }
        } else if ("android.intent.action.ATTACH_DATA".equals(action) && Build.VERSION.SDK_INT >= 19) {
            intent2.setAction("android.service.wallpaper.CROP_AND_SET_WALLPAPER");
            intent2.setDataAndType(intent.getData(), intent.getType());
            for (ResolveInfo resolveInfo2 : m3771a(context, intent2, 0)) {
                Iterator it2 = m3771a.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    }
                    if (((ResolveInfo) it2.next()).activityInfo.name.equals(resolveInfo2.activityInfo.name)) {
                        z = true;
                        break;
                    }
                }
                if (!z && !"com.android.wallpapercropper".equals(resolveInfo2.activityInfo.applicationInfo.packageName)) {
                    m3771a.add(resolveInfo2);
                    hashSet.add(resolveInfo2);
                }
            }
        }
        int size = m3771a.size();
        if (size == 0) {
            return 0;
        }
        if (size == 1 && !"android.intent.action.SEND".equals(action) && !"android.intent.action.SEND_MULTIPLE".equals(action)) {
            ResolveInfo resolveInfo3 = (ResolveInfo) m3771a.get(0);
            if (!hashSet.contains(resolveInfo3)) {
                intent2 = intent;
            }
            interfaceC1146o.mo2098a(intent2, resolveInfo3);
            return size;
        }
        PackageManager packageManager = context.getPackageManager();
        SharedPreferences sharedPreferences = context.getSharedPreferences("activity_menu", 0);
        C0742b.m2988a(m3771a, new C1121b(packageManager, context, sharedPreferences));
        MenuItemOnMenuItemClickListenerC1138g menuItemOnMenuItemClickListenerC1138g = new MenuItemOnMenuItemClickListenerC1138g(m3771a, interfaceC1146o, hashSet, intent2, intent, sharedPreferences);
        boolean z2 = view != null;
        MenuC0693b menuC0693b = new MenuC0693b(context);
        menuC0693b.m2749a(true);
        int i2 = (!z2 || size <= 6) ? size : 5;
        for (int i3 = 0; i3 < i2; i3++) {
            ResolveInfo resolveInfo4 = (ResolveInfo) m3771a.get(i3);
            CharSequence loadLabel = resolveInfo4.loadLabel(packageManager);
            if (loadLabel == null) {
                loadLabel = resolveInfo4.activityInfo.name;
            }
            MenuItemC0703l m2746a = menuC0693b.m2746a(0, i3, 0, loadLabel);
            m2746a.m2758a(resolveInfo4);
            m2746a.setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1138g);
        }
        if (i2 < size) {
            SubMenuC0704m subMenuC0704m = (SubMenuC0704m) menuC0693b.addSubMenu(C0742b.m2971a(context.getResources(), "more_item_label", "More") + (char) 8230);
            for (int i4 = i2; i4 < size; i4++) {
                ResolveInfo resolveInfo5 = (ResolveInfo) m3771a.get(i4);
                CharSequence loadLabel2 = resolveInfo5.loadLabel(packageManager);
                if (loadLabel2 == null) {
                    loadLabel2 = resolveInfo5.activityInfo.name;
                }
                MenuItemC0703l a2 = subMenuC0704m.m2746a(0, i4, 0, loadLabel2);
                a2.m2758a(resolveInfo5);
                a2.setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1138g);
            }
        }
        menuC0693b.m2747a(view);
        return size;
    }

    /* renamed from: a */
    public static Intent m3770a(Intent intent, ResolveInfo resolveInfo) {
        Intent intent2 = new Intent(intent);
        intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
        intent2.addFlags(50331648);
        return intent2;
    }

    /* renamed from: a */
    public static List m3771a(Context context, Intent intent, int i) {
        try {
            return context.getPackageManager().queryIntentActivities(intent, i);
        } catch (RuntimeException e) {
            return new ArrayList();
        }
    }

    /* renamed from: a */
    public static void m3772a(Context context, double d, double d2, View view) {
        String m2974a = C0742b.m2974a("%.7f,%.7f", d, d2);
        String str = "geo:" + m2974a + "?z=16";
        String str2 = "http://maps.google.com/maps?q=loc:" + m2974a;
        if (m3769a(context, new Intent("android.intent.action.VIEW", Uri.parse(str)), R.string.show_in_map, view, new C1140i(str2, str, m2974a, context)) == 0) {
            m3782a(context, "android.intent.action.VIEW", str2);
        }
    }

    /* renamed from: a */
    public static void m3773a(Context context, int i, View view, Runnable runnable) {
        RunnableC1141j runnableC1141j = new RunnableC1141j(context, runnable);
        String string = context.getString(R.string.delete);
        if (i > 1) {
            string = string + " (" + i + ")";
        }
        if (view == null) {
            C1071f.m3739a(context, 0, string + "?", runnableC1141j, (Runnable) null);
            return;
        }
        MenuItemOnMenuItemClickListenerC1142k menuItemOnMenuItemClickListenerC1142k = new MenuItemOnMenuItemClickListenerC1142k(runnableC1141j);
        Resources resources = context.getResources();
        C1158a c1158a = new C1158a(C1387b.m4499a(resources, R.raw.ic_menu_delete, resources.getColor(R.color.material_warning), resources.getDimensionPixelSize(R.dimen.menu_material_icon_size)), false);
        view.postDelayed(new RunnableC1143l(c1158a), 150L);
        MenuC0693b menuC0693b = new MenuC0693b(context);
        ((MenuItemC0703l) menuC0693b.add(0, R.id.delete, 0, string)).m2759a(32).setIcon(c1158a).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1142k);
        menuC0693b.m2749a(true);
        menuC0693b.m2747a(view);
    }

    /* renamed from: a */
    public static void m3774a(Context context, Intent intent, ResolveInfo resolveInfo) {
        m3781a(context, m3770a(intent, resolveInfo));
        String str = resolveInfo.activityInfo.packageName;
        if (str == null || context.getPackageName().equals(str)) {
            return;
        }
        String action = intent.getAction();
        EnumC0689b enumC0689b = null;
        int i = 0;
        if ("android.intent.action.SEND".equals(action)) {
            enumC0689b = EnumC0689b.Share;
            i = 1;
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action)) {
            enumC0689b = EnumC0689b.Share;
            ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
            if (parcelableArrayListExtra != null) {
                i = parcelableArrayListExtra.size();
            }
        } else if ("android.intent.action.EDIT".equals(action)) {
            enumC0689b = EnumC0689b.Edit;
            i = 1;
        }
        if (enumC0689b == null || i <= 0) {
            return;
        }
        HashMap hashMap = new HashMap(1);
        hashMap.put("t", str.replaceAll("com.", ""));
        C0688a.m2717a(context, enumC0689b, hashMap, i);
    }

    /* renamed from: a */
    public static void m3775a(Context context, Uri uri) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.panorama.PanoramaViewActivity"));
        intent.setData(uri);
        m3781a(context, intent);
    }

    /* renamed from: a */
    public static void m3776a(Context context, Uri uri, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        String[] m2925e = C0725a.m2925e(uri);
        if (m2925e == null || m2925e.length < 2 || m2925e[1] == null) {
            intent.setDataAndType(uri, str);
        } else {
            intent.setClass(context, PlayerActivity.class);
            intent.setDataAndType(Uri.parse(m2925e[0]), str);
            Bundle bundle = new Bundle();
            bundle.putString("Authorization", m2925e[1]);
            intent.putExtra("com.android.browser.headers", bundle);
        }
        m3781a(context, intent);
        C0688a.m2714a(context, EnumC0689b.OpenVideo);
    }

    /* renamed from: a */
    public static void m3777a(Context context, View view) {
        if (QuickApp.f2067j == 3 && Build.VERSION.SDK_INT >= 17) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(new ComponentName("com.android.gallery3d", "com.android.camera.CameraLauncher"));
            if (m3781a(context, intent)) {
                C0688a.m2714a(context, EnumC0689b.Camera);
                return;
            }
        }
        if (m3781a(context, new Intent("android.media.action.STILL_IMAGE_CAMERA"))) {
            C0688a.m2714a(context, EnumC0689b.Camera);
        } else {
            m3769a(context, new Intent("android.media.action.IMAGE_CAPTURE"), R.string.camera, view, new C1139h(context));
        }
    }

    /* renamed from: a */
    public static void m3778a(Context context, View view, int[] iArr, int i, boolean z) {
        C1135d c1135d = new C1135d(context, i, z);
        MenuC0693b.m2735a(context, R.menu.sort, c1135d);
        Arrays.sort(iArr);
        for (int size = c1135d.size() - 1; size >= 0; size--) {
            MenuItem item = c1135d.getItem(size);
            int itemId = item.getItemId();
            if (Arrays.binarySearch(iArr, itemId) < 0) {
                c1135d.m2752b(size);
            } else if (itemId == i) {
                item.setCheckable(true).setChecked(true);
            }
        }
        c1135d.m2747a(view);
    }

    /* renamed from: a */
    public static void m3779a(Context context, String str) {
        Integer m2275a = QuickApp.f2076s.m2275a(str, 'V');
        String m2287b = m2275a != null ? QuickApp.f2076s.m2287b(C0613ba.f2350b, new String[]{"mime_type"}, "_id=" + m2275a) : null;
        if (m2287b == null) {
            m2287b = C0690c.m2722a(str, 'V');
        }
        m3776a(context, Uri.fromFile(new File(str)), m2287b);
    }

    /* renamed from: a */
    public static boolean m3780a(Activity activity, Intent intent, int i) {
        try {
            activity.startActivityForResult(intent, i);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m3781a(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m3782a(Context context, String str, String str2) {
        return m3781a(context, new Intent(str, Uri.parse(str2)));
    }

    /* renamed from: b */
    public static void m3783b(Context context, View view) {
        MenuC0693b menuC0693b = new MenuC0693b(context);
        MenuC0693b.m2735a(context, R.menu.flip, menuC0693b);
        C1397l m4498a = C1387b.m4498a(context.getResources(), R.raw.ic_menu_flip, menuC0693b.f2624b);
        menuC0693b.findItem(R.id.flip_horz).setIcon(m4498a);
        menuC0693b.findItem(R.id.flip_vert).setIcon(new C1144m(m4498a.m4563a(), -1, -1));
        menuC0693b.m2749a(true);
        menuC0693b.m2747a(view);
    }

    /* renamed from: b */
    public static boolean m3784b(Context context, Uri uri, String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(uri, str);
        for (ResolveInfo resolveInfo : m3771a(context, intent, 0)) {
            String str2 = resolveInfo.activityInfo.applicationInfo.packageName;
            if (str2.contains(".android.gallery") || str2.startsWith("com.cooliris.media") || str2.startsWith("com.htc.album")) {
                m3774a(context, intent, resolveInfo);
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static void m3785c(Context context, View view) {
        MenuC0693b menuC0693b = new MenuC0693b(context);
        MenuC0693b.m2735a(context, R.menu.rotate, menuC0693b);
        C1397l m4498a = C1387b.m4498a(context.getResources(), R.raw.ic_menu_rotate, menuC0693b.f2624b);
        menuC0693b.findItem(R.id.rotate_right).setIcon(m4498a);
        menuC0693b.findItem(R.id.rotate_left).setIcon(new C1145n(m4498a.m4563a(), -1, -1));
        menuC0693b.findItem(R.id.rotate_180).setIcon(new C1134c(m4498a.m4563a(), -1, -1));
        menuC0693b.m2749a(true);
        menuC0693b.m2747a(view);
    }
}
