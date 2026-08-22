package com.alensw.p023b.p033j;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.util.List;

/* renamed from: com.alensw.b.j.a */
/* loaded from: classes.dex */
public class C0725a {

    /* renamed from: a */
    public static final String[] f2757a = {"_display_name", "parent_id"};

    /* renamed from: a */
    public static Uri m2907a(ContentResolver contentResolver, Uri uri, String str, String str2) {
        if (Build.VERSION.SDK_INT < 11) {
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("mime_type", str);
            contentValues.put("_display_name", str2);
            return contentResolver.insert(uri, contentValues);
        }
        Bundle bundle = new Bundle();
        bundle.putString("document_id", m2916b(uri));
        bundle.putString("mime_type", str);
        bundle.putString("_display_name", str2);
        return m2918c(uri.getAuthority(), contentResolver.call(uri, "android:createDocument", (String) null, bundle).getString("document_id"));
    }

    /* renamed from: a */
    public static Uri m2908a(Uri uri) {
        return uri.buildUpon().appendPath("children").build();
    }

    /* renamed from: a */
    public static final Uri m2909a(String str) {
        return new Uri.Builder().scheme("content").authority(str).appendPath("quickpic.account").build();
    }

    /* renamed from: a */
    public static Uri m2910a(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath("quickpic.account").appendPath(str2).build();
    }

    /* renamed from: a */
    public static ParcelFileDescriptor m2911a(ContentResolver contentResolver, Uri uri, int i) {
        if (Build.VERSION.SDK_INT < 11) {
            return contentResolver.openAssetFileDescriptor(uri.buildUpon().appendQueryParameter("thumbnail_size", Integer.toString(i)).build(), "r").getParcelFileDescriptor();
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("thumbnail_size", new Point(i, i));
        return contentResolver.openTypedAssetFileDescriptor(uri, "image/*", bundle).getParcelFileDescriptor();
    }

    /* renamed from: a */
    public static void m2912a(ContentResolver contentResolver, Uri uri) {
        Cursor query;
        if (m2920c(uri) && (query = contentResolver.query(uri.buildUpon().appendQueryParameter("quickpic.cancel", "true").build(), null, null, null, null)) != null) {
            query.close();
        }
    }

    /* renamed from: a */
    public static boolean m2913a(ContentResolver contentResolver, Uri uri, Uri uri2, Uri uri3) {
        if (Build.VERSION.SDK_INT < 11) {
            ContentValues contentValues = new ContentValues(2);
            contentValues.put("src_uri", m2916b(uri2));
            contentValues.put("dst_uri", m2916b(uri3));
            return contentResolver.update(uri, contentValues, null, null) == 1;
        }
        Bundle bundle = new Bundle();
        bundle.putString("document_id", m2916b(uri));
        bundle.putString("src_uri", m2916b(uri2));
        bundle.putString("dst_uri", m2916b(uri3));
        return contentResolver.call(uri, "android:moveDocument", (String) null, bundle) != null;
    }

    /* renamed from: b */
    public static Uri m2914b(String str) {
        return new Uri.Builder().scheme("content").authority(str).appendPath("root").build();
    }

    /* renamed from: b */
    public static Uri m2915b(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath("document").appendPath(str2).appendPath("children").build();
    }

    /* renamed from: b */
    public static String m2916b(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() >= 2 && "document".equals(pathSegments.get(0))) {
            return pathSegments.get(1);
        }
        if (pathSegments.size() >= 4 && "tree".equals(pathSegments.get(0)) && "document".equals(pathSegments.get(2))) {
            return pathSegments.get(3);
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }

    /* renamed from: b */
    public static boolean m2917b(ContentResolver contentResolver, Uri uri) {
        if (Build.VERSION.SDK_INT < 11) {
            return contentResolver.delete(uri, null, null) == 1;
        }
        Bundle bundle = new Bundle();
        bundle.putString("document_id", m2916b(uri));
        return contentResolver.call(uri, "android:deleteDocument", (String) null, bundle) != null;
    }

    /* renamed from: c */
    public static Uri m2918c(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath("document").appendPath(str2).build();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x006c  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m2919c(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        Cursor cursor2 = null;
        String authority = uri.getAuthority();
        StringBuilder sb = new StringBuilder(256);
        Uri uri2 = uri;
        while (true) {
            try {
                cursor = contentResolver.query(uri2, f2757a, null, null, null);
                if (cursor == null) {
                    break;
                }
                try {
                    if (!cursor.moveToFirst()) {
                        break;
                    }
                    String string = cursor.getString(0);
                    String string2 = cursor.getString(1);
                    if (string != null && string.length() > 0) {
                        sb.insert(0, File.separatorChar);
                        sb.insert(1, string);
                    }
                    if (string2 != null) {
                        uri2 = m2918c(authority, string2);
                        if (cursor != null) {
                            cursor.close();
                        }
                    } else if (cursor != null) {
                        cursor.close();
                    }
                } catch (Throwable th) {
                    cursor2 = cursor;
                    th = th;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        return sb.length() <= 0 ? sb.toString() : File.separator;
    }

    /* renamed from: c */
    public static boolean m2920c(Uri uri) {
        return uri != null && m2921c(uri.getAuthority());
    }

    /* renamed from: c */
    public static boolean m2921c(String str) {
        return "com.alensw.PicFolder.CloudProvider".equals(str);
    }

    /* renamed from: d */
    public static String m2922d(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        Cursor cursor2 = null;
        String[] strArr = {"parent_id"};
        String authority = uri.getAuthority();
        String str = null;
        Uri uri2 = uri;
        while (true) {
            try {
                cursor = contentResolver.query(uri2, strArr, null, null, null);
                if (cursor == null) {
                    break;
                }
                try {
                    try {
                        if (!cursor.moveToFirst()) {
                            break;
                        }
                        String string = cursor.getString(0);
                        if (string != null) {
                            try {
                                uri2 = m2918c(authority, string);
                                if (cursor != null) {
                                    cursor.close();
                                }
                                str = string;
                            } catch (Throwable th) {
                                cursor2 = cursor;
                                str = string;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                return str;
                            }
                        } else if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th2) {
                        cursor2 = cursor;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                cursor = null;
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        return str;
    }

    /* renamed from: d */
    public static String m2923d(String str, String str2) {
        return Uri.parse(str).buildUpon().appendQueryParameter("quickpic.authorization", str2).build().toString();
    }

    /* renamed from: d */
    public static boolean m2924d(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        return pathSegments.size() >= 2 && "document".equals(pathSegments.get(0));
    }

    /* renamed from: e */
    public static String[] m2925e(Uri uri) {
        String str;
        char charAt;
        String uri2 = uri.toString();
        String queryParameter = uri.getQueryParameter("quickpic.authorization");
        if (queryParameter != null) {
            int lastIndexOf = uri2.lastIndexOf("quickpic.authorization=");
            int indexOf = uri2.indexOf(38, "quickpic.authorization=".length() + lastIndexOf);
            if (lastIndexOf > 0 && ((charAt = uri2.charAt(lastIndexOf - 1)) == '?' || charAt == '&')) {
                lastIndexOf--;
            }
            if (indexOf == -1) {
                indexOf = uri2.length();
            }
            str = uri2.replace(uri2.substring(lastIndexOf, indexOf), "");
        } else {
            str = uri2;
        }
        return new String[]{str, queryParameter};
    }
}
