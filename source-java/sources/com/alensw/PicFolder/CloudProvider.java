package com.alensw.PicFolder;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.MergeCursor;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.alensw.cloud.C0862ac;
import com.alensw.cloud.C0879e;
import com.alensw.cloud.C0961x;
import com.alensw.cloud.EnumC0963z;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0904b;
import com.alensw.cloud.p036a.AbstractC0808bv;
import com.alensw.cloud.p036a.C0784ay;
import com.alensw.cloud.p036a.C0785az;
import com.alensw.cloud.p036a.C0812bz;
import com.alensw.cloud.p036a.C0814ca;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p033j.AbstractC0726b;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p033j.C0727c;
import com.alensw.p023b.p033j.C0728d;
import com.alensw.p023b.p033j.InterfaceC0729e;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONException;

/* loaded from: classes.dex */
public class CloudProvider extends AbstractC0726b implements InterfaceC0729e {

    /* renamed from: a */
    private static final int f1969a = Math.max(C0730a.f2769c, 4);

    /* renamed from: b */
    private static final C0730a f1970b = new C0730a(f1969a, f1969a + 4, 16, 10);

    /* renamed from: i */
    private static final String[] f1971i = {"document_id", "mime_type", "_display_name", "flags", "_size", "last_modified", "datetaken", ClientCookie.COMMENT_ATTR};

    /* renamed from: j */
    private static final String[] f1972j = {"root_id", "mime_types", "title", "summary", "document_id", "flags", "icon"};

    /* renamed from: c */
    private ContentResolver f1973c;

    /* renamed from: d */
    private final C0904b f1974d = new C0904b();

    /* renamed from: e */
    private final ConcurrentHashMap f1975e = new ConcurrentHashMap(4);

    /* renamed from: f */
    private final ConcurrentHashMap f1976f = new ConcurrentHashMap(8);

    /* renamed from: g */
    private boolean f1977g;

    /* renamed from: h */
    private C0862ac f1978h;

    /* renamed from: a */
    private String m1935a(C0561c c0561c, String str) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new FileNotFoundException("failed");
            }
            try {
                return c0561c.f2170e.m3246d(str, null);
            } catch (C0812bz e) {
                if (!m1940a(c0561c, e, (InterfaceC0679f) null)) {
                    throw new FileNotFoundException(e.getMessage());
                }
                i = i2 + 1;
            } catch (Throwable th) {
                throw new FileNotFoundException(th.getMessage());
            }
        }
    }

    /* renamed from: a */
    private void m1938a() {
        synchronized (this.f1974d) {
            if (this.f1977g) {
                return;
            }
            this.f1974d.m3392a(getContext());
            Iterator it = this.f1974d.iterator();
            while (it.hasNext()) {
                try {
                    m1941a((C0889a) it.next());
                } catch (Throwable th) {
                }
            }
            this.f1977g = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m1940a(C0561c c0561c, C0812bz c0812bz, InterfaceC0679f interfaceC0679f) {
        if (c0812bz instanceof C0814ca) {
            try {
                c0561c.m2089a(this.f1974d, interfaceC0679f);
                return true;
            } catch (JSONException e) {
            } catch (Throwable th) {
                return false;
            }
        }
        c0561c.m2092c(getContext());
        return false;
    }

    /* renamed from: a */
    private boolean m1941a(C0889a c0889a) {
        String m3348a = c0889a.m3348a();
        C0561c c0561c = new C0561c(null);
        c0561c.f2167b = m3348a;
        c0561c.f2168c = c0889a;
        c0561c.f2170e = AbstractC0808bv.m3235a(getContext(), c0889a);
        if (c0561c.f2170e == null) {
            return false;
        }
        c0561c.f2169d = new C0784ay();
        c0561c.f2169d.m2534a(c0561c.f2170e.mo3245c());
        this.f1975e.put(m3348a, c0561c);
        return true;
    }

    /* renamed from: b */
    private ParcelFileDescriptor m1942b(String str, int i) {
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        if (!m1953g.f2170e.mo3234d_()) {
            i = 0;
        }
        File m2087a = m1953g.m2087a(m1949d, i);
        if (m2087a != null) {
            return ParcelFileDescriptor.open(m2087a, 268435456);
        }
        return null;
    }

    /* renamed from: b */
    private synchronized C0862ac m1943b() {
        if (this.f1978h == null) {
            this.f1978h = new C0526a(this, 0);
        }
        return this.f1978h;
    }

    /* renamed from: b */
    private static String[] m1945b(String[] strArr) {
        return (strArr == null || strArr.length == 0) ? f1971i : strArr;
    }

    /* renamed from: c */
    private ParcelFileDescriptor m1946c(String str, int i) {
        File file;
        C0561c m1953g = m1953g(str);
        Uri m2918c = C0725a.m2918c("com.alensw.PicFolder.CloudProvider", str);
        if (i != 0 && !m1953g.f2170e.mo3234d_()) {
            String m1949d = m1949d(str);
            if (!m1953g.f2169d.m3186a(m1949d, "mime_type", "").startsWith("image/")) {
                if (Build.VERSION.SDK_INT < 16) {
                    throw new FileNotFoundException();
                }
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                C0862ac m1943b = m1943b();
                m1943b.m3279a();
                try {
                    try {
                        mediaMetadataRetriever.setDataSource(m1943b.m3278a(m2918c), new HashMap());
                        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
                        File f = m1953g.f2169d.m2546f();
                        FileOutputStream fileOutputStream = new FileOutputStream(f);
                        frameAtTime.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
                        fileOutputStream.close();
                        m1953g.f2169d.m2538a(m1949d, i, f);
                        return ParcelFileDescriptor.open(f, 268435456);
                    } catch (Throwable th) {
                        Log.e("CloudProvider", "retrieve bitmap: ", th);
                        throw new FileNotFoundException(th.getMessage());
                    }
                } finally {
                    mediaMetadataRetriever.release();
                    m1943b.m3280b();
                }
            }
            i = 0;
        }
        C0733d c0733d = new C0733d(new C0565g(this, m1953g, str, i));
        C0733d c0733d2 = (C0733d) this.f1976f.putIfAbsent(m2918c.getPath(), c0733d);
        C0733d m2935a = c0733d2 == null ? f1970b.m2935a(c0733d) : c0733d2;
        try {
            file = (File) m2935a.get();
        } catch (Throwable th2) {
            Log.e("CloudProvider", "future get " + str + ": " + th2);
            file = null;
        }
        this.f1976f.remove(m2918c.getPath());
        if (file != null) {
            return ParcelFileDescriptor.open(file, 268435456);
        }
        if (m2935a.isCancelled()) {
            throw new C0674a();
        }
        throw new FileNotFoundException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static String m1947c(String str, String str2) {
        return str2 + ":" + str;
    }

    /* renamed from: c */
    private static String[] m1948c(String[] strArr) {
        return (strArr == null || strArr.length == 0) ? f1972j : strArr;
    }

    /* renamed from: d */
    public static String m1949d(String str) {
        try {
            return str.substring(str.indexOf(58) + 1);
        } catch (Throwable th) {
            throw new FileNotFoundException(th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static String m1950d(String str, int i) {
        return (i == 0 ? "o" : Integer.toHexString(i)) + ":" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static String m1951d(String str, String str2) {
        return str + ":" + str2;
    }

    /* renamed from: e */
    public static EnumC0963z m1952e(String str) {
        try {
            int indexOf = str.indexOf(58);
            if (indexOf != -1) {
                str = str.substring(0, indexOf);
            }
            return C0889a.m3347b(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public C0561c m1953g(String str) {
        m1938a();
        try {
            C0561c c0561c = (C0561c) this.f1975e.get(str.substring(0, str.indexOf(58)));
            if (c0561c == null) {
                throw new FileNotFoundException("invalid id");
            }
            if (!c0561c.f2166a) {
                c0561c.m2088a(getContext());
            }
            return c0561c;
        } catch (Throwable th) {
            throw new FileNotFoundException(th.getMessage());
        }
    }

    /* renamed from: h */
    private static boolean m1954h(String str) {
        return (str == null || str.indexOf(58) == -1) ? false : true;
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public AssetFileDescriptor mo1955a(String str, Point point, CancellationSignal cancellationSignal) {
        int max = point != null ? Math.max(point.x, point.y) : 320;
        ParcelFileDescriptor m1942b = m1942b(str, max);
        if (m1942b == null) {
            m1942b = m1946c(str, max);
        }
        if (m1942b != null) {
            return new AssetFileDescriptor(m1942b, 0L, m1942b.getStatSize());
        }
        throw new FileNotFoundException();
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public Cursor mo1956a(String str, String[] strArr, String str2, String[] strArr2) {
        String[] strArr3;
        String string;
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        if (strArr != null && strArr.length == 1 && "sharable_url".equals(strArr[0])) {
            try {
                C0727c c0727c = new C0727c(strArr);
                String m1935a = m1935a(m1953g, m1949d);
                if (m1935a == null) {
                    return c0727c;
                }
                c0727c.m2932a().m2933a("sharable_url", m1935a);
                return c0727c;
            } catch (C0674a e) {
                Log.w("CloudProvider", "query url cancelled: " + m1949d);
                throw e;
            } catch (Exception e2) {
                Log.e("CloudProvider", "query url failed: " + m1949d, e2);
                throw new FileNotFoundException(e2.getMessage());
            }
        }
        Cursor m3184a = m1953g.f2169d.m3184a(m1949d, strArr, str2, strArr2);
        if (m3184a != null && strArr != null) {
            return new C0564f(m3184a, m1953g.f2167b);
        }
        if (m3184a == null) {
            m3184a = m1953g.f2169d.m3184a(m1949d, (String[]) null, str2, strArr2);
        }
        String[] m1945b = m1945b(strArr);
        if (Arrays.asList(m1945b).contains("_data")) {
            strArr3 = m1945b;
        } else {
            int length = m1945b.length;
            strArr3 = new String[length + 1];
            System.arraycopy(m1945b, 0, strArr3, 0, length);
            strArr3[length] = "_data";
        }
        C0727c c0727c2 = new C0727c(strArr3);
        if (m3184a != null && m3184a.moveToFirst()) {
            C0728d m2932a = c0727c2.m2932a();
            for (String str3 : strArr3) {
                if ("_data".equals(str3)) {
                    File m2087a = m1953g.m2087a(m1949d, 0);
                    if (m2087a != null) {
                        m2932a.m2933a(str3, m2087a.getPath());
                    }
                } else {
                    int columnIndex = m3184a.getColumnIndex(str3);
                    if (columnIndex != -1 && (string = m3184a.getString(columnIndex)) != null) {
                        m2932a.m2933a(str3, string);
                    }
                }
            }
        }
        if (m3184a != null) {
            m3184a.close();
        }
        return new C0564f(c0727c2, m1953g.f2167b);
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public Cursor mo1957a(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        String[] m1945b = m1945b(strArr);
        Cursor m3185a = m1953g.f2169d.m3185a(m1949d, m1945b, str2, strArr2, str3);
        if (m3185a == null) {
            m3185a = new C0727c(m1945b);
        }
        int count = m3185a.getCount();
        C0564f c0564f = new C0564f(m3185a, m1953g.f2167b);
        Uri m2915b = C0725a.m2915b("com.alensw.PicFolder.CloudProvider", str);
        C0733d c0733d = new C0733d(new C0566h(this, m1953g, str, this.f1973c, m2915b, count == 0));
        C0733d c0733d2 = (C0733d) this.f1976f.putIfAbsent(m2915b.getPath(), c0733d);
        if (c0733d2 == null) {
            c0564f.m2093a(true);
            c0564f.setNotificationUri(this.f1973c, m2915b);
            f1970b.m2935a(c0733d);
        } else if (((C0566h) c0733d2.m2940b()).f2190a) {
            this.f1976f.remove(m2915b.getPath());
        } else {
            c0564f.m2093a(true);
            c0564f.setNotificationUri(this.f1973c, m2915b);
        }
        return c0564f;
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public Cursor mo1958a(String[] strArr) {
        ArrayList arrayList;
        Resources resources = getContext().getResources();
        String[] m1948c = m1948c(strArr);
        m1938a();
        synchronized (this.f1974d) {
            arrayList = new ArrayList(this.f1974d.m2582c());
            Iterator it = this.f1974d.iterator();
            while (it.hasNext()) {
                C0889a c0889a = (C0889a) it.next();
                String m3348a = c0889a.m3348a();
                C0561c c0561c = (C0561c) this.f1975e.get(m3348a);
                if (c0561c == null) {
                    Log.w("CloudProvider", "not found cloud: " + m3348a);
                } else {
                    int i = 0;
                    int i2 = 0;
                    C0961x m3314a = C0879e.m3314a(c0889a.f3190a);
                    if (m3314a != null) {
                        i = m3314a.f3350c;
                        i2 = m3314a.f3349b;
                    }
                    C0727c c0727c = new C0727c(m1948c);
                    C0728d m2932a = c0727c.m2932a();
                    ContentValues mo3141a = c0561c.f2170e.mo3141a();
                    m2932a.m2933a("root_id", m3348a);
                    m2932a.m2933a("document_id", m1951d(m3348a, mo3141a.getAsString("document_id")));
                    m2932a.m2933a("flags", mo3141a.getAsInteger("flags"));
                    m2932a.m2933a("title", resources.getString(i));
                    m2932a.m2933a("summary", c0889a.f3192c != null ? c0889a.f3192c : c0889a.f3191b);
                    m2932a.m2933a("mime_types", "image/*");
                    m2932a.m2933a("icon", Integer.valueOf(i2));
                    arrayList.add(c0727c);
                }
            }
        }
        int size = arrayList.size();
        if (size == 0) {
            return new C0727c(m1948c);
        }
        Cursor[] cursorArr = new Cursor[size];
        arrayList.toArray(cursorArr);
        return new MergeCursor(cursorArr);
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public ParcelFileDescriptor mo1959a(String str, String str2, CancellationSignal cancellationSignal) {
        ParcelFileDescriptor m1942b = m1942b(str, 0);
        if (m1942b == null) {
            m1942b = m1946c(str, 0);
        }
        if (m1942b != null) {
            return m1942b;
        }
        throw new FileNotFoundException();
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public String mo1960a(String str, String str2, String str3) {
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        if (!"vnd.android.document/directory".equals(str2)) {
            throw new FileNotFoundException("can only create a folder");
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new FileNotFoundException("failed");
            }
            try {
                ContentValues mo3142a = m1953g.f2170e.mo3142a(m1949d, str3, (InterfaceC0679f) null);
                String asString = mo3142a.getAsString("document_id");
                if (asString != null && m1953g.f2169d.m3186a(asString, "document_id", (String) null) == null) {
                    mo3142a.put("parent_id", m1949d);
                    m1953g.f2169d.m3187a(mo3142a);
                    this.f1973c.notifyChange(C0725a.m2918c("com.alensw.PicFolder.CloudProvider", str), null);
                }
                return m1951d(m1953g.f2167b, asString);
            } catch (C0812bz e) {
                if (!m1940a(m1953g, e, (InterfaceC0679f) null)) {
                    throw new FileNotFoundException(e.getMessage());
                }
                i = i2 + 1;
            } catch (Throwable th) {
                throw new FileNotFoundException(th.getMessage());
            }
        }
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public void mo1961a(String str, ContentValues contentValues) {
        C0889a c0889a = new C0889a();
        c0889a.m3349a(contentValues);
        m1938a();
        synchronized (this.f1974d) {
            this.f1974d.m3390a(c0889a);
            this.f1974d.m2587g();
        }
        m1941a(c0889a);
        C0688a.m2715a(getContext().getApplicationContext(), EnumC0689b.AddCloud, c0889a.f3190a.toString());
    }

    @Override // com.alensw.p023b.p033j.InterfaceC0729e
    /* renamed from: a */
    public void mo1962a(String str, C0785az c0785az, InterfaceC0678e interfaceC0678e) {
        boolean mo3149a;
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        C0785az c0785az2 = new C0785az(256);
        int i = 0;
        do {
            C0675b.m2664a(interfaceC0678e);
            c0785az2.clear();
            mo3149a = m1953g.f2170e.mo3149a(m1949d, c0785az2, i, interfaceC0678e);
            c0785az.addAll(c0785az2);
            i += c0785az2.size();
            if (c0785az2.isEmpty()) {
                return;
            }
        } while (!mo3149a);
    }

    @Override // com.alensw.p023b.p033j.InterfaceC0729e
    /* renamed from: a */
    public void mo1963a(String str, String str2, InterfaceC0678e interfaceC0678e) {
        FileOutputStream fileOutputStream = null;
        int i = 0;
        ParcelFileDescriptor m1942b = m1942b(str, 0);
        if (m1942b != null) {
            ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(m1942b);
            try {
                fileOutputStream = C0742b.m3005e(new File(str2));
                C0675b.m2652a(autoCloseInputStream, fileOutputStream, m1942b.getStatSize(), interfaceC0678e);
                return;
            } finally {
                C0675b.m2665a(fileOutputStream);
            }
        }
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new RuntimeException("failed");
            }
            try {
                m1953g.f2170e.m3244b(m1949d, m1953g.m2086a(m1949d).f2176a, str2, interfaceC0678e);
                return;
            } catch (C0812bz e) {
                if (!m1940a(m1953g, e, (InterfaceC0679f) null)) {
                    throw new FileNotFoundException(e.getMessage());
                }
                i = i2 + 1;
            } catch (Throwable th) {
                throw new FileNotFoundException(th.getMessage());
            }
        }
    }

    @Override // com.alensw.p023b.p033j.InterfaceC0729e
    /* renamed from: a */
    public void mo1964a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new RuntimeException("failed");
            }
            try {
                m1953g.f2170e.mo3233a(m1949d, m1953g.m2086a(m1949d).f2176a, str2, c0682i, interfaceC0678e);
                return;
            } catch (C0812bz e) {
                if (!m1940a(m1953g, e, (InterfaceC0679f) null)) {
                    throw e;
                }
                i = i2 + 1;
            }
        }
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: a */
    public boolean mo1965a(String str) {
        C0561c c0561c = str != null ? (C0561c) this.f1975e.remove(str) : null;
        if (c0561c == null || c0561c.f2168c == null) {
            return false;
        }
        m1938a();
        synchronized (this.f1974d) {
            this.f1974d.m2583c(c0561c.f2168c);
            this.f1974d.m2587g();
        }
        c0561c.m2090b(getContext());
        return true;
    }

    @Override // com.alensw.p023b.p033j.InterfaceC0729e
    /* renamed from: b */
    public String mo1966b(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        C0561c m1953g = m1953g(str);
        if (m1953g.f2168c.f3196g.m3382a()) {
            m1953g.m2089a(this.f1974d, interfaceC0678e);
        }
        String m1949d = m1949d(str);
        if (c0682i.f2576c == null) {
            c0682i.f2576c = C0690c.m2724b(str2);
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new RuntimeException("upload failed: " + str2);
            }
            try {
                ContentValues mo3143a = m1953g.f2170e.mo3143a(m1949d, str2, c0682i, interfaceC0678e);
                String asString = mo3143a.getAsString("document_id");
                if (asString != null && m1953g.f2169d.m3186a(asString, "document_id", (String) null) == null) {
                    mo3143a.put("parent_id", m1949d);
                    m1953g.f2169d.m3187a(mo3143a);
                    this.f1973c.notifyChange(C0725a.m2918c("com.alensw.PicFolder.CloudProvider", str), null);
                }
                return m1951d(m1953g.f2167b, asString);
            } catch (C0812bz e) {
                if (!m1940a(m1953g, e, (InterfaceC0679f) null) || !(c0682i.f2578e instanceof FileInputStream)) {
                    throw e;
                }
                ((FileInputStream) c0682i.f2578e).getChannel().position(0L);
                Log.d("CloudProvider", "rewind input stream: " + c0682i.f2578e.available());
                i = i2 + 1;
            }
        }
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: b */
    public void mo1967b(String str) {
        C0733d c0733d = (C0733d) this.f1976f.remove(str);
        if (c0733d != null) {
            c0733d.cancel(false);
        }
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: b */
    public void mo1968b(String str, String str2, String str3) {
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        String m1949d2 = m1949d(str2);
        String m1949d3 = m1949d(str3);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new FileNotFoundException("failed");
            }
            try {
                m1953g.f2169d.m3191a(m1949d, m1953g.f2170e.mo3144a(m1949d, m1949d2, m1949d3, (InterfaceC0679f) null));
                return;
            } catch (C0812bz e) {
                if (!m1940a(m1953g, e, (InterfaceC0679f) null)) {
                    throw new FileNotFoundException(e.getMessage());
                }
                i = i2 + 1;
            } catch (Throwable th) {
                Log.d("CloudProvider", th.toString());
                throw new FileNotFoundException(th.getMessage());
            }
        }
    }

    @Override // com.alensw.p023b.p033j.AbstractC0726b
    /* renamed from: c */
    public void mo1969c(String str) {
        if (str != null && !m1954h(str)) {
            mo1965a(str);
            return;
        }
        C0561c m1953g = m1953g(str);
        String m1949d = m1949d(str);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new FileNotFoundException("failed");
            }
            try {
                m1953g.f2170e.mo3151c(m1949d, null);
                m1953g.f2169d.m3190a(m1949d);
                return;
            } catch (C0812bz e) {
                if (!m1940a(m1953g, e, (InterfaceC0679f) null)) {
                    throw new FileNotFoundException(e.getMessage());
                }
                i = i2 + 1;
            } catch (Throwable th) {
                throw new FileNotFoundException(th.getMessage());
            }
        }
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f1973c = getContext().getContentResolver();
        return true;
    }
}
