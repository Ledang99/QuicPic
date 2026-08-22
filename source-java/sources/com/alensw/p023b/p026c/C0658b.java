package com.alensw.p023b.p026c;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import java.io.File;
import java.util.Locale;

/* renamed from: com.alensw.b.c.b */
/* loaded from: classes.dex */
public class C0658b {

    /* renamed from: a */
    public static final File f2529a = Environment.getExternalStorageDirectory();

    /* renamed from: b */
    public static final String f2530b = f2529a.getPath();

    /* renamed from: a */
    public static File m2562a() {
        return new File(f2529a, Build.VERSION.SDK_INT >= 8 ? Environment.DIRECTORY_DOWNLOADS : "Download");
    }

    /* renamed from: a */
    public static File m2563a(Context context) {
        File m2565a = m2565a(f2529a, "Android", "data", context.getPackageName());
        if (!m2565a.exists()) {
            m2565a.mkdirs();
        }
        return m2565a;
    }

    /* renamed from: a */
    public static File m2564a(Context context, String str) {
        return new File(m2563a(context), str);
    }

    /* renamed from: a */
    public static File m2565a(File file, String... strArr) {
        int length = strArr.length;
        int i = 0;
        File file2 = file;
        while (i < length) {
            String str = strArr[i];
            i++;
            file2 = file2 == null ? new File(str) : str != null ? new File(file2, str) : file2;
        }
        return file2;
    }

    /* renamed from: a */
    public static void m2566a(File file) {
        file.listFiles(new C0659c());
        file.delete();
    }

    /* renamed from: b */
    public static File m2567b(Context context) {
        File file = new File(m2563a(context), "cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: b */
    public static File m2568b(Context context, String str) {
        return new File(m2567b(context), str);
    }

    /* renamed from: c */
    public static File m2569c(Context context) {
        File file = new File(m2567b(context), ".temp");
        if (file.exists()) {
            if (file.lastModified() + 10800000 < System.currentTimeMillis()) {
                m2566a(file);
            }
            return file;
        }
        file.mkdirs();
        return file;
    }

    /* renamed from: c */
    public static File m2570c(Context context, String str) {
        int lastIndexOf = str.lastIndexOf(File.separatorChar);
        if (lastIndexOf >= 0 && lastIndexOf < str.length() - 1) {
            str = str.substring(lastIndexOf + 1);
        }
        int lastIndexOf2 = str.lastIndexOf(46);
        if (lastIndexOf2 != -1) {
            str = str.substring(0, lastIndexOf2) + str.substring(lastIndexOf2).toLowerCase(Locale.ENGLISH);
        }
        return new File(m2569c(context), str);
    }
}
