package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: b.a.iy */
/* loaded from: classes.dex */
public class C0456iy {
    /* renamed from: a */
    public static SharedPreferences m1509a(Context context) {
        return context.getSharedPreferences("umeng_general_config", 0);
    }

    /* renamed from: a */
    public static SharedPreferences m1510a(Context context, String str) {
        return context.getSharedPreferences(str, 0);
    }
}
