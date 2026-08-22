package p012b.p013a;

import android.util.Log;

/* renamed from: b.a.ge */
/* loaded from: classes.dex */
public class C0382ge {

    /* renamed from: a */
    public static boolean f1457a = false;

    /* renamed from: a */
    public static void m1279a(String str, String str2) {
        if (f1457a) {
            Log.i(str, str2);
        }
    }

    /* renamed from: a */
    public static void m1280a(String str, String str2, Exception exc) {
        if (f1457a) {
            Log.i(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
        }
    }

    /* renamed from: b */
    public static void m1281b(String str, String str2) {
        if (f1457a) {
            Log.e(str, str2);
        }
    }

    /* renamed from: b */
    public static void m1282b(String str, String str2, Exception exc) {
        if (f1457a) {
            Log.e(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
                Log.e(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }

    /* renamed from: c */
    public static void m1283c(String str, String str2) {
        if (f1457a) {
            Log.d(str, str2);
        }
    }

    /* renamed from: c */
    public static void m1284c(String str, String str2, Exception exc) {
        if (f1457a) {
            Log.w(str, String.valueOf(exc.toString()) + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exc.getStackTrace()) {
                Log.w(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }

    /* renamed from: d */
    public static void m1285d(String str, String str2) {
        if (f1457a) {
            Log.w(str, str2);
        }
    }
}
