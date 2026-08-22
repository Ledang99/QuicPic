package com.alensw.p022a;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.a.am */
/* loaded from: classes.dex */
public class C0598am {

    /* renamed from: a */
    public static final Integer f2278a = -1;

    /* renamed from: g */
    private static final ConcurrentHashMap f2279g = new ConcurrentHashMap();

    /* renamed from: b */
    private boolean f2280b;

    /* renamed from: c */
    private int f2281c;

    /* renamed from: d */
    private String f2282d;

    /* renamed from: e */
    private final ContentResolver f2283e;

    /* renamed from: f */
    private final HashMap f2284f = new HashMap();

    public C0598am(ContentResolver contentResolver) {
        this.f2283e = contentResolver;
    }

    /* renamed from: a */
    public static void m2181a(ContentResolver contentResolver) {
        Cursor cursor;
        Cursor cursor2 = null;
        String[] strArr = {"bucket_id", "_data"};
        C0620bh c0620bh = QuickApp.f2073p;
        long currentTimeMillis = System.currentTimeMillis();
        for (Uri uri : C0613ba.f2353e) {
            try {
                cursor = contentResolver.query(uri, strArr, "1) GROUP BY (1", null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            do {
                                int i = cursor.getInt(0);
                                String string = cursor.getString(1);
                                if (string != null && c0620bh.m2326b(string) && !C0742b.m3007f(string)) {
                                    f2279g.put(C0742b.m3003d(string), Integer.valueOf(i));
                                }
                            } while (cursor.moveToNext());
                        }
                    } catch (Throwable th) {
                        if (cursor != null) {
                            cursor.close();
                        }
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        Log.d("SysMediaStore", "query: " + f2279g.size() + " albums, used=" + (System.currentTimeMillis() - currentTimeMillis));
    }

    /* renamed from: b */
    public static ArrayList m2182b() {
        ArrayList arrayList = new ArrayList(256);
        try {
            Enumeration keys = f2279g.keys();
            while (keys.hasMoreElements()) {
                arrayList.add(keys.nextElement());
            }
        } catch (Throwable th) {
        }
        return arrayList;
    }

    /* renamed from: d */
    public static boolean m2183d(String str) {
        if (str != null) {
            return f2279g.containsKey(str);
        }
        return false;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: e */
    public static Integer m2184e(String str) {
        if (str == null) {
            return null;
        }
        Integer num = (Integer) f2279g.get(str);
        if (num != null) {
            return num;
        }
        int length = str.length();
        if (length > 1 && str.charAt(length - 1) == File.separatorChar) {
            str = str.substring(0, length - 1);
        }
        return Integer.valueOf(str.toLowerCase().hashCode());
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: f */
    private void m2185f(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        this.f2282d = str;
        this.f2281c = this.f2282d.length();
        this.f2280b = C0742b.m3009h(this.f2282d) || C0742b.m3007f(this.f2282d);
        this.f2284f.clear();
        if (Build.VERSION.SDK_INT < 11) {
            Integer m2184e = m2184e(this.f2282d);
            boolean z = m2184e != null;
            String str2 = z ? "bucket_id=?" : "LOWER(_data) LIKE ?";
            String[] strArr = z ? new String[]{m2184e.toString()} : new String[]{this.f2282d.toLowerCase() + '%'};
            HashMap hashMap = this.f2284f;
            int i = this.f2281c;
            for (Uri uri : C0613ba.f2353e) {
                try {
                    cursor = MediaStore.Images.Media.query(this.f2283e, uri, C0613ba.f2358j, str2, strArr, null);
                    if (cursor != null) {
                        try {
                            if (cursor.moveToFirst()) {
                                do {
                                    int i2 = cursor.getInt(0);
                                    String string = cursor.getString(1);
                                    if (string.length() > i && (z || string.indexOf(File.separatorChar, i) == -1)) {
                                        hashMap.put(string.substring(i), Integer.valueOf(i2));
                                    }
                                } while (cursor.moveToNext());
                            }
                        } catch (Throwable th) {
                            cursor2 = cursor;
                            th = th;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th2) {
                    cursor = null;
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized Integer m2186a(String str) {
        Integer num;
        if (str != null) {
            if (this.f2282d != null && str.startsWith(this.f2282d)) {
                num = (Integer) this.f2284f.get(str.substring(this.f2281c));
                if (num == null) {
                    num = this.f2280b ? f2278a : null;
                }
            }
        }
        num = null;
        return num;
    }

    /* renamed from: a */
    public synchronized void m2187a() {
        this.f2284f.clear();
        this.f2282d = null;
        this.f2281c = 0;
        this.f2280b = false;
    }

    /* renamed from: a */
    public synchronized void m2188a(String str, int i) {
        if (this.f2282d != null && str.startsWith(this.f2282d)) {
            this.f2284f.put(str.substring(this.f2281c), Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public synchronized void m2189b(String str) {
        String m3006e = C0742b.m3006e(str);
        if (this.f2282d == null || !m3006e.equalsIgnoreCase(this.f2282d)) {
            m2185f(m3006e);
        }
    }

    /* renamed from: c */
    public synchronized Integer m2190c(String str) {
        Integer num;
        num = null;
        if (this.f2282d != null && str.startsWith(this.f2282d)) {
            num = (Integer) this.f2284f.remove(str.substring(this.f2281c));
        }
        return num;
    }
}
