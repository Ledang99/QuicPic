package com.alensw.p023b.p035l;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.provider.Settings;
import android.view.Display;
import android.view.WindowManager;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0621c;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p031h.C0707c;
import com.p043b.p044a.C1387b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* renamed from: com.alensw.b.l.b */
/* loaded from: classes.dex */
public class C0742b {

    /* renamed from: a */
    public static final char[] f2783a;

    /* renamed from: b */
    private static final Random f2784b = new Random(System.nanoTime());

    /* renamed from: c */
    private static final SimpleDateFormat f2785c = new SimpleDateFormat("yyyyMMdd'T'HHmmss.SSS'Z'");

    /* renamed from: d */
    private static Field f2786d;

    /* renamed from: e */
    private static final Pattern f2787e;

    /* renamed from: f */
    private static Handler f2788f;

    static {
        f2785c.setTimeZone(TimeZone.getTimeZone("UTC"));
        try {
            f2786d = ArrayList.class.getDeclaredField("array");
            f2786d.setAccessible(true);
        } catch (Throwable th) {
        }
        f2783a = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        f2787e = Pattern.compile("[\\\\/:*?\"<>|]");
    }

    /* renamed from: a */
    public static int m2958a(int i) {
        int nextInt;
        synchronized (f2784b) {
            nextInt = f2784b.nextInt(i);
        }
        return nextInt;
    }

    /* renamed from: a */
    public static int m2959a(PackageInfo packageInfo, byte[] bArr, byte[] bArr2) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            for (Signature signature : packageInfo.signatures) {
                messageDigest.update(signature.toByteArray());
                byte[] digest = messageDigest.digest();
                if (Arrays.equals(digest, bArr)) {
                    return 0;
                }
                if (Arrays.equals(digest, bArr2)) {
                    return 1;
                }
                messageDigest.reset();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return -1;
    }

    /* renamed from: a */
    public static int m2960a(String str, int i) {
        try {
            return Integer.valueOf(str).intValue();
        } catch (Throwable th) {
            return i;
        }
    }

    /* renamed from: a */
    public static int m2961a(String str, int i, boolean z) {
        try {
            File file = new File(str);
            long lastModified = file.lastModified();
            C0662f m3002d = m3002d(file);
            if (m3002d == null) {
                return -1;
            }
            int m2784a = C0707c.m2784a(m3002d, i, z);
            m3002d.m2601h();
            if (m2784a != -1) {
                file.setLastModified(lastModified);
            }
            return m2784a;
        } catch (Throwable th) {
            return -1;
        }
    }

    /* renamed from: a */
    public static int m2962a(List list, Object obj, Comparator comparator) {
        if (Build.VERSION.SDK_INT >= 9) {
            try {
                Object[] objArr = (Object[]) f2786d.get(list);
                if (objArr == null) {
                    throw new NoSuchFieldException();
                }
                return Arrays.binarySearch(objArr, 0, list.size(), obj, comparator);
            } catch (Throwable th) {
            }
        }
        return Collections.binarySearch(list, obj, comparator);
    }

    /* renamed from: a */
    public static long m2963a(File file, char c, long j) {
        String path = file.getPath();
        long lastModified = j == 0 ? file.lastModified() : j;
        if (c == 'I') {
            C0707c m2787a = C0707c.m2787a(path, true);
            if (m2787a == null) {
                return lastModified;
            }
            long m2789a = m2787a.m2789a(lastModified);
            m2787a.m2792a();
            return m2789a;
        }
        if (Build.VERSION.SDK_INT < 10) {
            return lastModified;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(path);
            String extractMetadata = mediaMetadataRetriever.extractMetadata(5);
            if (extractMetadata != null) {
                long time = f2785c.parse(extractMetadata).getTime();
                if (time > 0) {
                    lastModified = time;
                }
            }
            try {
                mediaMetadataRetriever.release();
                return lastModified;
            } catch (Throwable th) {
                return lastModified;
            }
        } catch (Throwable th2) {
            try {
                mediaMetadataRetriever.release();
            } catch (Throwable th3) {
            }
            throw th2;
        }
    }

    /* renamed from: a */
    public static long m2964a(String str, long j) {
        try {
            return Long.valueOf(str).longValue();
        } catch (Throwable th) {
            return j;
        }
    }

    /* renamed from: a */
    public static Point m2965a(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        try {
            Display.class.getMethod("getRealSize", Point.class).invoke(defaultDisplay, point);
        } catch (Throwable th) {
            point.set(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        }
        return point;
    }

    /* renamed from: a */
    public static Drawable m2966a(Resources resources, int i, int i2) {
        return m2967a(resources, i, i2, -1);
    }

    /* renamed from: a */
    public static Drawable m2967a(Resources resources, int i, int i2, int i3) {
        try {
            return C1387b.m4499a(resources, i, i2, i3);
        } catch (Throwable th) {
            try {
                return resources.getDrawable(i);
            } catch (Throwable th2) {
                return null;
            }
        }
    }

    /* renamed from: a */
    public static Drawable m2968a(Resources resources, String str) {
        try {
            return resources.getDrawable(resources.getIdentifier(str, "drawable", "android"));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static File m2969a(File file, String str) {
        if (file.exists()) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf > 0) {
                if (str == null) {
                    str = name.substring(lastIndexOf);
                }
                name = name.substring(0, lastIndexOf);
            }
            synchronized (C0742b.class) {
                int i = 1;
                while (true) {
                    int i2 = i;
                    file = new File(parentFile, name + (i2 < 10 ? "~0" : "~") + Integer.toString(i2) + str);
                    if (!file.exists()) {
                        break;
                    }
                    i = i2 + 1;
                }
            }
        }
        return file;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: a */
    public static String m2970a(long j) {
        int i = (int) ((500 + j) / 1000);
        int i2 = i % 60;
        int i3 = (i / 60) % 60;
        int i4 = i / 3600;
        return i4 > 0 ? String.format("%d:%02d:%02d", Integer.valueOf(i4), Integer.valueOf(i3), Integer.valueOf(i2)) : String.format("%02d:%02d", Integer.valueOf(i3), Integer.valueOf(i2));
    }

    /* renamed from: a */
    public static String m2971a(Resources resources, String str, String str2) {
        try {
            return resources.getString(resources.getIdentifier(str, "string", "android"));
        } catch (Throwable th) {
            return str2;
        }
    }

    /* renamed from: a */
    public static String m2972a(FileInputStream fileInputStream, String str) {
        try {
            FileChannel channel = fileInputStream.getChannel();
            long size = channel.size();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, size);
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            byte[] bArr = new byte[8192];
            long j = size / 8192;
            int i = (int) (size - (j * 8192));
            for (long j2 = 0; j2 < j; j2++) {
                map.get(bArr);
                messageDigest.update(bArr);
            }
            if (i > 0) {
                map.get(bArr, 0, i);
                messageDigest.update(bArr, 0, i);
            }
            return m2976a(messageDigest.digest());
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    public static String m2973a(String str, char c) {
        int i = 0;
        int length = str.length();
        while (i < length && str.charAt(i) == c) {
            i++;
        }
        while (i < length && str.charAt(length - 1) == c) {
            length--;
        }
        return i < length ? str.substring(i, length) : "";
    }

    /* renamed from: a */
    public static String m2974a(String str, double d, double d2) {
        return String.format(Locale.ENGLISH, str, Double.valueOf(d), Double.valueOf(d2));
    }

    /* renamed from: a */
    public static String m2975a(String str, boolean z) {
        int lastIndexOf = str != null ? str.lastIndexOf(46) : -1;
        if (lastIndexOf == -1) {
            return "";
        }
        String substring = str.substring(lastIndexOf + 1);
        return z ? substring.toLowerCase(Locale.ENGLISH) : substring;
    }

    /* renamed from: a */
    public static String m2976a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            cArr[i * 2] = f2783a[i2 >>> 4];
            cArr[(i * 2) + 1] = f2783a[i2 & 15];
        }
        return new String(cArr);
    }

    /* renamed from: a */
    public static void m2977a(Context context, Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            th.printStackTrace();
            th = cause;
        }
        th.printStackTrace();
        String message = th.getMessage();
        if (message == null || message.length() == 0) {
            message = th.getClass().getName();
        }
        m2998c(context, message);
    }

    /* renamed from: a */
    public static void m2978a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    /* renamed from: a */
    public static void m2979a(Canvas canvas, RectF rectF, float f, Paint paint) {
        canvas.drawRect(rectF.left, rectF.top, rectF.right, rectF.top + f, paint);
        canvas.drawRect(rectF.left, rectF.bottom - f, rectF.right, rectF.bottom, paint);
        canvas.drawRect(rectF.left, rectF.top + f, rectF.left + f, rectF.bottom - f, paint);
        canvas.drawRect(rectF.right - f, rectF.top + f, rectF.right, rectF.bottom - f, paint);
    }

    /* renamed from: a */
    public static boolean m2980a(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0) != null;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m2981a(C0662f c0662f, File file) {
        boolean fuCopyFD;
        try {
            C0662f m3002d = m3002d(file);
            fuCopyFD = (c0662f == null || m3002d == null) ? false : JniUtils.fuCopyFD(c0662f.m2596c(), m3002d.m2596c());
            if (m3002d != null) {
                m3002d.m2601h();
            }
        } catch (Throwable th) {
        }
        if (!fuCopyFD) {
            return false;
        }
        file.setLastModified(c0662f.m2599f());
        return c0662f.m2598e() == file.length() && file.length() > 0;
    }

    /* renamed from: a */
    public static boolean m2982a(File file) {
        try {
            if (file.mkdir()) {
                return true;
            }
        } catch (Throwable th) {
        }
        return C0621c.m2338a(file);
    }

    /* renamed from: a */
    public static boolean m2983a(File file, File file2) {
        try {
            C0662f m2591a = C0662f.m2591a(file, true);
            boolean m2981a = m2981a(m2591a, file2);
            if (m2591a == null) {
                return m2981a;
            }
            m2591a.m2601h();
            return m2981a;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m2984a(File file, boolean z) {
        if (z) {
            return m2994b(new File(file, ".nomedia"));
        }
        while (file != null) {
            File file2 = new File(file, ".nomedia");
            file = file.getParentFile();
            if (!m2999c(file2)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m2985a(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && (charAt < 'A' || charAt > 'F'))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m2986a(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null || str.length() != str2.length()) {
            return false;
        }
        return str.equals(str2);
    }

    /* renamed from: a */
    public static boolean m2987a(ArrayList arrayList, Comparator comparator) {
        try {
            Object[] objArr = (Object[]) f2786d.get(arrayList);
            if (objArr == null) {
                throw new NoSuchFieldException();
            }
            Arrays.sort(objArr, 0, arrayList.size(), comparator);
            return true;
        } catch (Throwable th) {
            return m2988a((List) arrayList, comparator);
        }
    }

    /* renamed from: a */
    public static boolean m2988a(List list, Comparator comparator) {
        try {
            Collections.sort(list, comparator);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: b */
    public static int m2989b(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        Configuration configuration = context.getResources().getConfiguration();
        int rotation = Build.VERSION.SDK_INT >= 8 ? windowManager.getDefaultDisplay().getRotation() : 0;
        return (((rotation == 0 || rotation == 2) && configuration.orientation == 2) || ((rotation == 1 || rotation == 3) && configuration.orientation == 1)) ? 2 : 1;
    }

    /* renamed from: b */
    public static File m2990b(Context context, String str) {
        File fileStreamPath = context.getFileStreamPath(str);
        if (!fileStreamPath.exists()) {
            File m2564a = C0658b.m2564a(context, str);
            if (m2564a.exists() && m2983a(m2564a, fileStreamPath)) {
                m2999c(m2564a);
            }
        }
        return fileStreamPath;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: b */
    public static String m2991b(int i) {
        float f;
        String str;
        float f2 = i;
        String str2 = "P";
        if (f2 > 900.0f) {
            str2 = "KP";
            f2 /= 1000.0f;
        }
        if (f2 > 900.0f) {
            str2 = "MP";
            f2 /= 1000.0f;
        }
        if (f2 > 900.0f) {
            f = f2 / 1000.0f;
            str = "GP";
        } else {
            String str3 = str2;
            f = f2;
            str = str3;
        }
        return (f < 1.0f ? String.format("%.2f", Float.valueOf(f)) : f < 10.0f ? String.format("%.1f", Float.valueOf(f)) : String.format("%.0f", Float.valueOf(f))) + str;
    }

    /* renamed from: b */
    public static String m2992b(String str) {
        return str != null ? str.substring(str.lastIndexOf(File.separatorChar) + 1) : "";
    }

    /* renamed from: b */
    public static String m2993b(String str, String str2) {
        int length = str != null ? str.length() : 0;
        return (length <= 0 || str.charAt(length + (-1)) == File.separatorChar) ? str == null ? File.separator + str2 : str + str2 : str + File.separatorChar + str2;
    }

    /* renamed from: b */
    public static boolean m2994b(File file) {
        if (file.exists()) {
            return true;
        }
        if (file.createNewFile()) {
            return true;
        }
        return C0621c.m2339b(file) != null;
    }

    /* renamed from: b */
    public static boolean m2995b(File file, String str) {
        File file2;
        try {
            file2 = new File(file.getParentFile(), str);
        } catch (Throwable th) {
        }
        if (file2.exists()) {
            return false;
        }
        if (file.renameTo(file2)) {
            return true;
        }
        return C0621c.m2341b(file, str);
    }

    /* renamed from: c */
    public static String m2996c(Context context) {
        String str;
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null && !"9774d56d682e549c".equals(string)) {
            return "a:" + string;
        }
        synchronized (C0742b.class) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("device_id.xml", 0);
            String string2 = sharedPreferences.getString("device_id", "");
            if (string2 == null || string2.length() == 0) {
                string2 = UUID.randomUUID().toString();
                m2978a(sharedPreferences.edit().putString("device_id", string2));
            }
            str = "r:" + string2;
        }
        return str;
    }

    /* renamed from: c */
    public static String m2997c(String str) {
        String m2992b = m2992b(str);
        int lastIndexOf = m2992b.lastIndexOf(46);
        return lastIndexOf != -1 ? m2992b.substring(0, lastIndexOf) : m2992b;
    }

    /* renamed from: c */
    public static void m2998c(Context context, String str) {
        RunnableC0743c runnableC0743c = new RunnableC0743c(context, str);
        if (context instanceof Activity) {
            ((Activity) context).runOnUiThread(runnableC0743c);
            return;
        }
        try {
            if (f2788f == null) {
                f2788f = new Handler(Looper.getMainLooper());
            }
            f2788f.post(runnableC0743c);
        } catch (Throwable th) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
    
        if (r1.exists() == false) goto L6;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m2999c(File file) {
        try {
            if (!file.delete()) {
            }
            return true;
        } catch (Throwable th) {
        }
        return C0621c.m2343c(file);
    }

    /* renamed from: c */
    public static boolean m3000c(String str, String str2) {
        int length;
        int length2;
        if (str == null || str2 == null || (length = str.length()) > (length2 = str2.length()) || !str2.startsWith(str)) {
            return false;
        }
        return length == length2 || str2.charAt(length) == File.separatorChar;
    }

    /* renamed from: d */
    public static int m3001d(Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            try {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
                int resourceId = obtainStyledAttributes.getResourceId(0, com.alensw.PicFolder.R.drawable.item_background);
                obtainStyledAttributes.recycle();
                return resourceId;
            } catch (Throwable th) {
            }
        }
        return com.alensw.PicFolder.R.drawable.item_background;
    }

    /* renamed from: d */
    public static C0662f m3002d(File file) {
        try {
            C0662f m2591a = C0662f.m2591a(file, false);
            if (m2591a != null) {
                return m2591a;
            }
        } catch (Throwable th) {
        }
        ParcelFileDescriptor m2336a = C0621c.m2336a(file, "rw");
        if (m2336a != null) {
            return new C0662f(Uri.fromFile(file), m2336a);
        }
        return null;
    }

    /* renamed from: d */
    public static String m3003d(String str) {
        int lastIndexOf;
        return (str == null || (lastIndexOf = str.lastIndexOf(File.separatorChar)) < 0) ? str : str.substring(0, lastIndexOf);
    }

    /* renamed from: e */
    public static Drawable m3004e(Context context) {
        return Build.VERSION.SDK_INT >= 21 ? context.getTheme().getDrawable(m3001d(context)) : context.getResources().getDrawable(m3001d(context));
    }

    /* renamed from: e */
    public static FileOutputStream m3005e(File file) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            if (fileOutputStream != null) {
                return fileOutputStream;
            }
        } catch (Throwable th) {
        }
        ParcelFileDescriptor m2336a = C0621c.m2336a(file, "rw");
        if (m2336a != null) {
            return new ParcelFileDescriptor.AutoCloseOutputStream(m2336a);
        }
        return null;
    }

    /* renamed from: e */
    public static String m3006e(String str) {
        int length = str != null ? str.length() : 0;
        String str2 = (length <= 0 || str.charAt(length + (-1)) == File.separatorChar) ? str : str + File.separatorChar;
        return str2 == null ? File.separator : str2;
    }

    /* renamed from: f */
    public static boolean m3007f(String str) {
        return str != null && str.contains("/.");
    }

    /* renamed from: g */
    public static String m3008g(String str) {
        return str == null ? "" : f2787e.matcher(str).replaceAll("_");
    }

    /* renamed from: h */
    public static boolean m3009h(String str) {
        if (str != null) {
            return JniUtils.fuHasNoMedia(str);
        }
        return false;
    }

    /* renamed from: i */
    public static boolean m3010i(String str) {
        return str != null && m2999c(new File(str));
    }
}
