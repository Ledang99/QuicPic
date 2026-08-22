package com.alensw.cloud.sync;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.alensw.PicFolder.CloudProvider;
import com.alensw.cloud.p036a.C0785az;
import com.alensw.cloud.p036a.C0815cb;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0597al;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p024a.C0650f;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p033j.InterfaceC0729e;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* renamed from: com.alensw.cloud.sync.h */
/* loaded from: classes.dex */
public class C0940h implements InterfaceC0678e, InterfaceCallableC0740k {

    /* renamed from: a */
    private final String f3306a;

    /* renamed from: b */
    private final String f3307b;

    /* renamed from: c */
    private final String f3308c;

    /* renamed from: d */
    private final C0954v f3309d;

    /* renamed from: e */
    private final C0952t f3310e;

    /* renamed from: f */
    private final Context f3311f;

    /* renamed from: g */
    private final ConcurrentLinkedQueue f3312g;

    /* renamed from: h */
    private final boolean f3313h;

    /* renamed from: i */
    private volatile boolean f3314i = false;

    public C0940h(Context context, ConcurrentLinkedQueue concurrentLinkedQueue, String str, String str2, C0954v c0954v, C0952t c0952t, boolean z) {
        this.f3306a = "task " + str + ": ";
        this.f3307b = str;
        this.f3308c = str2;
        this.f3311f = context;
        this.f3312g = concurrentLinkedQueue;
        this.f3309d = c0954v;
        this.f3310e = c0952t;
        this.f3313h = z;
    }

    /* renamed from: a */
    private String m3438a(C0623e c0623e) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_1);
            int m2390j = c0623e.m2390j();
            for (int i = 0; i < m2390j; i++) {
                C0622d m2381e = c0623e.m2381e(i);
                if (m2381e != null && m2381e.f2404b != null) {
                    byte[] bytes = m2381e.f2404b.getBytes("UTF-8");
                    messageDigest.update(bytes, 0, bytes.length);
                }
            }
            return C0742b.m2976a(messageDigest.digest());
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    private String m3439a(InterfaceC0729e interfaceC0729e, File file, Uri uri) {
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                if (file.length() != fileInputStream.available()) {
                    m3440a("wrong size: " + file.length() + "/" + fileInputStream.available());
                }
                C0682i c0682i = new C0682i();
                c0682i.f2574a = file.length();
                c0682i.f2575b = file.lastModified();
                c0682i.f2576c = C0690c.m2724b(file.getName());
                c0682i.f2578e = fileInputStream;
                String m1949d = CloudProvider.m1949d(interfaceC0729e.mo1966b(C0725a.m2916b(uri), file.getName(), c0682i, this));
                if (fileInputStream != null) {
                    C0675b.m2665a(fileInputStream);
                }
                return m1949d;
            } catch (Throwable th) {
                th = th;
                if (fileInputStream != null) {
                    C0675b.m2665a(fileInputStream);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    /* renamed from: a */
    private void m3440a(String str) {
        C0938f.m3427a(this.f3311f, this.f3306a + str, null);
    }

    /* renamed from: a */
    private void m3441a(String str, Throwable th) {
        C0938f.m3427a(this.f3311f, this.f3306a + str, th);
    }

    /* renamed from: a */
    private void m3442a(Throwable th, String str, C0952t c0952t) {
        m3441a("error " + str + ": ", th);
        if (th instanceof IOException) {
            c0952t.f3338g++;
        } else if (th instanceof C0815cb) {
            c0952t.f3339h++;
        } else {
            c0952t.f3340i++;
        }
    }

    /* renamed from: b */
    private boolean m3444b(long j, long j2) {
        return System.currentTimeMillis() - j2 > (((((j > 5L ? 1 : (j == 5L ? 0 : -1)) > 0 ? 30L : (long) (1 << (((int) j) + (-1)))) * 24) * 60) * 60) * 1000;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        m3440a("cancel...");
        this.f3314i = true;
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0678e
    /* renamed from: a */
    public void mo2683a(long j, long j2) {
    }

    /* renamed from: a */
    public void m3445a(InterfaceC0729e interfaceC0729e, C0623e c0623e, C0939g c0939g) {
        Uri m2908a = C0725a.m2908a(Uri.parse(this.f3309d.f3346e));
        C0785az c0785az = new C0785az(256);
        interfaceC0729e.mo1962a(C0725a.m2916b(m2908a), c0785az, new C0941i(this));
        ContentValues contentValues = new ContentValues(5);
        String m3006e = C0742b.m3006e(this.f3309d.f3345d);
        HashMap hashMap = new HashMap(c0623e.m2390j() + 1);
        Iterator it = c0623e.f2425i.iterator();
        while (it.hasNext()) {
            C0622d c0622d = (C0622d) it.next();
            hashMap.put(c0622d.f2404b, c0622d);
        }
        for (int size = c0785az.size() - 1; size >= 0; size--) {
            ContentValues contentValues2 = (ContentValues) c0785az.get(size);
            String asString = contentValues2.getAsString("_display_name");
            String str = m3006e + asString;
            long fuGetFileSize = JniUtils.fuGetFileSize(str);
            Long asLong = contentValues2.getAsLong("_size");
            if (asLong != null && fuGetFileSize == asLong.longValue()) {
                contentValues.clear();
                contentValues.put("_id", str);
                contentValues.put("cloud_id", contentValues2.getAsString("document_id"));
                contentValues.put("updated", Integer.valueOf(JniUtils.fuGetFileTime(str)));
                contentValues.put("size", Long.valueOf(fuGetFileSize));
                contentValues.put("failed", (Integer) 0);
                c0939g.m3436a(contentValues);
                c0785az.remove(size);
                hashMap.remove(asString);
            }
        }
        for (C0622d c0622d2 : hashMap.values()) {
            int lastIndexOf = c0622d2.f2404b.lastIndexOf(46);
            if (lastIndexOf > 1) {
                String lowerCase = c0622d2.f2404b.substring(0, lastIndexOf).toLowerCase();
                String lowerCase2 = c0622d2.f2404b.substring(lastIndexOf).toLowerCase();
                Iterator it2 = c0785az.iterator();
                while (it2.hasNext()) {
                    ContentValues contentValues3 = (ContentValues) it2.next();
                    String lowerCase3 = contentValues3.getAsString("_display_name").toLowerCase();
                    if (lowerCase3.startsWith(lowerCase) && lowerCase3.endsWith(lowerCase2)) {
                        Long asLong2 = contentValues3.getAsLong("_size");
                        Long asLong3 = contentValues3.getAsLong("last_modified");
                        if (asLong2 != null && asLong3 != null && c0622d2.f2408f == asLong2.longValue() && asLong3.longValue() >= c0622d2.f2406d) {
                            contentValues.clear();
                            contentValues.put("_id", m3006e + c0622d2.f2404b);
                            contentValues.put("cloud_id", contentValues3.getAsString("document_id"));
                            contentValues.put("updated", Integer.valueOf(c0622d2.f2406d));
                            contentValues.put("size", Long.valueOf(c0622d2.f2408f));
                            contentValues.put("failed", (Integer) 0);
                            c0939g.m3436a(contentValues);
                        }
                    }
                }
            }
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0679f
    /* renamed from: b_ */
    public boolean mo2081b_() {
        return this.f3314i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x044d  */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v4 */
    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0952t call() {
        ContentProviderClient contentProviderClient;
        Throwable th;
        Throwable th2;
        C0623e c0623e;
        int i;
        C0939g c0939g;
        ContentProviderClient contentProviderClient2;
        long j;
        long j2;
        ContentResolver contentResolver = this.f3311f.getContentResolver();
        ContentProviderClient contentProviderClient3 = this.f3309d.f3345d;
        m3440a("begin: " + ((String) contentProviderClient3) + " -> " + this.f3309d.f3346e);
        C0952t m3418a = C0936d.m3418a(contentResolver, this.f3307b);
        if (m3418a != null && m3418a.f3332a != 0) {
            m3440a("ignored");
            return m3418a;
        }
        C0936d.m3421a(contentResolver, this.f3307b, 2);
        this.f3310e.f3335d = System.currentTimeMillis();
        this.f3310e.f3336e = System.currentTimeMillis();
        this.f3310e.f3333b = 0;
        this.f3310e.f3334c = 0;
        this.f3310e.f3337f = 0L;
        this.f3310e.f3338g = 0;
        this.f3310e.f3339h = 0;
        this.f3310e.f3340i = 0;
        C0650f c0650f = null;
        this.f3312g.add(this);
        try {
            try {
                c0623e = new C0623e((String) contentProviderClient3, -1);
                i = c0623e.f2421e;
            } catch (Throwable th3) {
                th2 = th3;
                this.f3312g.remove(this);
                if (0 != 0) {
                    c0650f.m2542c();
                }
                if (contentProviderClient3 != 0) {
                    contentProviderClient3.release();
                }
                throw th2;
            }
        } catch (Throwable th4) {
            contentProviderClient = null;
            th = th4;
        }
        if (this.f3313h || i > this.f3310e.f3342k || !contentProviderClient3.startsWith(C0623e.f2410b + '/')) {
            SharedPreferences m3471e = C0956x.m3471e(this.f3311f);
            C0597al c0597al = new C0597al();
            c0597al.m2178a(this.f3308c);
            c0623e.f2420d = C0623e.m2353a(0, 3);
            c0597al.m2180b(c0623e, 240);
            c0623e.m2392l();
            String m3438a = m3438a(c0623e);
            if (this.f3313h || !m3438a.equals(this.f3310e.f3343l)) {
                String[] strArr = new String[1];
                long[] jArr = new long[4];
                ContentValues contentValues = new ContentValues(5);
                Uri parse = Uri.parse(this.f3309d.f3346e);
                contentProviderClient = contentResolver.acquireContentProviderClient(parse);
                try {
                    InterfaceC0729e interfaceC0729e = (InterfaceC0729e) contentProviderClient.getLocalContentProvider();
                    C0939g m3430a = C0939g.m3430a(this.f3311f, this.f3307b);
                    if (m3430a.m3437a()) {
                        this.f3310e.m3450a(false);
                    }
                    if (!this.f3310e.m3452b()) {
                        m3445a(interfaceC0729e, c0623e, m3430a);
                        this.f3310e.m3450a(true);
                    }
                    int m2390j = c0623e.m2390j();
                    int i2 = 0;
                    for (int i3 = 0; i3 < m2390j && !mo2081b_(); i3++) {
                        C0622d m2381e = c0623e.m2381e(i3);
                        long j3 = m2381e.f2408f;
                        long j4 = m2381e.f2406d;
                        if (j3 > 0 && C0956x.m3467a(this.f3311f, m3471e) && (m2381e.f2405c == 'I' || m3471e.getBoolean("include_videos", true))) {
                            File m2376c = c0623e.m2376c(i3);
                            String path = m2376c.getPath();
                            strArr[0] = path;
                            long j5 = 0;
                            long j6 = 0;
                            if (m3430a.m3435a("_id=?", strArr, jArr) != null) {
                                j5 = jArr[0];
                                j6 = jArr[1];
                                j = jArr[2];
                                j2 = jArr[3];
                            } else {
                                j = 0;
                                j2 = 0;
                            }
                            if (j3 != j5 || j4 != j6 || (j > 0 && (this.f3313h || m3444b(j, j2)))) {
                                contentValues.clear();
                                contentValues.put("_id", path);
                                try {
                                    try {
                                        try {
                                            this.f3310e.f3333b++;
                                            contentValues.put("cloud_id", m3439a(interfaceC0729e, m2376c, parse));
                                            contentValues.put("size", Long.valueOf(j3));
                                            contentValues.put("updated", Long.valueOf(j4));
                                            j = 0;
                                            i2++;
                                            this.f3310e.f3334c++;
                                            this.f3310e.f3337f += j3;
                                        } finally {
                                            contentValues.put("failed", Long.valueOf(j));
                                            contentValues.put("last_sync", Long.valueOf(System.currentTimeMillis()));
                                            m3430a.m3436a(contentValues);
                                        }
                                    } catch (C0674a e) {
                                        int i4 = i2;
                                        contentValues.put("updated", (Integer) 0);
                                        m3440a("interrupted");
                                        contentValues.put("failed", Long.valueOf(j));
                                        contentValues.put("last_sync", Long.valueOf(System.currentTimeMillis()));
                                        m3430a.m3436a(contentValues);
                                        i2 = i4;
                                    }
                                } catch (Throwable th5) {
                                    int i5 = i2;
                                    long j7 = j + 1;
                                    m3442a(th5, m2381e.f2404b, this.f3310e);
                                    contentValues.put("failed", Long.valueOf(j7));
                                    contentValues.put("last_sync", Long.valueOf(System.currentTimeMillis()));
                                    m3430a.m3436a(contentValues);
                                    i2 = i5;
                                }
                                C0688a.m2715a(this.f3311f.getApplicationContext(), EnumC0689b.CloudBackup, m2381e.f2405c == 'V' ? "video" : "image");
                            } else if (j > 0) {
                                this.f3310e.f3340i++;
                            }
                        }
                        this.f3310e.f3335d = System.currentTimeMillis();
                    }
                    if (i2 == m2390j) {
                        this.f3310e.f3342k = i;
                        this.f3310e.f3343l = m3438a;
                    }
                    c0939g = m3430a;
                    contentProviderClient2 = contentProviderClient;
                    this.f3312g.remove(this);
                    if (c0939g != null) {
                        c0939g.m2542c();
                    }
                    if (contentProviderClient2 != null) {
                        contentProviderClient2.release();
                    }
                } catch (Throwable th6) {
                    th = th6;
                    m3442a(th, "", this.f3310e);
                    this.f3312g.remove(this);
                    if (0 != 0) {
                        c0650f.m2542c();
                    }
                    if (contentProviderClient != null) {
                        contentProviderClient.release();
                    }
                    this.f3310e.f3335d = System.currentTimeMillis();
                    this.f3310e.f3336e = this.f3310e.f3335d - this.f3310e.f3336e;
                    m3440a((mo2081b_() ? "cancelled" : "end") + ": files=" + this.f3310e.f3334c + ", duration=" + this.f3310e.f3336e + "ms, size=" + (this.f3310e.f3337f / 1024) + "KB");
                    this.f3310e.f3332a = 0;
                    C0936d.m3422a(contentResolver, this.f3307b, this.f3310e);
                    return this.f3310e;
                }
                this.f3310e.f3335d = System.currentTimeMillis();
                this.f3310e.f3336e = this.f3310e.f3335d - this.f3310e.f3336e;
                m3440a((mo2081b_() ? "cancelled" : "end") + ": files=" + this.f3310e.f3334c + ", duration=" + this.f3310e.f3336e + "ms, size=" + (this.f3310e.f3337f / 1024) + "KB");
                this.f3310e.f3332a = 0;
                C0936d.m3422a(contentResolver, this.f3307b, this.f3310e);
                return this.f3310e;
            }
        }
        contentProviderClient2 = null;
        c0939g = null;
        this.f3312g.remove(this);
        if (c0939g != null) {
        }
        if (contentProviderClient2 != null) {
        }
        this.f3310e.f3335d = System.currentTimeMillis();
        this.f3310e.f3336e = this.f3310e.f3335d - this.f3310e.f3336e;
        m3440a((mo2081b_() ? "cancelled" : "end") + ": files=" + this.f3310e.f3334c + ", duration=" + this.f3310e.f3336e + "ms, size=" + (this.f3310e.f3337f / 1024) + "KB");
        this.f3310e.f3332a = 0;
        C0936d.m3422a(contentResolver, this.f3307b, this.f3310e);
        return this.f3310e;
    }
}
