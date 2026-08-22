package com.alensw.p022a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.util.Log;
import java.io.File;

/* renamed from: com.alensw.a.c */
/* loaded from: classes.dex */
public class C0621c {

    /* renamed from: a */
    public static String f2400a;

    /* renamed from: b */
    private static ContentResolver f2401b;

    /* renamed from: c */
    private static C0620bh f2402c;

    /* renamed from: a */
    protected static int m2332a(Uri uri, String str, String[] strArr) {
        try {
            return f2401b.delete(uri, str, strArr);
        } catch (Throwable th) {
            Log.e("ExternalStorage", "remove: ", th);
            return -1;
        }
    }

    /* renamed from: a */
    protected static Uri m2333a(Uri uri, ContentValues contentValues) {
        try {
            return f2401b.insert(uri, contentValues);
        } catch (Throwable th) {
            Log.e("ExternalStorage", "insert: ", th);
            return null;
        }
    }

    /* renamed from: a */
    protected static Uri m2334a(File file, boolean z) {
        try {
            return DocumentsContract.createDocument(f2401b, m2340b(file.getParent()), z ? "vnd.android.document/directory" : "", file.getName());
        } catch (Throwable th) {
            Log.e("ExternalStorage", "create file: ", th);
            return null;
        }
    }

    /* renamed from: a */
    public static Uri m2335a(String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m2340b(str);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            return m2342c(str);
        }
        return null;
    }

    /* renamed from: a */
    public static ParcelFileDescriptor m2336a(File file, String str) {
        Uri m2335a = file.exists() ? m2335a(file.getPath()) : m2339b(file);
        if (m2335a != null) {
            try {
                return f2401b.openFileDescriptor(m2335a, str);
            } catch (Throwable th) {
                Log.e("ExternalStorage", "open file:", th);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m2337a(Context context, C0620bh c0620bh) {
        f2401b = context.getContentResolver();
        f2402c = c0620bh;
    }

    /* renamed from: a */
    public static boolean m2338a(File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m2345d(file);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            return m2348g(file);
        }
        return false;
    }

    /* renamed from: b */
    public static Uri m2339b(File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m2346e(file);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            return m2349h(file);
        }
        return null;
    }

    /* renamed from: b */
    protected static Uri m2340b(String str) {
        String[] strArr;
        try {
            String[] m2329e = f2402c.m2329e(str);
            if (m2329e == null) {
                if (str.startsWith("/mnt/")) {
                    str = "/storage/" + str.substring(5);
                } else if (!str.startsWith("/storage/")) {
                    str = "/storage" + str;
                }
                strArr = f2402c.m2329e(str);
            } else {
                strArr = m2329e;
            }
            if (strArr == null || strArr.length < 2) {
                throw new RuntimeException("invalid path: " + str);
            }
            String str2 = strArr[0] != null ? strArr[0] : f2400a;
            if (str2 == null) {
                throw new RuntimeException("invalid uuid: " + str);
            }
            Uri buildDocumentUriUsingTree = DocumentsContract.buildDocumentUriUsingTree(DocumentsContract.buildTreeDocumentUri("com.android.externalstorage.documents", str2 + ':'), str2 + ':' + strArr[1]);
            Log.d("ExternalStorage", "get uri: " + buildDocumentUriUsingTree);
            return buildDocumentUriUsingTree;
        } catch (Throwable th) {
            Log.e("ExternalStorage", "get uri: ", th);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m2341b(File file, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m2344c(file, str);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0060  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected static Uri m2342c(String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        Uri contentUri = MediaStore.Files.getContentUri("external");
        try {
            Cursor query = f2401b.query(contentUri, new String[]{"_id"}, "_data=?", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        Uri withAppendedId = ContentUris.withAppendedId(contentUri, query.getInt(0));
                        if (query == null) {
                            return withAppendedId;
                        }
                        query.close();
                        return withAppendedId;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = query;
                    if (cursor2 != null) {
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
        return null;
    }

    /* renamed from: c */
    public static boolean m2343c(File file) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m2347f(file);
        }
        if (Build.VERSION.SDK_INT >= 11) {
            return m2350i(file);
        }
        return false;
    }

    /* renamed from: c */
    protected static boolean m2344c(File file, String str) {
        try {
            return DocumentsContract.renameDocument(f2401b, m2340b(file.getPath()), str) != null;
        } catch (Throwable th) {
            Log.e("ExternalStorage", "rename file: ", th);
            return false;
        }
    }

    /* renamed from: d */
    protected static boolean m2345d(File file) {
        return m2334a(file, true) != null;
    }

    /* renamed from: e */
    protected static Uri m2346e(File file) {
        return m2334a(file, false);
    }

    /* renamed from: f */
    protected static boolean m2347f(File file) {
        try {
            if (file.isDirectory()) {
                return false;
            }
            return DocumentsContract.deleteDocument(f2401b, m2340b(file.getPath()));
        } catch (Throwable th) {
            Log.e("ExternalStorage", "delete file: ", th);
            return false;
        }
    }

    /* renamed from: g */
    protected static boolean m2348g(File file) {
        Uri contentUri = MediaStore.Files.getContentUri("external");
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", file.getPath());
        m2333a(contentUri, contentValues);
        contentValues.put("_data", new File(file, "!qpicfake.jpg").getPath());
        Uri m2333a = m2333a(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        if (m2333a != null) {
            m2332a(m2333a, null, null);
        }
        return file.exists();
    }

    /* renamed from: h */
    protected static Uri m2349h(File file) {
        String path = file.getPath();
        Uri m2342c = m2342c(path);
        if (m2342c != null) {
            return m2342c;
        }
        Uri contentUri = MediaStore.Files.getContentUri("external");
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", path);
        return m2333a(contentUri, contentValues);
    }

    /* renamed from: i */
    protected static boolean m2350i(File file) {
        Uri contentUri = MediaStore.Files.getContentUri("external");
        String path = file.getPath();
        String[] strArr = {path};
        m2332a(contentUri, "_data=?", strArr);
        if (!file.exists()) {
            return true;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", path);
        m2333a(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        m2332a(contentUri, "_data=?", strArr);
        return !file.exists();
    }
}
