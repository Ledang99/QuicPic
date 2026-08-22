package com.alensw.p022a;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.provider.MediaStore;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.alensw.a.ba */
/* loaded from: classes.dex */
public class C0613ba {

    /* renamed from: a */
    public static final Uri f2349a = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;

    /* renamed from: b */
    public static final Uri f2350b = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;

    /* renamed from: c */
    public static final Uri f2351c = MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI;

    /* renamed from: d */
    public static final Uri f2352d = MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI;

    /* renamed from: e */
    public static final Uri[] f2353e = {f2349a, f2350b};

    /* renamed from: f */
    public static final String[] f2354f = {"volume"};

    /* renamed from: g */
    public static final String[] f2355g = {"bucket_id"};

    /* renamed from: h */
    public static final String[] f2356h = {"_data"};

    /* renamed from: i */
    public static final String[] f2357i = {"_id"};

    /* renamed from: j */
    public static final String[] f2358j = {"_id", "_data"};

    /* renamed from: k */
    public static final String[] f2359k = {"date_modified", "_size", "mini_thumb_magic", "mime_type"};

    /* renamed from: l */
    public static final String[] f2360l = {"_data", "date_modified", "datetaken"};

    /* renamed from: m */
    public static final String[] f2361m = {"_data", "_size"};

    /* renamed from: n */
    public static final String f2362n = C0623e.f2410b + File.separatorChar + "DCIM" + File.separatorChar + ".thumbnails" + File.separatorChar;

    /* renamed from: o */
    private final ContentResolver f2363o;

    /* renamed from: p */
    private final C0598am f2364p;

    /* renamed from: q */
    private final C0599an f2365q;

    /* renamed from: r */
    private final MediaScannerConnection.MediaScannerConnectionClient f2366r = new C0614bb(this);

    public C0613ba(Context context) {
        this.f2363o = context.getContentResolver();
        this.f2364p = new C0598am(this.f2363o);
        this.f2365q = new C0599an(context, this.f2366r);
    }

    /* renamed from: a */
    public static Uri m2269a(char c) {
        switch (c) {
            case 'A':
                return MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
            case 'I':
                return f2349a;
            case 'V':
                return f2350b;
            default:
                return Build.VERSION.SDK_INT >= 11 ? MediaStore.Files.getContentUri("external") : f2349a;
        }
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: c */
    public static String m2271c(String str) {
        return C0742b.m3006e(str).toLowerCase() + '%';
    }

    /* renamed from: a */
    public int m2272a(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        try {
            return this.f2363o.update(uri, contentValues, str, strArr);
        } catch (Throwable th) {
            Log.e("SysMediaStore", "update: ", th);
            return -1;
        }
    }

    /* renamed from: a */
    protected int m2273a(Uri uri, String str, String[] strArr) {
        try {
            return this.f2363o.delete(uri, str, strArr);
        } catch (Throwable th) {
            Log.e("SysMediaStore", "remove: ", th);
            return -1;
        }
    }

    /* renamed from: a */
    public Integer m2274a(Uri uri, String[] strArr, String str, String[] strArr2) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = MediaStore.Images.Media.query(this.f2363o, uri, strArr, str, strArr2, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        Integer valueOf = Integer.valueOf(cursor.getInt(0));
                        if (cursor == null) {
                            return valueOf;
                        }
                        cursor.close();
                        return valueOf;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        return null;
    }

    /* renamed from: a */
    public Integer m2275a(String str, char c) {
        Integer m2186a = this.f2364p.m2186a(str);
        if (m2186a == C0598am.f2278a) {
            return null;
        }
        if (m2186a != null) {
            return m2186a;
        }
        Integer m2274a = m2274a(m2269a(c), f2357i, "_data=?", new String[]{str});
        if (m2274a == null) {
            return null;
        }
        this.f2364p.m2188a(str, m2274a.intValue());
        return m2274a;
    }

    /* renamed from: a */
    public Long m2276a(Uri uri, String[] strArr, String str) {
        Cursor cursor;
        Throwable th;
        Long l = null;
        try {
            cursor = MediaStore.Images.Media.query(this.f2363o, uri, strArr, str, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        l = Long.valueOf(cursor.getLong(0));
                    }
                } catch (Throwable th2) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return l;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
        }
        return l;
    }

    /* renamed from: a */
    public String m2277a(Uri uri) {
        String str = null;
        if (uri == null) {
            return null;
        }
        if ("file".equals(uri.getScheme())) {
            return uri.getPath();
        }
        String authority = uri.getAuthority();
        if ("media".equals(authority)) {
            String queryParameter = uri.getQueryParameter("bucketId");
            str = queryParameter != null ? m2288b(queryParameter) : MediaStore.Images.Media.EXTERNAL_CONTENT_URI.equals(uri) ? m2288b((String) null) : m2286b(uri);
        } else if ("downloads".equals(authority)) {
            str = m2286b(uri);
        } else if (C0725a.m2924d(uri)) {
            try {
                String m2916b = C0725a.m2916b(uri);
                int indexOf = m2916b.indexOf(58);
                if (indexOf >= 0) {
                    String substring = m2916b.substring(0, indexOf);
                    String substring2 = m2916b.substring(indexOf + 1);
                    String m2328d = QuickApp.f2073p.m2328d(substring);
                    if (m2328d != null) {
                        str = new File(m2328d, substring2).getPath();
                    } else if ("image".equals(substring)) {
                        str = m2287b(f2349a, f2356h, "_id=" + substring2);
                    } else if ("video".equals(substring)) {
                        str = m2287b(f2350b, f2356h, "_id=" + substring2);
                    }
                } else if ("com.android.providers.downloads.documents".equals(authority)) {
                    str = m2286b(ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(m2916b).longValue()));
                }
            } catch (Throwable th) {
                Log.e("SysMediaStore", "get path: ", th);
            }
        }
        if (str != null) {
            return str;
        }
        Log.w("SysMediaStore", "get path: " + str + ", uri=" + uri);
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009d A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HashMap m2278a(String str, String[] strArr) {
        Cursor cursor;
        HashMap hashMap;
        Integer m2184e = C0598am.m2184e(str);
        String m3006e = C0742b.m3006e(str);
        int length = m3006e.length();
        boolean z = m2184e != null;
        String str2 = z ? "bucket_id=?" : "LOWER(_data) LIKE ?";
        String[] strArr2 = z ? new String[]{m2184e.toString()} : new String[]{m2271c(m3006e)};
        int length2 = strArr.length - 1;
        HashMap hashMap2 = null;
        Uri[] uriArr = f2353e;
        int length3 = uriArr.length;
        int i = 0;
        while (i < length3) {
            try {
                cursor = MediaStore.Images.Media.query(this.f2363o, uriArr[i], strArr, str2, strArr2, null);
            } catch (Throwable th) {
                cursor = null;
                hashMap = hashMap2;
            }
            if (cursor != null) {
                try {
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    hashMap = hashMap2;
                }
                if (cursor.moveToFirst()) {
                    hashMap = hashMap2 == null ? new HashMap(Math.max(cursor.getCount(), 256)) : hashMap2;
                    do {
                        try {
                            String string = cursor.getString(0);
                            if (string.length() > length && (z || string.indexOf(File.separatorChar, length) == -1)) {
                                long[] jArr = new long[length2];
                                for (int i2 = 0; i2 < length2; i2++) {
                                    jArr[i2] = cursor.getLong(i2 + 1);
                                }
                                hashMap.put(string.substring(length), jArr);
                            }
                        } catch (Throwable th4) {
                            if (cursor != null) {
                                cursor.close();
                            }
                            i++;
                            hashMap2 = hashMap;
                        }
                    } while (cursor.moveToNext());
                    if (cursor == null) {
                        cursor.close();
                    }
                    i++;
                    hashMap2 = hashMap;
                }
            }
            hashMap = hashMap2;
            if (cursor == null) {
            }
            i++;
            hashMap2 = hashMap;
        }
        return hashMap2;
    }

    /* renamed from: a */
    public void m2279a() {
        this.f2364p.m2187a();
    }

    /* renamed from: a */
    public void m2280a(String str) {
        this.f2364p.m2189b(str);
    }

    /* renamed from: a */
    public void m2281a(String str, ArrayList arrayList) {
        if (str == null || arrayList == null || C0742b.m3007f(str) || C0742b.m3009h(str)) {
            return;
        }
        String m3006e = C0742b.m3006e(str);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            this.f2365q.m2193b(m3006e + ((String) it.next()));
        }
    }

    /* renamed from: a */
    public boolean m2282a(String str, char c, boolean z) {
        if (str == null) {
            return false;
        }
        this.f2365q.m2192a(str);
        Uri m2269a = m2269a(c);
        Integer m2190c = this.f2364p.m2190c(str);
        if (!z) {
            String str2 = (m2190c != null ? "_id" : "_data") + "=?";
            String[] strArr = new String[1];
            if (m2190c != null) {
                str = m2190c.toString();
            }
            strArr[0] = str;
            return m2273a(m2269a, str2, strArr) > 0;
        }
        Integer m2274a = m2190c == null ? m2274a(m2269a(c), f2357i, "_data=?", new String[]{str}) : m2190c;
        if (m2274a == null) {
            return false;
        }
        String[] strArr2 = {m2274a.toString()};
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", "");
        if (m2272a(m2269a, contentValues, "_id=?", strArr2) > 0) {
            return m2273a(m2269a, "_id=?", strArr2) > 0;
        }
        return false;
    }

    /* renamed from: a */
    public boolean m2283a(String str, int i) {
        Integer m2275a = m2275a(str, 'I');
        if (m2275a == null) {
            return false;
        }
        String str2 = "_id=" + m2275a;
        Long m2276a = m2276a(f2349a, new String[]{"datetaken"}, str2);
        ContentValues contentValues = new ContentValues();
        contentValues.put("orientation", Integer.valueOf(i));
        contentValues.put("date_modified", Integer.valueOf(JniUtils.fuGetFileTime(str)));
        if (m2276a != null) {
            contentValues.put("datetaken", m2276a);
        }
        return m2272a(f2349a, contentValues, str2, (String[]) null) > 0;
    }

    /* renamed from: a */
    public String[] m2284a(String str, char c, String[] strArr) {
        Integer m2275a = m2275a(str, c);
        String str2 = (m2275a != null ? "_id" : "_data") + "=?";
        String[] strArr2 = new String[1];
        if (m2275a != null) {
            str = m2275a.toString();
        }
        strArr2[0] = str;
        return m2290b(m2269a(c), strArr, str2, strArr2);
    }

    /* renamed from: b */
    public Uri m2285b(String str, char c) {
        if (m2275a(str, c) != null) {
            return ContentUris.withAppendedId(m2269a(c), r0.intValue());
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m2286b(Uri uri) {
        Cursor cursor;
        String string;
        Cursor cursor2 = null;
        try {
            Cursor query = this.f2363o.query(uri, f2356h, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        string = query.getString(0);
                        if (query != null) {
                            return string;
                        }
                        query.close();
                        return string;
                    }
                } catch (Throwable th) {
                    cursor = query;
                    if (cursor == null) {
                        return null;
                    }
                    cursor.close();
                    return null;
                }
            }
            string = null;
            if (query != null) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    public String m2287b(Uri uri, String[] strArr, String str) {
        Cursor cursor;
        Throwable th;
        String str2 = null;
        try {
            cursor = MediaStore.Images.Media.query(this.f2363o, uri, strArr, str, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        str2 = cursor.getString(0);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th3) {
            cursor = null;
            th = th3;
        }
        return str2;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: b */
    public String m2288b(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            Cursor query = MediaStore.Images.Media.query(this.f2363o, f2349a.buildUpon().appendQueryParameter("limit", "1").build(), f2356h, str != null ? "bucket_id=?" : "LOWER(_data) LIKE ?", str != null ? new String[]{str} : new String[]{C0623e.f2410b.toLowerCase() + '%'}, "datetaken DESC");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(0);
                        if (query == null) {
                            return string;
                        }
                        query.close();
                        return string;
                    }
                } catch (Throwable th) {
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    return null;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return null;
    }

    /* renamed from: b */
    protected void m2289b() {
        for (Uri uri : new Uri[]{f2351c, f2352d}) {
            m2273a(uri, (String) null, (String[]) null);
        }
        for (Uri uri2 : f2353e) {
            String str = f2362n + ".thumbdata3-" + uri2.hashCode();
            C0742b.m3010i(str);
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        C0742b.m3010i(f2362n + "image_last_thumb");
        C0742b.m3010i(f2362n + "video_last_thumb");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004e  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String[] m2290b(Uri uri, String[] strArr, String str, String[] strArr2) {
        Cursor cursor;
        Cursor cursor2 = null;
        String[] strArr3 = new String[strArr.length];
        try {
            try {
                cursor = MediaStore.Images.Media.query(this.f2363o, uri, strArr, str, strArr2, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            for (int i = 0; i < strArr3.length; i++) {
                                strArr3[i] = cursor.getString(i);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        Log.e("SysMediaStore", "query values: " + th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return strArr3;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
            }
            throw th;
        }
        return strArr3;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002b  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m2291c() {
        Cursor cursor;
        boolean z;
        boolean z2 = true;
        try {
            cursor = this.f2363o.query(MediaStore.getMediaScannerUri(), f2354f, null, null, null);
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        if (cursor != null) {
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    Log.e("SysMediaStore", "scanning: ", th);
                    if (cursor != null) {
                        cursor.close();
                    }
                    return z2;
                }
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    if (string != null) {
                        if (string.length() > 0) {
                            z = true;
                            z2 = z;
                            if (cursor != null) {
                                cursor.close();
                            }
                            return z2;
                        }
                    }
                    z = false;
                    z2 = z;
                    if (cursor != null) {
                    }
                    return z2;
                }
            } catch (Throwable th3) {
                th = th3;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        z2 = false;
        if (cursor != null) {
        }
        return z2;
    }

    @SuppressLint({"DefaultLocale"})
    @TargetApi(14)
    /* renamed from: d */
    public boolean m2292d(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        String[] strArr = {m2271c(str)};
        if (Build.VERSION.SDK_INT >= 16) {
            contentValues.put("media_type", (Integer) 0);
            int i = 0;
            for (Uri uri : f2353e) {
                int m2272a = m2272a(uri, contentValues, "LOWER(_data) LIKE ?", strArr);
                if (m2272a < 0) {
                    return false;
                }
                i += m2272a;
            }
            Log.d("SysMediaStore", "update folder: " + str + ", count=" + i);
            this.f2364p.m2187a();
            return true;
        }
        contentValues.put("_data", "");
        Uri[] uriArr = f2353e;
        int length = uriArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int m2272a2 = m2272a(uriArr[i2], contentValues, "LOWER(_data) LIKE ?", strArr);
            if (m2272a2 < 0) {
                return false;
            }
            i2++;
            i3 = m2272a2 + i3;
        }
        Log.d("SysMediaStore", "update folder: " + str + ", count=" + i3);
        String[] strArr2 = {""};
        for (Uri uri2 : f2353e) {
            int m2273a = m2273a(uri2, "_data=?", strArr2);
            if (m2273a >= 0) {
                i3 -= m2273a;
            }
        }
        Log.d("SysMediaStore", "folder remain: " + str + ", count=" + i3);
        this.f2364p.m2187a();
        return i3 == 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008e  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m2293e(String str) {
        int i;
        Throwable th;
        Cursor cursor;
        Cursor cursor2;
        String string;
        int i2 = 0;
        if (Build.VERSION.SDK_INT < 16 || C0742b.m3007f(str) || C0742b.m3009h(str)) {
            i = 0;
        } else {
            try {
                cursor2 = this.f2363o.query(MediaStore.Files.getContentUri("external"), new String[]{"media_type", "_data"}, "LOWER(_data) LIKE ?", new String[]{m2271c(str)}, null);
                if (cursor2 != null) {
                    try {
                        if (cursor2.moveToFirst()) {
                            do {
                                if (cursor2.getInt(0) == 0 && (string = cursor2.getString(1)) != null) {
                                    this.f2365q.m2193b(string);
                                    i2++;
                                }
                            } while (cursor2.moveToNext());
                        }
                    } catch (Throwable th2) {
                        cursor = cursor2;
                        th = th2;
                        i = i2;
                        try {
                            Log.e("SysMediaStore", "rescan: ", th);
                            if (cursor != null) {
                                cursor.close();
                            }
                            Log.d("SysMediaStore", "rescan: " + i);
                            return i;
                        } catch (Throwable th3) {
                            th = th3;
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            throw th;
                        }
                    }
                }
                i = i2;
                if (cursor2 != null) {
                    cursor2.close();
                }
            } catch (Throwable th4) {
                th = th4;
                cursor = null;
                i = 0;
            }
        }
        Log.d("SysMediaStore", "rescan: " + i);
        return i;
    }

    /* renamed from: f */
    public void m2294f(String str) {
        if (str == null || C0742b.m3007f(str) || C0742b.m3009h(str)) {
            return;
        }
        this.f2365q.m2193b(str);
    }
}
