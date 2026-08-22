package com.alensw.cloud.sync;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.BaseColumns;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.alensw.cloud.sync.d */
/* loaded from: classes.dex */
public class C0936d implements BaseColumns {

    /* renamed from: a */
    public static final Uri f3295a = C0935c.f3294a.buildUpon().appendPath("status").build();

    /* renamed from: b */
    private static final String[] f3296b = {"task_id", "state", "total_files", "synced_files", "sync_time", "duration", "total_size", "io_exceptions", "auth_exceptions", "fatal_exceptions", "fetch_state", "folder_time", "folder_hash"};

    /* renamed from: a */
    public static Uri m3417a(String str) {
        return C0935c.f3294a.buildUpon().appendPath("status").appendPath(str).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0952t m3418a(ContentResolver contentResolver, String str) {
        Cursor cursor;
        C0952t m3419a;
        Cursor cursor2 = null;
        try {
            Cursor query = contentResolver.query(m3417a(str), f3296b, "task_id=?", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        m3419a = m3419a(query);
                        if (query != null) {
                            return m3419a;
                        }
                        query.close();
                        return m3419a;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = query;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            m3419a = null;
            if (query != null) {
            }
        } catch (Throwable th2) {
            cursor = null;
        }
    }

    /* renamed from: a */
    private static C0952t m3419a(Cursor cursor) {
        C0952t c0952t = new C0952t();
        c0952t.f3332a = cursor.getInt(1);
        c0952t.f3333b = cursor.getInt(2);
        c0952t.f3334c = cursor.getInt(3);
        c0952t.f3335d = cursor.getLong(4);
        c0952t.f3336e = cursor.getLong(5);
        c0952t.f3337f = cursor.getLong(6);
        c0952t.f3338g = cursor.getInt(7);
        c0952t.f3339h = cursor.getInt(8);
        c0952t.f3340i = cursor.getInt(9);
        c0952t.f3341j = cursor.getInt(10);
        c0952t.f3342k = cursor.getInt(11);
        c0952t.f3343l = cursor.getString(12);
        return c0952t;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x003b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Map m3420a(ContentResolver contentResolver) {
        Cursor cursor;
        Map map;
        int count;
        Map emptyMap = Collections.emptyMap();
        try {
            cursor = contentResolver.query(f3295a, f3296b, null, null, null);
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
                            map.put(cursor.getString(0), m3419a(cursor));
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
    public static void m3421a(ContentResolver contentResolver, String str, int i) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", Integer.valueOf(i));
            contentResolver.update(m3417a(str), contentValues, null, null);
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m3422a(ContentResolver contentResolver, String str, C0952t c0952t) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", Integer.valueOf(c0952t.f3332a));
            contentValues.put("total_files", Integer.valueOf(c0952t.f3333b));
            contentValues.put("synced_files", Integer.valueOf(c0952t.f3334c));
            contentValues.put("sync_time", Long.valueOf(c0952t.f3335d));
            contentValues.put("duration", Long.valueOf(c0952t.f3336e));
            contentValues.put("total_size", Long.valueOf(c0952t.f3337f));
            contentValues.put("io_exceptions", Integer.valueOf(c0952t.f3338g));
            contentValues.put("auth_exceptions", Integer.valueOf(c0952t.f3339h));
            contentValues.put("fatal_exceptions", Integer.valueOf(c0952t.f3340i));
            contentValues.put("fetch_state", Integer.valueOf(c0952t.f3341j));
            contentValues.put("folder_time", Integer.valueOf(c0952t.f3342k));
            contentValues.put("folder_hash", c0952t.f3343l);
            contentResolver.update(m3417a(str), contentValues, null, null);
        } catch (Throwable th) {
        }
    }
}
