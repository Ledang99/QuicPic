package com.alensw.p038ui.p039a;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p035l.C0742b;
import java.util.HashMap;

/* renamed from: com.alensw.ui.a.a */
/* loaded from: classes.dex */
public class C1047a {
    /* renamed from: a */
    private static void m3719a(Activity activity) {
        HashMap hashMap = new HashMap();
        hashMap.put("User-Agent", C0675b.m2654a(activity, QuickApp.f2068k));
        new C1067b(hashMap, activity).start();
    }

    /* renamed from: a */
    public static void m3720a(Activity activity, SharedPreferences sharedPreferences) {
        long currentTimeMillis = System.currentTimeMillis();
        long j = sharedPreferences.getLong("last_check_update", 0L);
        boolean z = j > 0 && j < currentTimeMillis - 604800000;
        if (j == 0 || z) {
            C0742b.m2978a(sharedPreferences.edit().putLong("last_check_update", currentTimeMillis));
        }
        if (z) {
            try {
                m3719a(activity);
            } catch (Throwable th) {
                Log.e("CheckUpdate", "check: ", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m3722b(Context context, String str, String str2, String str3) {
        AlertDialog m3734a = C1071f.m3734a(context, 0, (Object) str2);
        if (m3734a == null) {
            return;
        }
        m3734a.setTitle("发现新版本：" + str);
        m3734a.setButton(-1, "升级", new DialogInterfaceOnClickListenerC1069d(context, str3));
        m3734a.setButton(-2, context.getString(R.string.cancel), new DialogInterfaceOnClickListenerC1070e());
        C1071f.m3741a(m3734a);
    }
}
