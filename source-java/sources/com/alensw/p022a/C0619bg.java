package com.alensw.p022a;

import android.annotation.TargetApi;
import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p034k.C0732c;
import com.alensw.p023b.p035l.C0742b;
import org.apache.http.cookie.ClientCookie;

/* renamed from: com.alensw.a.bg */
/* loaded from: classes.dex */
class C0619bg extends C0732c {

    /* renamed from: a */
    final /* synthetic */ C0615bc f2390a;

    /* renamed from: b */
    private final ContentValues f2391b;

    /* renamed from: c */
    private final String[] f2392c;

    private C0619bg(C0615bc c0615bc) {
        this.f2390a = c0615bc;
        this.f2391b = new ContentValues();
        this.f2392c = new String[1];
    }

    /* renamed from: a */
    private int m2320a(String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f2390a.f2382n;
            return sQLiteDatabase.delete("thumbs", str, strArr);
        } catch (Throwable th) {
            return -1;
        }
    }

    /* renamed from: a */
    private boolean m2321a(C0618bf c0618bf) {
        switch (c0618bf.f2386a) {
            case 1:
                return m2322b(c0618bf);
            case 2:
                return m2323c(c0618bf);
            case 3:
                this.f2392c[0] = c0618bf.f2389d;
                return m2320a("path=?", this.f2392c) > 0;
            case 4:
                this.f2392c[0] = C0742b.m3006e(c0618bf.f2389d) + '%';
                return m2320a("path LIKE ?", this.f2392c) > 0;
            case 5:
                return m2320a(null, null) > 0;
            default:
                return false;
        }
    }

    /* renamed from: b */
    private boolean m2322b(C0618bf c0618bf) {
        SQLiteDatabase sQLiteDatabase;
        this.f2391b.put(ClientCookie.PATH_ATTR, c0618bf.f2389d);
        if (c0618bf.f2387b == 0 && c0618bf.f2389d.startsWith("/")) {
            c0618bf.f2387b = JniUtils.fuGetFileTime(c0618bf.f2389d);
        }
        this.f2391b.put("modified", Long.valueOf(c0618bf.f2387b));
        if (c0618bf.f2388c != null) {
            this.f2391b.put("thumb", c0618bf.f2388c);
        }
        try {
            sQLiteDatabase = this.f2390a.f2382n;
            r0 = sQLiteDatabase.replace("thumbs", null, this.f2391b) != -1;
            this.f2391b.clear();
        } catch (Throwable th) {
            this.f2391b.clear();
            throw th;
        }
        return r0;
    }

    /* renamed from: c */
    private boolean m2323c(C0618bf c0618bf) {
        SQLiteDatabase sQLiteDatabase;
        if (c0618bf.f2387b == 0 && c0618bf.f2389d.startsWith("/")) {
            c0618bf.f2387b = JniUtils.fuGetFileTime(c0618bf.f2389d);
        }
        this.f2391b.put("modified", Long.valueOf(c0618bf.f2387b));
        String str = "path=\"" + c0618bf.f2389d + "\" AND modified != " + c0618bf.f2387b;
        try {
            sQLiteDatabase = this.f2390a.f2382n;
            r0 = sQLiteDatabase.update("thumbs", this.f2391b, str, null) > 0;
        } catch (Throwable th) {
        } finally {
            this.f2391b.clear();
        }
        return r0;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    @TargetApi(11)
    public void run() {
        C0617be c0617be;
        C0617be c0617be2;
        boolean z;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        SQLiteDatabase sQLiteDatabase3;
        SQLiteDatabase sQLiteDatabase4;
        SQLiteDatabase sQLiteDatabase5;
        C0617be c0617be3;
        SQLiteDatabase sQLiteDatabase6;
        C0617be c0617be4;
        C0617be c0617be5;
        C0617be c0617be6;
        Process.setThreadPriority(7);
        this.f2390a.m2300a(false);
        while (!m2939a(0)) {
            c0617be = this.f2390a.f2384q;
            synchronized (c0617be) {
                c0617be2 = this.f2390a.f2384q;
                int m2316a = c0617be2.m2316a();
                if (m2316a < 16) {
                    if (m2316a == 0) {
                        try {
                            c0617be4 = this.f2390a.f2384q;
                            c0617be4.wait();
                        } catch (Throwable th) {
                        }
                    } else {
                        c0617be6 = this.f2390a.f2384q;
                        c0617be6.wait(3000L);
                    }
                    c0617be5 = this.f2390a.f2384q;
                    if (c0617be5.m2316a() == 0) {
                    }
                }
                try {
                    z = this.f2390a.f2381m;
                    if (z) {
                        sQLiteDatabase6 = this.f2390a.f2382n;
                        sQLiteDatabase6.beginTransactionNonExclusive();
                    } else {
                        sQLiteDatabase = this.f2390a.f2382n;
                        sQLiteDatabase.beginTransaction();
                    }
                    int i = 0;
                    for (int i2 = 0; i2 < 16; i2++) {
                        try {
                            c0617be3 = this.f2390a.f2384q;
                            C0618bf m2319b = c0617be3.m2319b();
                            if (m2319b != null && m2321a(m2319b)) {
                                i++;
                            }
                        } catch (Throwable th2) {
                            sQLiteDatabase4 = this.f2390a.f2382n;
                            sQLiteDatabase4.endTransaction();
                            throw th2;
                        }
                    }
                    if (i > 0) {
                        sQLiteDatabase3 = this.f2390a.f2382n;
                        sQLiteDatabase3.setTransactionSuccessful();
                    }
                    sQLiteDatabase2 = this.f2390a.f2382n;
                    sQLiteDatabase2.endTransaction();
                } catch (Throwable th3) {
                }
            }
        }
        this.f2390a.m2308a();
    }
}
