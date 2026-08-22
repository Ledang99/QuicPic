package p012b.p013a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Locale;

/* renamed from: b.a.gd */
/* loaded from: classes.dex */
public class C0381gd {

    /* renamed from: a */
    protected static final String f1456a = C0381gd.class.getName();

    /* renamed from: a */
    private static int m1258a(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    /* renamed from: a */
    public static String m1259a() {
        String str = null;
        try {
            FileReader fileReader = new FileReader("/proc/cpuinfo");
            if (fileReader != null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                    str = bufferedReader.readLine();
                    bufferedReader.close();
                    fileReader.close();
                } catch (IOException e) {
                    C0382ge.m1282b(f1456a, "Could not read from file /proc/cpuinfo", e);
                }
            }
        } catch (FileNotFoundException e2) {
            C0382ge.m1282b(f1456a, "Could not open file /proc/cpuinfo", e2);
        }
        return str != null ? str.substring(str.indexOf(58) + 1).trim() : "";
    }

    /* renamed from: a */
    public static String m1260a(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /* renamed from: a */
    public static boolean m1261a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }

    /* renamed from: b */
    public static String m1262b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m1263c(Context context) {
        String str;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            C0382ge.m1285d(f1456a, "No IMEI.");
        }
        try {
        } catch (Exception e) {
            C0382ge.m1284c(f1456a, "No IMEI.", e);
        }
        if (m1261a(context, "android.permission.READ_PHONE_STATE")) {
            str = telephonyManager.getDeviceId();
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            C0382ge.m1285d(f1456a, "No IMEI.");
            String m1271k = m1271k(context);
            if (!TextUtils.isEmpty(m1271k)) {
                return m1271k;
            }
            C0382ge.m1285d(f1456a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            C0382ge.m1279a(f1456a, "getDeviceId: Secure.ANDROID_ID: " + string);
            return string;
        }
        str = "";
        if (TextUtils.isEmpty(str)) {
        }
    }

    /* renamed from: d */
    public static String m1264d(Context context) {
        return C0385gh.m1304b(m1263c(context));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0023, code lost:
    
        r0 = r1;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] m1265e(Context context) {
        String[] strArr;
        String[] strArr2 = {"", ""};
        try {
        } catch (Exception e) {
            e.printStackTrace();
            strArr = strArr2;
        }
        if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) != 0) {
            strArr2[0] = "";
            strArr = strArr2;
        } else {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                strArr2[0] = "";
                strArr = strArr2;
            } else if (connectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED) {
                strArr2[0] = "Wi-Fi";
                strArr = strArr2;
            } else {
                NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    strArr2[0] = "2G/3G";
                    strArr2[1] = networkInfo.getSubtypeName();
                    strArr = strArr2;
                }
                strArr = strArr2;
            }
        }
        return strArr;
    }

    /* renamed from: f */
    public static boolean m1266f(Context context) {
        return "Wi-Fi".equals(m1265e(context)[0]);
    }

    /* renamed from: g */
    public static boolean m1267g(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnectedOrConnecting();
            }
            return false;
        } catch (Exception e) {
            return true;
        }
    }

    /* renamed from: h */
    public static int m1268h(Context context) {
        try {
            Calendar calendar = Calendar.getInstance(m1278r(context));
            if (calendar != null) {
                return calendar.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (Exception e) {
            C0382ge.m1280a(f1456a, "error in getTimeZone", e);
        }
        return 8;
    }

    /* renamed from: i */
    public static String[] m1269i(Context context) {
        String[] strArr = new String[2];
        try {
            Locale m1278r = m1278r(context);
            if (m1278r != null) {
                strArr[0] = m1278r.getCountry();
                strArr[1] = m1278r.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
        } catch (Exception e) {
            C0382ge.m1282b(f1456a, "error in getLocaleInfo", e);
        }
        return strArr;
    }

    /* renamed from: j */
    public static String m1270j(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                if (string != null) {
                    return string.trim();
                }
                C0382ge.m1281b(f1456a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
            }
        } catch (Exception e) {
            C0382ge.m1282b(f1456a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", e);
        }
        return null;
    }

    /* renamed from: k */
    public static String m1271k(Context context) {
        WifiManager wifiManager;
        try {
            wifiManager = (WifiManager) context.getSystemService("wifi");
        } catch (Exception e) {
            C0382ge.m1285d(f1456a, "Could not get mac address." + e.toString());
        }
        if (m1261a(context, "android.permission.ACCESS_WIFI_STATE")) {
            return wifiManager.getConnectionInfo().getMacAddress();
        }
        C0382ge.m1285d(f1456a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
        return "";
    }

    /* renamed from: l */
    public static int[] m1272l(Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if ((context.getApplicationInfo().flags & 8192) == 0) {
                i2 = m1258a(displayMetrics, "noncompatWidthPixels");
                i = m1258a(displayMetrics, "noncompatHeightPixels");
            } else {
                i = -1;
                i2 = -1;
            }
            if (i2 == -1 || i == -1) {
                i3 = displayMetrics.widthPixels;
                i4 = displayMetrics.heightPixels;
            } else {
                i3 = i2;
                i4 = i;
            }
            int[] iArr = new int[2];
            if (i3 > i4) {
                iArr[0] = i4;
                iArr[1] = i3;
                return iArr;
            }
            iArr[0] = i3;
            iArr[1] = i4;
            return iArr;
        } catch (Exception e) {
            C0382ge.m1282b(f1456a, "read resolution fail", e);
            return null;
        }
    }

    /* renamed from: m */
    public static String m1273m(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            C0382ge.m1280a(f1456a, "read carrier fail", e);
            return "Unknown";
        }
    }

    /* renamed from: n */
    public static String m1274n(Context context) {
        Object obj;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null && (obj = applicationInfo.metaData.get("UMENG_CHANNEL")) != null) {
                String obj2 = obj.toString();
                if (obj2 != null) {
                    return obj2;
                }
                C0382ge.m1279a(f1456a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
                return "Unknown";
            }
        } catch (Exception e) {
            C0382ge.m1279a(f1456a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            e.printStackTrace();
        }
        return "Unknown";
    }

    /* renamed from: o */
    public static String m1275o(Context context) {
        return context.getPackageName();
    }

    /* renamed from: p */
    public static String m1276p(Context context) {
        return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }

    /* renamed from: q */
    public static boolean m1277q(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: r */
    private static Locale m1278r(Context context) {
        Locale locale = null;
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(context.getContentResolver(), configuration);
            if (configuration != null) {
                locale = configuration.locale;
            }
        } catch (Exception e) {
            C0382ge.m1281b(f1456a, "fail to read user config locale");
        }
        return locale == null ? Locale.getDefault() : locale;
    }
}
