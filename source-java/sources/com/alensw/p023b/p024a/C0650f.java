package com.alensw.p023b.p024a;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.os.Build;
import android.util.Log;
import com.alensw.p023b.p026c.C0658b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.alensw.b.a.f */
/* loaded from: classes.dex */
public class C0650f {

    /* renamed from: f */
    private static final String[] f2511f = {"document_id", "_size", "_data"};

    /* renamed from: a */
    protected boolean f2512a;

    /* renamed from: b */
    protected boolean f2513b;

    /* renamed from: c */
    protected SQLiteDatabase f2514c;

    /* renamed from: d */
    protected File f2515d;

    /* renamed from: e */
    protected long f2516e = 536870912;

    /* renamed from: a */
    public static boolean m2529a(long j, long j2, int i) {
        long abs = Math.abs(j - j2);
        return abs <= 86400 && abs % 3600 <= ((long) Math.abs(i));
    }

    /* renamed from: a */
    public static boolean m2530a(File file) {
        boolean z;
        Throwable th;
        boolean z2 = false;
        try {
            if (Build.VERSION.SDK_INT >= 16) {
                z = SQLiteDatabase.deleteDatabase(file);
            } else {
                String path = file.getPath();
                boolean delete = file.delete();
                try {
                    z2 = delete | new File(path + "-shm").delete() | new File(path + "-wal").delete();
                    z = new File(path + "-journal").delete() | z2;
                } catch (Throwable th2) {
                    z = delete;
                    th = th2;
                    Log.e("FileCache", "delete: ", th);
                    return z;
                }
            }
        } catch (Throwable th3) {
            z = z2;
            th = th3;
        }
        return z;
    }

    /* renamed from: b */
    public static void m2531b(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable th) {
                Log.e("FileCache", "close: ", th);
            }
        }
    }

    /* renamed from: c */
    public static File m2532c(Context context, String str) {
        return new File(C0658b.m2567b(context), "." + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x006b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File m2533a(String str, long j) {
        Cursor cursor;
        Throwable th;
        Cursor cursor2;
        File file;
        String[] strArr;
        try {
            strArr = new String[]{str};
            cursor = this.f2514c.query("cache", new String[]{"_data", "last_modified"}, "document_id=?", strArr, null, null, null);
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        if (cursor != null) {
            try {
                try {
                } catch (Throwable th3) {
                    cursor2 = cursor;
                    th = th3;
                    file = null;
                }
                if (cursor.moveToFirst()) {
                    File file2 = new File(cursor.getString(0));
                    try {
                        if (!file2.exists() || cursor.getLong(1) != j) {
                            this.f2514c.delete("cache", "document_id=?", strArr);
                            file2.delete();
                            file = null;
                        } else if (this.f2516e > 0) {
                            ContentValues contentValues = new ContentValues();
                            contentValues.put("accessed_time", Long.valueOf(System.currentTimeMillis() / 1000));
                            this.f2514c.update("cache", contentValues, "document_id=?", strArr);
                            file = file2;
                        } else {
                            file = file2;
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th4) {
                        file = file2;
                        cursor2 = cursor;
                        th = th4;
                        try {
                            Log.e("FileCache", "query cache: ", th);
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            return file;
                        } catch (Throwable th5) {
                            th = th5;
                            cursor = cursor2;
                            if (cursor != null) {
                            }
                            throw th;
                        }
                    }
                    return file;
                }
            } catch (Throwable th6) {
                th = th6;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        }
        file = null;
        if (cursor != null) {
        }
        return file;
    }

    /* renamed from: a */
    public void m2534a(long j) {
        this.f2516e = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00a4  */
    @TargetApi(11)
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m2535a(long j, long j2) {
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            try {
                cursor = this.f2514c.query("cache", f2511f, null, null, null, null, "accessed_time ASC");
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            ArrayList arrayList = new ArrayList(Math.max(cursor.getCount(), 1));
                            String[] strArr = new String[1];
                            try {
                                if (this.f2513b) {
                                    this.f2514c.beginTransactionNonExclusive();
                                } else {
                                    this.f2514c.beginTransaction();
                                }
                                int i = 0;
                                do {
                                    try {
                                        try {
                                            String string = cursor.getString(2);
                                            if (string != null) {
                                                arrayList.add(string);
                                            }
                                            strArr[0] = cursor.getString(0);
                                            j -= cursor.getLong(1);
                                            this.f2514c.delete("cache", "document_id=?", strArr);
                                            i++;
                                            if (j <= j2) {
                                                break;
                                            }
                                        } finally {
                                            this.f2514c.endTransaction();
                                        }
                                    } catch (Throwable th) {
                                        Log.e("FileCache", "commit trim: ", th);
                                        this.f2514c.endTransaction();
                                    }
                                } while (cursor.moveToNext());
                                if (i > 0) {
                                    this.f2514c.setTransactionSuccessful();
                                }
                                Iterator it = arrayList.iterator();
                                while (it.hasNext()) {
                                    new File((String) it.next()).delete();
                                }
                                Log.d("FileCache", "delete: " + arrayList.size() + " caches");
                            } catch (Throwable th2) {
                                Log.e("FileCache", "delete cache: ", th2);
                            }
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        Log.e("FileCache", "trim cache: ", th);
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th4) {
                th = th4;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            cursor = null;
        }
    }

    /* renamed from: a */
    protected void mo2536a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE cache (document_id TEXT UNIQUE,_data TEXT,_size INTEGER,accessed_time INTEGER,last_modified INTEGER);");
        sQLiteDatabase.execSQL("CREATE INDEX cache_index_id ON cache(document_id);");
    }

    /* renamed from: a */
    protected void mo2537a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("FileCache", "Downgrading from version " + i + " -> " + i2);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache");
        mo2536a(sQLiteDatabase);
    }

    /* renamed from: a */
    public void m2538a(String str, long j, File file) {
        long length = file.length();
        if (this.f2516e > 0) {
            long m2547g = m2547g() + length;
            if (m2547g > this.f2516e) {
                m2535a(m2547g, this.f2516e);
            }
        }
        ContentValues contentValues = new ContentValues(5);
        contentValues.put("document_id", str);
        contentValues.put("_data", file.getPath());
        contentValues.put("_size", Long.valueOf(length));
        contentValues.put("accessed_time", Long.valueOf(System.currentTimeMillis() / 1000));
        contentValues.put("last_modified", Long.valueOf(j));
        try {
            this.f2514c.replace("cache", null, contentValues);
        } catch (Throwable th) {
            Log.e("FileCache", "update cache: ", th);
        }
    }

    /* renamed from: a */
    public void m2539a(String str, String[] strArr) {
        try {
            Log.d("FileCache", "delete cache: " + this.f2514c.delete("cache", str, strArr));
        } catch (Throwable th) {
            Log.e("FileCache", "delete cache: ", th);
        }
    }

    /* renamed from: a */
    public boolean m2540a(Context context, File file, String str, int i) {
        if (str != null) {
            this.f2515d = m2532c(context, str);
            this.f2515d.mkdirs();
        }
        try {
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(file.getPath(), null, Build.VERSION.SDK_INT >= 16 ? 805306368 : 268435456);
            if (Build.VERSION.SDK_INT >= 16) {
                this.f2513b = openDatabase.isWriteAheadLoggingEnabled();
            }
            int version = openDatabase.getVersion();
            if (version != i) {
                openDatabase.beginTransaction();
                try {
                    if (version == 0) {
                        mo2536a(openDatabase);
                    } else if (version < i) {
                        mo2541b(openDatabase, version, i);
                    } else {
                        mo2537a(openDatabase, version, i);
                    }
                    openDatabase.setVersion(i);
                    openDatabase.setTransactionSuccessful();
                } finally {
                    openDatabase.endTransaction();
                }
            }
            this.f2514c = openDatabase;
            this.f2512a = openDatabase.isOpen();
            return true;
        } catch (SQLiteDatabaseCorruptException e) {
            Log.e("FileCache", "open corrupt db: ", e);
            m2531b(null);
            m2530a(file);
            return false;
        } catch (Throwable th) {
            Log.e("FileCache", "open db: ", th);
            m2531b(null);
            return false;
        }
    }

    /* renamed from: b */
    protected void mo2541b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("FileCache", "Upgrading from version " + i + " -> " + i2);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache");
        mo2536a(sQLiteDatabase);
    }

    /* renamed from: c */
    public void m2542c() {
        SQLiteDatabase sQLiteDatabase = this.f2514c;
        this.f2514c = null;
        this.f2512a = false;
        m2531b(sQLiteDatabase);
    }

    /* renamed from: c */
    public void m2543c(String str) {
        try {
            this.f2514c.delete("cache", "document_id=?", new String[]{str});
        } catch (Throwable th) {
            Log.e("FileCache", "delete cache: ", th);
        }
    }

    /* renamed from: d */
    public boolean m2544d() {
        return this.f2512a;
    }

    /* renamed from: e */
    public void m2545e() {
        m2535a(Long.MAX_VALUE, 0L);
    }

    /* renamed from: f */
    public File m2546f() {
        return new File(this.f2515d, Long.toHexString(System.nanoTime() / 1000));
    }

    /* renamed from: g */
    public long m2547g() {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = this.f2514c.rawQuery("SELECT SUM(_size) FROM cache", null);
                if (rawQuery != null) {
                    try {
                        if (rawQuery.moveToFirst()) {
                            long j = rawQuery.getLong(0);
                            if (rawQuery == null) {
                                return j;
                            }
                            rawQuery.close();
                            return j;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                if (rawQuery != null) {
                    rawQuery.close();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
        }
        return 0L;
    }
}
