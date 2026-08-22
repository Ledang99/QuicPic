package com.alensw.p023b.p029f;

import android.webkit.MimeTypeMap;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p035l.C0742b;
import java.lang.reflect.Method;
import java.util.HashMap;

/* renamed from: com.alensw.b.f.c */
/* loaded from: classes.dex */
public class C0690c {

    /* renamed from: a */
    public static final String[][] f2606a = {new String[]{"jpg", "jpeg", "avif", "png", "gif", "webp", "heic", "heif"}, new String[]{"bmp"}, new String[]{"3gp", "3gpp", "webm", "avi", "mp4", "mkv", "mov", "m4v", "mpeg"}, new String[]{"asf", "divx", "flv", "k3g", "mpg", "m2ts", "mts", "rm", "rmvb", "skm", "ts", "wmv", "3g2"}};

    /* renamed from: b */
    private static final String[][] f2607b = {new String[]{"asf", "x-ms-asf"}, new String[]{"bmp", "x-ms-bmp"}, new String[]{"jpg", "jpeg"}, new String[]{"mkv", "x-matroska"}, new String[]{"mov", "mp4"}, new String[]{"wbmp", "vnd.wap.wbmp"}, new String[]{"webm", "x-matroska"}, new String[]{"wmv", "x-ms-wmv"}};

    /* renamed from: c */
    private static final HashMap f2608c = new HashMap(64);

    /* renamed from: d */
    private static final HashMap f2609d = new HashMap(16);

    /* renamed from: e */
    private static boolean f2610e;

    /* renamed from: f */
    private static Object f2611f;

    /* renamed from: g */
    private static Method f2612g;

    static {
        int i = 0;
        while (i < f2606a.length) {
            for (String str : f2606a[i]) {
                f2608c.put(str, Character.valueOf(i < 2 ? 'I' : 'V'));
            }
            i++;
        }
        for (String[] strArr : f2607b) {
            f2609d.put(strArr[0], strArr[1]);
        }
    }

    /* renamed from: a */
    public static char m2721a(String str) {
        Character ch = (Character) f2608c.get(C0742b.m2975a(str, true));
        if (ch != null) {
            return ch.charValue();
        }
        return (char) 0;
    }

    /* renamed from: a */
    public static String m2722a(String str, char c) {
        Character ch;
        String m2975a = C0742b.m2975a(str, true);
        if (c == 0 && (ch = (Character) f2608c.get(m2975a)) != null) {
            c = ch.charValue();
        }
        String str2 = (String) f2609d.get(m2975a);
        if (str2 != null && c != 0) {
            return c == 'V' ? "video/" + str2 : "image/" + str2;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(m2975a);
        return mimeTypeFromExtension == null ? c == 'V' ? "video/" + m2975a : "image/" + m2975a : mimeTypeFromExtension;
    }

    /* renamed from: a */
    public static String m2723a(String str, String str2) {
        if (str == null || str2 == null) {
            return str;
        }
        String substring = str2.substring(str2.indexOf(47) + 1);
        return !"*".equals(substring) ? str + "." + substring : str;
    }

    /* renamed from: b */
    public static String m2724b(String str) {
        return m2722a(str, (char) 0);
    }

    /* renamed from: c */
    public static boolean m2725c(String str) {
        int length = str.length();
        if (length >= 10 && str.regionMatches(true, length - 4, ".jpg", 0, 4)) {
            if (str.regionMatches(true, 0, "AlbumArt_{", 0, 10) || str.regionMatches(true, 0, "AlbumArt.", 0, 9)) {
                return true;
            }
            if (length == 17 && str.regionMatches(true, 0, "AlbumArtSmall", 0, 13)) {
                return true;
            }
            if (length == 10 && str.regionMatches(true, 0, "Folder", 0, 6)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m2726d(String str) {
        boolean z;
        synchronized (C0690c.class) {
            if (!f2610e && f2612g == null) {
                try {
                    Class<?> cls = Class.forName("android.media.MediaFile");
                    f2611f = cls.newInstance();
                    f2612g = cls.getMethod("getFileType", String.class);
                } catch (Throwable th) {
                    f2610e = true;
                }
            }
        }
        try {
            z = f2612g.invoke(f2611f, new StringBuilder().append("0.").append(str).toString()) != null;
        } catch (Throwable th2) {
            z = false;
        }
        return (z || QuickApp.f2067j != 2) ? z : "asf".equals(str) || "divx".equals(str) || "wmv".equals(str);
    }
}
