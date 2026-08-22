package com.alensw.cloud.p036a;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.alensw.p023b.p024a.C0650f;
import com.alensw.p023b.p026c.C0658b;
import java.io.File;

/* renamed from: com.alensw.cloud.a.ay */
/* loaded from: classes.dex */
public class C0784ay extends C0650f {

    /* renamed from: f */
    private ContentValues f2936f;

    /* renamed from: a */
    public static File m3180a(Context context, String str, boolean z) {
        File file = new File(C0658b.m2563a(context), "cloud");
        if (z) {
            file.mkdirs();
        }
        return new File(file, str + ".db");
    }

    @TargetApi(11)
    /* renamed from: a */
    private void m3181a(C0785az c0785az, String str, int i, int i2, int i3) {
        try {
            if (this.f2513b) {
                this.f2514c.beginTransactionNonExclusive();
            } else {
                this.f2514c.beginTransaction();
            }
            while (i2 < i3) {
                try {
                    try {
                        ContentValues contentValues = (ContentValues) c0785az.get(i2);
                        contentValues.put("parent_id", str);
                        this.f2514c.replace("nodes", null, contentValues);
                        i2++;
                    } catch (Throwable th) {
                        Log.e("LocalCache", "insert: ", th);
                        this.f2514c.endTransaction();
                        return;
                    }
                } finally {
                    this.f2514c.endTransaction();
                }
            }
            this.f2514c.setTransactionSuccessful();
        } catch (Throwable th2) {
            Log.e("LocalCache", "insert: ", th2);
        }
    }

    /* renamed from: c */
    private void m3182c(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE nodes (document_id TEXT PRIMARY KEY,_display_name TEXT,mime_type TEXT,flags INTEGER,_size INTEGER,last_modified INTEGER,width INTEGER,height INTEGER,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,parent_id TEXT,content_url TEXT,thumbnail_url TEXT,tag TEXT,comment TEXT);");
        sQLiteDatabase.execSQL("CREATE INDEX nodes_index_id ON nodes(document_id);");
        sQLiteDatabase.execSQL("CREATE INDEX nodes_index_parent ON nodes(parent_id);");
        if (this.f2936f != null) {
            sQLiteDatabase.insert("nodes", null, this.f2936f);
            this.f2936f = null;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0044: MOVE (r8 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:20:0x0044 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long m3183a(String str, String str2, long j) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            try {
                cursor = this.f2514c.query("nodes", new String[]{str2}, "document_id=?", new String[]{str}, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            j = cursor.getLong(0);
                        }
                    } catch (Throwable th) {
                        th = th;
                        Log.e("LocalCache", "query string: ", th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return j;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor3 != null) {
            }
            throw th;
        }
        return j;
    }

    /* renamed from: a */
    public Cursor m3184a(String str, String[] strArr, String str2, String[] strArr2) {
        String str3;
        String[] strArr3;
        if (str2 == null) {
            str3 = "document_id=?";
        } else {
            try {
                str3 = "document_id=? AND (" + str2 + " )";
            } catch (Throwable th) {
                Log.e("LocalCache", "query node: ", th);
                return null;
            }
        }
        if (strArr2 == null) {
            strArr3 = new String[]{str};
        } else {
            strArr3 = new String[strArr2.length + 1];
            strArr3[0] = str;
            System.arraycopy(strArr2, 0, strArr3, 1, strArr2.length);
        }
        return this.f2514c.query("nodes", strArr, str3, strArr3, null, null, null);
    }

    /* renamed from: a */
    public Cursor m3185a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        String str4;
        String[] strArr3;
        if (str2 == null) {
            str4 = "parent_id=?";
        } else {
            try {
                str4 = "parent_id=? AND (" + str2 + " )";
            } catch (Throwable th) {
                Log.e("LocalCache", "query child: ", th);
                return null;
            }
        }
        if (strArr2 == null) {
            strArr3 = new String[]{str};
        } else {
            strArr3 = new String[strArr2.length + 1];
            strArr3[0] = str;
            System.arraycopy(strArr2, 0, strArr3, 1, strArr2.length);
        }
        return this.f2514c.query("nodes", strArr, str4, strArr3, null, null, str3);
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0044: MOVE (r8 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:20:0x0044 */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m3186a(String str, String str2, String str3) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        try {
            try {
                cursor = this.f2514c.query("nodes", new String[]{str2}, "document_id=?", new String[]{str}, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            str3 = cursor.getString(0);
                        }
                    } catch (Throwable th) {
                        th = th;
                        Log.e("LocalCache", "query string: ", th);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return str3;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor3 != null) {
            }
            throw th;
        }
        return str3;
    }

    /* renamed from: a */
    public void m3187a(ContentValues contentValues) {
        try {
            this.f2514c.replace("nodes", null, contentValues);
        } catch (Throwable th) {
            Log.e("LocalCache", "insert: ", th);
        }
    }

    /* renamed from: a */
    public void m3188a(Context context, String str) {
        File m3180a;
        File c;
        SQLiteDatabase sQLiteDatabase = this.f2514c;
        if (sQLiteDatabase != null) {
            m3180a = new File(sQLiteDatabase.getPath());
            c = this.f2515d;
            super.m2542c();
        } else {
            m3180a = m3180a(context, str, false);
            c = m2532c(context, str);
        }
        m2530a(m3180a);
        C0658b.m2566a(c);
    }

    @Override // com.alensw.p023b.p024a.C0650f
    /* renamed from: a */
    protected void mo2536a(SQLiteDatabase sQLiteDatabase) {
        super.mo2536a(sQLiteDatabase);
        m3182c(sQLiteDatabase);
    }

    @Override // com.alensw.p023b.p024a.C0650f
    /* renamed from: a */
    protected void mo2537a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS nodes");
        m3182c(sQLiteDatabase);
    }

    /* renamed from: a */
    public void m3189a(C0785az c0785az, String str, int i) {
        int size = c0785az.size();
        int i2 = 0;
        while (i2 < size) {
            int i3 = i2 + 256;
            if (i3 > size) {
                i3 = size;
            }
            m3181a(c0785az, str, i, i2, i3);
            i2 = i3;
        }
    }

    /* renamed from: a */
    public void m3190a(String str) {
        try {
            this.f2514c.delete("nodes", "document_id=?", new String[]{str});
        } catch (Throwable th) {
            Log.e("LocalCache", "delete node:", th);
        }
    }

    /* renamed from: a */
    public void m3191a(String str, ContentValues contentValues) {
        try {
            this.f2514c.update("nodes", contentValues, "document_id=?", new String[]{str});
        } catch (Throwable th) {
            Log.e("LocalCache", "update time: ", th);
        }
    }

    /* renamed from: a */
    public boolean m3192a(Context context, String str, ContentValues contentValues) {
        this.f2936f = contentValues;
        if (!super.m2540a(context, m3180a(context, str, true), str, 5)) {
            return false;
        }
        if (m3183a(contentValues.getAsString("document_id"), "document_id", 0L) == contentValues.getAsLong("flags").longValue()) {
            return true;
        }
        m3187a(contentValues);
        return true;
    }

    @Override // com.alensw.p023b.p024a.C0650f
    /* renamed from: b */
    protected void mo2541b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i != 4 || i2 < 5) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS nodes");
            m3182c(sQLiteDatabase);
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            sQLiteDatabase.execSQL("UPDATE nodes SET datetaken=[last_modified] WHERE datetaken IS NULL OR datetaken == 0");
            Log.d("LocalCache", "update taken: " + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    /* renamed from: b */
    public void m3193b(String str) {
        try {
            this.f2514c.delete("nodes", "parent_id=?", new String[]{str});
        } catch (Throwable th) {
            Log.e("LocalCache", "delete old nodes:", th);
        }
    }
}
