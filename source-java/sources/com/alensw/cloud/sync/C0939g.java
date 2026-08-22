package com.alensw.cloud.sync;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.alensw.p023b.p024a.C0650f;
import java.io.File;

/* renamed from: com.alensw.cloud.sync.g */
/* loaded from: classes.dex */
public class C0939g extends C0650f {

    /* renamed from: g */
    private static final String[] f3304g = {"size", "updated", "failed", "last_sync", "cloud_id"};

    /* renamed from: f */
    private boolean f3305f;

    /* renamed from: a */
    public static C0939g m3430a(Context context, String str) {
        C0939g c0939g = new C0939g();
        if (c0939g.m2540a(context, m3431a(context, str, true), null, 3)) {
            return c0939g;
        }
        return null;
    }

    /* renamed from: a */
    public static File m3431a(Context context, String str, boolean z) {
        File file = new File(context.getFilesDir(), "sync");
        if (z) {
            file.mkdirs();
        }
        return new File(file, str + ".db");
    }

    /* renamed from: b */
    public static String m3432b() {
        return Long.toHexString(System.nanoTime() / 1000);
    }

    /* renamed from: b */
    public static boolean m3433b(Context context, String str) {
        return m2530a(m3431a(context, str, false));
    }

    /* renamed from: c */
    private void m3434c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE sync (_id TEXT PRIMARY KEY,updated INTEGER,size INTEGER,failed INTEGER,cloud_id TEXT,last_sync INTEGER);");
        sQLiteDatabase.execSQL("CREATE INDEX nodes_index_last_modified ON sync(updated);");
        this.f3305f = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x005d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m3435a(String str, String[] strArr, long[] jArr) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            try {
                cursor = this.f2514c.query("sync", f3304g, str, strArr, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            jArr[0] = cursor.getLong(0);
                            jArr[1] = cursor.getLong(1);
                            jArr[2] = cursor.getLong(2);
                            jArr[3] = cursor.getLong(3);
                            String string = cursor.getString(4);
                            if (cursor == null) {
                                return string;
                            }
                            cursor.close();
                            return string;
                        }
                    } catch (Throwable th) {
                        th = th;
                        Log.e("SyncCache", "query last updated: ", th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
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
        return null;
    }

    /* renamed from: a */
    public void m3436a(ContentValues contentValues) {
        this.f2514c.replace("sync", null, contentValues);
    }

    @Override // com.alensw.p023b.p024a.C0650f
    /* renamed from: a */
    protected void mo2536a(SQLiteDatabase sQLiteDatabase) {
        m3434c(sQLiteDatabase);
    }

    @Override // com.alensw.p023b.p024a.C0650f
    /* renamed from: a */
    protected void mo2537a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS sync");
        m3434c(sQLiteDatabase);
    }

    /* renamed from: a */
    public boolean m3437a() {
        return this.f3305f;
    }

    @Override // com.alensw.p023b.p024a.C0650f
    /* renamed from: b */
    protected void mo2541b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS sync");
        m3434c(sQLiteDatabase);
    }
}
