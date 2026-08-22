package com.alensw.PicFolder;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* loaded from: classes.dex */
public class FileProvider extends ContentProvider {

    /* renamed from: a */
    public static final String[] f1996a = {"_data", "_display_name", "title", "mime_type", "_size", "datetaken", "latitude", "longitude", "orientation"};

    /* renamed from: b */
    private static final Uri f1997b = Uri.parse("content://com.alensw.PicFolder.FileProvider");

    /* renamed from: a */
    public static Uri m1982a(String str) {
        return (str == null || str.length() == 0) ? Uri.EMPTY : C0725a.m2918c("com.alensw.PicFolder.FileProvider", str);
    }

    /* renamed from: a */
    public static String m1983a(Uri uri) {
        try {
            return C0725a.m2916b(uri);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        String path = uri.getPath();
        return path == null ? "*/*" : C0690c.m2724b(path);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        try {
            return C0662f.m2593b(new File(m1983a(uri)), true);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        if (strArr == null) {
            strArr = f1996a;
        }
        MatrixCursor matrixCursor = new MatrixCursor(strArr);
        String m1983a = m1983a(uri);
        if (m1983a != null) {
            Object[] objArr = new Object[strArr.length];
            char m2721a = C0690c.m2721a(m1983a);
            long lastModified = new File(m1983a).lastModified();
            C0707c m2787a = C0707c.m2787a(m1983a, true);
            long m2802e = m2787a != null ? m2787a.m2802e() : 0L;
            float[] m2812o = m2787a != null ? m2787a.m2812o() : null;
            for (int i = 0; i < strArr.length; i++) {
                String str3 = strArr[i];
                if ("_data".equals(str3)) {
                    objArr[i] = m1983a;
                } else if ("_display_name".equals(str3)) {
                    objArr[i] = C0742b.m2992b(m1983a);
                } else if ("title".equals(str3)) {
                    objArr[i] = C0742b.m2997c(m1983a);
                } else if ("mime_type".equals(str3)) {
                    objArr[i] = C0690c.m2722a(m1983a, m2721a);
                } else if ("_size".equals(str3)) {
                    objArr[i] = Long.valueOf(new File(m1983a).length());
                } else if (m2721a == 'I') {
                    if ("datetaken".equals(str3) && m2787a != null) {
                        objArr[i] = Long.valueOf(m2787a.m2789a(lastModified));
                    } else if ("latitude".equals(str3) && m2812o != null) {
                        objArr[i] = Double.valueOf(m2812o[0]);
                    } else if ("longitude".equals(str3) && m2812o != null) {
                        objArr[i] = Double.valueOf(m2812o[1]);
                    } else if ("orientation".equals(str3) && m2787a != null) {
                        objArr[i] = Integer.valueOf(m2787a.m2803f());
                    } else if ("width".equals(str3)) {
                        objArr[i] = Integer.valueOf((int) (2147483647L & m2802e));
                    } else if ("height".equals(str3)) {
                        objArr[i] = Integer.valueOf((int) ((m2802e >> 32) & 2147483647L));
                    }
                }
            }
            if (m2787a != null) {
                m2787a.m2792a();
            }
            matrixCursor.addRow(objArr);
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
