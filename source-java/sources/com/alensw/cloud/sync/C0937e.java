package com.alensw.cloud.sync;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.alensw.cloud.sync.e */
/* loaded from: classes.dex */
public class C0937e implements BaseColumns {

    /* renamed from: a */
    public static final Uri f3297a = C0935c.f3294a.buildUpon().appendPath("task").build();

    /* renamed from: b */
    private static final String[] f3298b = {"task_id", "task_name", "dir_local", "dir_remote", "disabled"};

    /* renamed from: a */
    public static Uri m3423a(String str) {
        return C0935c.f3294a.buildUpon().appendPath("task").appendPath(str).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x005f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Map m3424a(ContentResolver contentResolver) {
        Cursor cursor;
        Map map;
        int count;
        Map emptyMap = Collections.emptyMap();
        try {
            cursor = contentResolver.query(f3297a, f3298b, null, null, null);
        } catch (Throwable th) {
            th = th;
            cursor = null;
        }
        if (cursor != null) {
            try {
                try {
                    count = cursor.getCount();
                } catch (Throwable th2) {
                    map = emptyMap;
                }
                if (count > 0) {
                    map = new HashMap(count);
                    while (cursor.moveToNext()) {
                        try {
                            C0954v c0954v = new C0954v();
                            c0954v.f3344c = cursor.getString(1);
                            c0954v.f3345d = cursor.getString(2);
                            c0954v.f3346e = cursor.getString(3);
                            c0954v.f3347f = cursor.getInt(4) != 0;
                            map.put(cursor.getString(0), c0954v);
                        } catch (Throwable th3) {
                            if (cursor != null) {
                                cursor.close();
                            }
                            return map;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return map;
                }
            } catch (Throwable th4) {
                th = th4;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        map = emptyMap;
        if (cursor != null) {
        }
        return map;
    }

    /* renamed from: a */
    public static void m3425a(ContentResolver contentResolver, String str) {
        contentResolver.delete(m3423a(str), null, null);
    }

    /* renamed from: a */
    public static void m3426a(ContentResolver contentResolver, String str, C0954v c0954v) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("task_id", str);
        contentValues.put("task_name", c0954v.f3344c);
        contentValues.put("dir_local", c0954v.f3345d);
        contentValues.put("dir_remote", c0954v.f3346e);
        contentValues.put("disabled", Integer.valueOf(c0954v.f3347f ? 1 : 0));
        contentResolver.insert(f3297a, contentValues);
    }
}
