package com.alensw.cloud.sync;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import com.alensw.p023b.p028e.C0675b;

/* renamed from: com.alensw.cloud.sync.x */
/* loaded from: classes.dex */
public class C0956x {
    /* renamed from: a */
    public static void m3463a(Context context) {
        m3464a(context, (String) null);
    }

    /* renamed from: a */
    public static void m3464a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("force", true);
        bundle.putBoolean("expedited", true);
        if (str != null) {
            bundle.putString("QuickPic.sync_task_id", str);
        }
        try {
            ContentResolver.requestSync(C0933a.m3416a(context), "com.alensw.PicFolder.cloud.sync", bundle);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0045 -> B:8:0x0025). Please report as a decompilation issue!!! */
    /* renamed from: a */
    public static void m3465a(Context context, boolean z) {
        try {
            Account m3416a = C0933a.m3416a(context);
            if (z) {
                ContentResolver.setIsSyncable(m3416a, "com.alensw.PicFolder.cloud.sync", 1);
                ContentResolver.setSyncAutomatically(m3416a, "com.alensw.PicFolder.cloud.sync", true);
                if (Build.VERSION.SDK_INT >= 8) {
                    ContentResolver.addPeriodicSync(m3416a, "com.alensw.PicFolder.cloud.sync", new Bundle(), 21600L);
                }
            } else {
                ContentResolver.cancelSync(m3416a, "com.alensw.PicFolder.cloud.sync");
                ContentResolver.setIsSyncable(m3416a, "com.alensw.PicFolder.cloud.sync", 0);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, (Class<?>) ConnectionChangeReceiver.class), z ? 1 : 2, 1);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* renamed from: a */
    public static boolean m3466a(Context context, Account account) {
        try {
            return ((AccountManager) context.getSystemService("account")).addAccountExplicitly(account, null, null);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m3467a(Context context, SharedPreferences sharedPreferences) {
        if (sharedPreferences.getBoolean("only_wifi", true) && C0675b.m2650a(context) != 1) {
            Log.i("SyncUtils", "no wifi");
            return false;
        }
        if (!sharedPreferences.getBoolean("only_charging", false) || m3469c(context)) {
            return true;
        }
        Log.i("SyncUtils", "no charging");
        return false;
    }

    /* renamed from: b */
    public static long[] m3468b(Context context) {
        long[] jArr = new long[2];
        for (C0952t c0952t : C0936d.m3420a(context.getContentResolver()).values()) {
            if (jArr[0] < c0952t.f3332a) {
                jArr[0] = c0952t.f3332a;
            }
            if (jArr[1] < c0952t.f3335d) {
                jArr[1] = c0952t.f3335d;
            }
        }
        return jArr;
    }

    /* renamed from: c */
    public static boolean m3469c(Context context) {
        try {
            int intExtra = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED")).getIntExtra("plugged", 0);
            return intExtra == 1 || intExtra == 2 || intExtra == 4;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: d */
    public static boolean m3470d(Context context) {
        return m3467a(context, m3471e(context));
    }

    /* renamed from: e */
    public static SharedPreferences m3471e(Context context) {
        return context.getSharedPreferences("cloud_backup", 0);
    }
}
