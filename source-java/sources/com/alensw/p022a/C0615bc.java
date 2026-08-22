package com.alensw.p022a;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.preference.PreferenceManager;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p024a.C0650f;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* renamed from: com.alensw.a.bc */
/* loaded from: classes.dex */
public class C0615bc {

    /* renamed from: a */
    public static final Bitmap.Config f2368a = Bitmap.Config.RGB_565;

    /* renamed from: h */
    private static final String[] f2369h = {"thumb", "modified"};

    /* renamed from: p */
    private static final byte[] f2370p = new byte[1];

    /* renamed from: b */
    public boolean f2371b;

    /* renamed from: c */
    public final int f2372c;

    /* renamed from: d */
    public final int f2373d;

    /* renamed from: e */
    public final int f2374e;

    /* renamed from: f */
    public final int f2375f;

    /* renamed from: g */
    public final int f2376g;

    /* renamed from: i */
    private final Context f2377i;

    /* renamed from: j */
    private final int f2378j;

    /* renamed from: k */
    private final String f2379k;

    /* renamed from: l */
    private boolean f2380l;

    /* renamed from: m */
    private boolean f2381m;

    /* renamed from: n */
    private SQLiteDatabase f2382n;

    /* renamed from: o */
    private C0619bg f2383o;

    /* renamed from: q */
    private final C0617be f2384q = new C0617be();

    public C0615bc(Context context) {
        this.f2377i = context;
        this.f2371b = PreferenceManager.getDefaultSharedPreferences(context).getBoolean("crop_thumbnail", true);
        float f = context.getResources().getDisplayMetrics().density;
        float max = Math.max(Math.min(r4.widthPixels, r4.heightPixels), QuickApp.f2065h * f);
        int i = (int) (144.0f * f);
        int max2 = Math.max((int) (max / i), 3);
        int round = ((int) (2.0f * f)) * (1 << Math.round(QuickApp.f2065h / 400.0f));
        if (QuickApp.f2065h == 400 && f > 1.0f) {
            max2++;
        }
        int i2 = (int) (((max - round) / max2) - round);
        int i3 = (i2 & 1) == 1 ? i2 - 1 : i2;
        i2 = (i2 & 1) == 1 ? i2 - 1 : i2;
        this.f2379k = "thumb_" + Integer.toString(i3 * i2) + ".db";
        if (f >= 2.0f) {
            max2 = Math.max((int) (max / i), 3);
            round = Math.round(2.0f * f * (QuickApp.f2065h / 320));
            if (QuickApp.f2065h == 400 && f > 1.0f) {
                max2++;
            }
            i2 = (int) (((max - round) / max2) - round);
            i3 = (i2 & 1) == 1 ? i2 - 1 : i2;
            if ((i2 & 1) == 1) {
                i2--;
            }
        }
        this.f2373d = i3;
        this.f2374e = i2;
        this.f2378j = Math.max(this.f2373d, 120);
        int round2 = (int) (((max - round) / Math.round((3.0f * max2) / 4.0f)) - round);
        int i4 = (round2 & 1) == 1 ? round2 - 1 : round2;
        round2 = (round2 & 1) == 1 ? round2 - 1 : round2;
        this.f2375f = i4;
        this.f2376g = round2;
        this.f2372c = Math.min(Math.round(((r4.widthPixels * r4.heightPixels) / (this.f2373d + round)) / (round + this.f2374e)) * 10, ((C0706b.f2669b * 1024000) / 4) / ((f2368a == Bitmap.Config.ARGB_8888 ? 4 : 2) * (this.f2373d * this.f2374e)));
    }

    /* renamed from: a */
    private void m2296a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE thumbs (path TEXT PRIMARY KEY,thumb BLOB,modified INTEGER);");
    }

    /* renamed from: a */
    private void m2297a(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS thumbs");
        m2296a(sQLiteDatabase);
    }

    @TargetApi(16)
    /* renamed from: a */
    private boolean m2298a(Context context, boolean z) {
        String str = "thumb_" + Integer.toString(this.f2373d * this.f2374e) + ".db";
        File m2568b = C0658b.m2568b(context, str);
        if (!m2568b.exists() && !str.equals(this.f2379k)) {
            File m2568b2 = C0658b.m2568b(context, this.f2379k);
            if (m2568b2.exists()) {
                m2568b2.renameTo(m2568b);
            }
        }
        int i = z ? 1 : 268435456;
        try {
            if (Build.VERSION.SDK_INT >= 16) {
                i |= 536870912;
            }
            SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(m2568b.getPath(), null, i);
            if (!z && Build.VERSION.SDK_INT >= 16) {
                this.f2381m = openDatabase.isWriteAheadLoggingEnabled();
            }
            int version = openDatabase.getVersion();
            if (version != 4) {
                openDatabase.beginTransaction();
                try {
                    if (version == 0) {
                        m2296a(openDatabase);
                    } else if (version < 4) {
                        C0742b.m2998c(context, context.getString(R.string.cache_need_upgrade));
                        m2297a(openDatabase, version, 4);
                    }
                    openDatabase.setVersion(4);
                    openDatabase.setTransactionSuccessful();
                } finally {
                    openDatabase.endTransaction();
                }
            }
            this.f2382n = openDatabase;
            this.f2380l = true;
            return true;
        } catch (SQLiteDatabaseCorruptException e) {
            e = e;
            C0650f.m2531b(null);
            C0650f.m2530a(m2568b);
            if (!z && e != null && "mounted".equals(Environment.getExternalStorageState())) {
                C0742b.m2977a(context, e);
            }
            return false;
        } catch (Throwable th) {
            e = th;
            C0650f.m2531b(null);
            if (!z) {
                C0742b.m2977a(context, e);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0006, code lost:
    
        if (r2.f2380l != false) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean m2300a(boolean z) {
        boolean z2 = true;
        synchronized (this) {
            if (!z) {
                if (this.f2380l) {
                    SQLiteDatabase sQLiteDatabase = this.f2382n;
                    if (sQLiteDatabase == null || sQLiteDatabase.isReadOnly()) {
                        m2308a();
                    }
                }
                z2 = m2298a(this.f2377i, z);
            }
        }
        return z2;
    }

    /* renamed from: a */
    public Bitmap m2304a(C0662f c0662f, C0705a c0705a) {
        C0707c m2786a = C0707c.m2786a(c0662f, true);
        if (m2786a != null) {
            Bitmap m2780a = C0706b.m2780a(m2786a, 196608, c0705a);
            if (m2780a != null) {
                m2786a.m2792a();
                return m2780a;
            }
            long m2802e = m2786a.m2802e();
            c0705a.outWidth = (int) (m2802e & 2147483647L);
            c0705a.outHeight = (int) ((m2802e >> 32) & 2147483647L);
            c0705a.f2664b = m2786a.m2801d();
            c0705a.f2665c = m2786a.m2803f();
            c0705a.f2666d = m2786a.m2800c();
            m2786a.m2792a();
        }
        if ((c0705a.outWidth <= 0 || c0705a.outHeight <= 0) && !c0705a.mCancel) {
            C0706b.m2783b(c0662f, c0705a);
        }
        if (c0705a.outWidth <= 0 || c0705a.outHeight <= 0 || c0705a.mCancel) {
            return null;
        }
        return C0706b.m2779a(c0662f, this.f2371b, this.f2378j, c0705a);
    }

    /* renamed from: a */
    public C0712h m2305a(Uri uri, long j, C0705a c0705a) {
        return m2307a(C0662f.m2592a(uri) ? uri.getPath() : uri.toString(), j, c0705a);
    }

    /* renamed from: a */
    public C0712h m2306a(C0662f c0662f, char c, int i, int i2, long j, C0705a c0705a) {
        Bitmap m2304a;
        Bitmap bitmap;
        boolean z;
        C0712h c0712h;
        Bitmap m2773a;
        if (c == 'I') {
            m2304a = m2304a(c0662f, c0705a);
        } else {
            m2304a = (c == 'D' || c == 0) ? m2304a(c0662f, c0705a) : null;
            if (m2304a == null) {
                m2304a = C0706b.m2776a(c0662f);
            }
        }
        if (m2304a == null) {
            if (!c0705a.mCancel && (m2773a = C0706b.m2773a(1, 1, Bitmap.Config.ARGB_8888)) != null) {
                m2773a.eraseColor(-2139062144);
                bitmap = m2773a;
                z = true;
            }
            return null;
        }
        bitmap = m2304a;
        z = false;
        boolean z2 = i > 0 && i2 > 0;
        Uri m2600g = c0662f.m2600g();
        String path = c0662f.m2594a() ? m2600g.getPath() : m2600g.toString();
        C0712h c0712h2 = new C0712h(bitmap, c0705a.f2664b, c0705a.f2665c);
        c0712h2.f2698b.f2703e = C0714j.m2859a(path);
        if (!z2 || z || (c0712h2.f2698b.f2702d == 0 && bitmap.getWidth() == i && bitmap.getHeight() == i2 && bitmap.getConfig() == f2368a)) {
            c0712h = c0712h2;
        } else {
            c0712h = c0712h2.m2840a(i, i2, this.f2371b, f2368a);
            if (c0712h == null) {
                return null;
            }
            c0712h2.m2866m();
        }
        if (c0712h == null || j == 0) {
            return c0712h;
        }
        if (z && c != 'V') {
            return c0712h;
        }
        m2311a(path, j, c0712h);
        return c0712h;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0712h m2307a(String str, long j, C0705a c0705a) {
        byte[] bArr;
        Cursor cursor;
        byte[] blob;
        byte[] m2318a = this.f2384q.m2318a(str);
        if (m2318a == f2370p) {
            return null;
        }
        if (m2318a == null && m2300a(true) && !c0705a.mCancel) {
            Cursor cursor2 = null;
            try {
                cursor = this.f2382n.query("thumbs", f2369h, "path=?", new String[]{str}, null, null, null);
            } catch (Throwable th) {
                th = th;
            }
            if (cursor != null) {
                try {
                } catch (Throwable th2) {
                    cursor2 = cursor;
                    th = th2;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
                if (cursor.moveToFirst()) {
                    long j2 = cursor.getLong(1);
                    if (j2 == 0 || j == 0 || C0650f.m2529a(j2, j, 1)) {
                        blob = cursor.getBlob(0);
                        if (cursor == null) {
                            cursor.close();
                            bArr = blob;
                        } else {
                            bArr = blob;
                        }
                        if (bArr != null || c0705a.mCancel) {
                            return null;
                        }
                        return C0712h.m2838a(bArr, c0705a);
                    }
                }
            }
            blob = m2318a;
            if (cursor == null) {
            }
            if (bArr != null) {
            }
            return null;
        }
        bArr = m2318a;
        if (bArr != null) {
        }
        return null;
    }

    /* renamed from: a */
    public void m2308a() {
        SQLiteDatabase sQLiteDatabase = this.f2382n;
        this.f2382n = null;
        this.f2380l = false;
        C0650f.m2531b(sQLiteDatabase);
    }

    /* renamed from: a */
    public void m2309a(String str) {
        this.f2384q.m2317a(str, 3, 0L, null);
    }

    /* renamed from: a */
    public void m2310a(String str, long j) {
        this.f2384q.m2317a(str, 2, j, null);
    }

    /* renamed from: a */
    public void m2311a(String str, long j, C0712h c0712h) {
        byte[] m2846a = c0712h.m2846a(Bitmap.CompressFormat.JPEG, 75);
        if (m2846a != null) {
            this.f2384q.m2317a(str, 1, j, m2846a);
        }
    }

    /* renamed from: b */
    public void m2312b() {
        this.f2384q.m2317a("*", 5, 0L, null);
    }

    /* renamed from: b */
    public void m2313b(String str) {
        this.f2384q.m2317a(str, 4, 0L, null);
    }

    /* renamed from: c */
    public void m2314c() {
        if (this.f2383o == null) {
            this.f2383o = new C0619bg(this);
        }
        this.f2383o.start();
    }

    /* renamed from: d */
    public void m2315d() {
        if (this.f2384q.m2316a() != 0 || this.f2383o == null) {
            return;
        }
        this.f2383o.m2938a(this.f2384q);
        this.f2383o = null;
    }
}
