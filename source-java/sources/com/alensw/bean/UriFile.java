package com.alensw.bean;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import com.alensw.PicFolder.FileProvider;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p033j.C0725a;
import java.io.File;

/* loaded from: classes.dex */
public class UriFile extends CommonFile {

    /* renamed from: k */
    public static final String[] f2843k = {"_id", "_data", "_display_name", "mime_type", "_size", "date_modified", "datetaken"};

    protected UriFile(char c, Uri uri, String str, long j, long j2, long j3) {
        super(c, uri.getLastPathSegment(), str, 0, j, j2, j3, null, uri);
    }

    /* renamed from: a */
    public static CommonFile m3072a(char c, Uri uri, String str) {
        return m3073a(c, uri, str, 0L, 0L, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e0  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static CommonFile m3073a(char c, Uri uri, String str, long j, long j2, long j3) {
        long j4;
        long j5;
        long j6;
        String str2;
        char c2;
        Cursor cursor;
        Cursor cursor2;
        int i;
        long j7;
        long j8;
        long j9;
        char m3011a;
        Cursor cursor3;
        Cursor cursor4;
        long j10;
        long j11;
        long j12;
        char m3011a2;
        String scheme = uri.getScheme();
        if ("file".equals(scheme)) {
            String path = uri.getPath();
            if (path != null) {
                return m3075a(path, c, str, j, j2, j3);
            }
            j4 = j3;
            j5 = j2;
            j6 = j;
            str2 = str;
            c2 = c;
        } else {
            if ("content".equals(scheme)) {
                ContentResolver contentResolver = QuickApp.m2036a().getContentResolver();
                String authority = uri.getAuthority();
                if ("media".equals(authority)) {
                    try {
                        cursor3 = contentResolver.query(uri, f2843k, null, null, null);
                        if (cursor3 != null) {
                            try {
                                try {
                                    if (cursor3.moveToFirst()) {
                                        int i2 = cursor3.getInt(0);
                                        String string = cursor3.getString(1);
                                        String string2 = cursor3.getString(2);
                                        String string3 = str == null ? cursor3.getString(3) : str;
                                        if (j == 0) {
                                            try {
                                                j10 = cursor3.getLong(4);
                                            } catch (Throwable th) {
                                                cursor4 = cursor3;
                                                str = string3;
                                                if (cursor4 != null) {
                                                }
                                                j4 = j3;
                                                j5 = j2;
                                                j6 = j;
                                                str2 = str;
                                                c2 = c;
                                                return new UriFile(c2, uri, str2, j6, j5, j4);
                                            }
                                        } else {
                                            j10 = j;
                                        }
                                        if (j2 == 0) {
                                            try {
                                                j11 = cursor3.getLong(5);
                                            } catch (Throwable th2) {
                                                cursor4 = cursor3;
                                                j = j10;
                                                str = string3;
                                                if (cursor4 != null) {
                                                }
                                                j4 = j3;
                                                j5 = j2;
                                                j6 = j;
                                                str2 = str;
                                                c2 = c;
                                                return new UriFile(c2, uri, str2, j6, j5, j4);
                                            }
                                        } else {
                                            j11 = j2;
                                        }
                                        if (j3 == 0) {
                                            try {
                                                long j13 = cursor3.getLong(6) / 1000;
                                                if (j13 == 0) {
                                                    j13 = j11;
                                                }
                                                j12 = j13;
                                            } catch (Throwable th3) {
                                                cursor4 = cursor3;
                                                j2 = j11;
                                                j = j10;
                                                str = string3;
                                                if (cursor4 != null) {
                                                    cursor4.close();
                                                }
                                                j4 = j3;
                                                j5 = j2;
                                                j6 = j;
                                                str2 = str;
                                                c2 = c;
                                                return new UriFile(c2, uri, str2, j6, j5, j4);
                                            }
                                        } else {
                                            j12 = j3;
                                        }
                                        if (c == 0) {
                                            try {
                                                m3011a2 = CommonFile.m3011a(string3, string2);
                                            } catch (Throwable th4) {
                                                cursor4 = cursor3;
                                                j3 = j12;
                                                j2 = j11;
                                                j = j10;
                                                str = string3;
                                                if (cursor4 != null) {
                                                }
                                                j4 = j3;
                                                j5 = j2;
                                                j6 = j;
                                                str2 = str;
                                                c2 = c;
                                                return new UriFile(c2, uri, str2, j6, j5, j4);
                                            }
                                        } else {
                                            m3011a2 = c;
                                        }
                                        try {
                                            MediaStoreFile mediaStoreFile = new MediaStoreFile(m3011a2, i2, string2, string3, 0, j10, j11, j12, string, uri);
                                            if (cursor3 == null) {
                                                return mediaStoreFile;
                                            }
                                            cursor3.close();
                                            return mediaStoreFile;
                                        } catch (Throwable th5) {
                                            cursor4 = cursor3;
                                            j3 = j12;
                                            j2 = j11;
                                            j = j10;
                                            str = string3;
                                            c = m3011a2;
                                            if (cursor4 != null) {
                                            }
                                            j4 = j3;
                                            j5 = j2;
                                            j6 = j;
                                            str2 = str;
                                            c2 = c;
                                            return new UriFile(c2, uri, str2, j6, j5, j4);
                                        }
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th7) {
                                cursor4 = cursor3;
                            }
                        }
                        if (cursor3 != null) {
                            cursor3.close();
                        }
                    } catch (Throwable th8) {
                        th = th8;
                        cursor3 = null;
                    }
                    j4 = j3;
                    j5 = j2;
                    j6 = j;
                    str2 = str;
                    c2 = c;
                } else if ("com.alensw.PicFolder.FileProvider".equals(authority)) {
                    String m1983a = FileProvider.m1983a(uri);
                    if (m1983a != null) {
                        return m3075a(m1983a, c, str, 0L, j2, j3);
                    }
                    j4 = j3;
                    j5 = j2;
                    j6 = j;
                    str2 = str;
                    c2 = c;
                } else if (C0725a.m2924d(uri)) {
                    try {
                        cursor2 = contentResolver.query(uri, DocumentFolder.f2819w, null, null, null);
                        if (cursor2 != null) {
                            try {
                                try {
                                    if (cursor2.moveToFirst()) {
                                        String string4 = cursor2.getString(0);
                                        String string5 = cursor2.getString(1);
                                        String string6 = str == null ? cursor2.getString(2) : str;
                                        try {
                                            i = cursor2.getInt(3);
                                            j7 = j == 0 ? cursor2.getLong(4) : j;
                                            if (j2 == 0) {
                                                try {
                                                    j8 = cursor2.getLong(5) / 1000;
                                                } catch (Throwable th9) {
                                                    cursor = cursor2;
                                                    j = j7;
                                                    str = string6;
                                                    if (cursor != null) {
                                                        cursor.close();
                                                        j4 = j3;
                                                        j5 = j2;
                                                        j6 = j;
                                                        str2 = str;
                                                        c2 = c;
                                                        return new UriFile(c2, uri, str2, j6, j5, j4);
                                                    }
                                                    j4 = j3;
                                                    j5 = j2;
                                                    j6 = j;
                                                    str2 = str;
                                                    c2 = c;
                                                    return new UriFile(c2, uri, str2, j6, j5, j4);
                                                }
                                            } else {
                                                j8 = j2;
                                            }
                                            if (j3 == 0) {
                                                try {
                                                    long j14 = cursor2.getLong(6) / 1000;
                                                    if (j14 == 0) {
                                                        j14 = j8;
                                                    }
                                                    j9 = j14;
                                                } catch (Throwable th10) {
                                                    cursor = cursor2;
                                                    j2 = j8;
                                                    j = j7;
                                                    str = string6;
                                                    if (cursor != null) {
                                                    }
                                                    j4 = j3;
                                                    j5 = j2;
                                                    j6 = j;
                                                    str2 = str;
                                                    c2 = c;
                                                    return new UriFile(c2, uri, str2, j6, j5, j4);
                                                }
                                            } else {
                                                j9 = j3;
                                            }
                                            if (c == 0) {
                                                try {
                                                    m3011a = CommonFile.m3011a(string6, string5);
                                                } catch (Throwable th11) {
                                                    cursor = cursor2;
                                                    j3 = j9;
                                                    j2 = j8;
                                                    j = j7;
                                                    str = string6;
                                                    if (cursor != null) {
                                                    }
                                                    j4 = j3;
                                                    j5 = j2;
                                                    j6 = j;
                                                    str2 = str;
                                                    c2 = c;
                                                    return new UriFile(c2, uri, str2, j6, j5, j4);
                                                }
                                            } else {
                                                m3011a = c;
                                            }
                                        } catch (Throwable th12) {
                                            cursor = cursor2;
                                            str = string6;
                                        }
                                        try {
                                            DocumentFile documentFile = new DocumentFile(m3011a, authority, string4, string5, string6, i, j7, j8, j9, null, uri);
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return documentFile;
                                        } catch (Throwable th13) {
                                            cursor = cursor2;
                                            j3 = j9;
                                            j2 = j8;
                                            j = j7;
                                            str = string6;
                                            c = m3011a;
                                            if (cursor != null) {
                                            }
                                            j4 = j3;
                                            j5 = j2;
                                            j6 = j;
                                            str2 = str;
                                            c2 = c;
                                            return new UriFile(c2, uri, str2, j6, j5, j4);
                                        }
                                    }
                                } catch (Throwable th14) {
                                    th = th14;
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    throw th;
                                }
                            } catch (Throwable th15) {
                                cursor = cursor2;
                            }
                        }
                        if (cursor2 != null) {
                            cursor2.close();
                            j4 = j3;
                            j5 = j2;
                            j6 = j;
                            str2 = str;
                            c2 = c;
                        }
                    } catch (Throwable th16) {
                        cursor = null;
                    }
                }
            }
            j4 = j3;
            j5 = j2;
            j6 = j;
            str2 = str;
            c2 = c;
        }
        return new UriFile(c2, uri, str2, j6, j5, j4);
    }

    /* renamed from: a */
    public static CommonFile m3074a(Uri uri) {
        return m3073a((char) 0, uri, (String) null, 0L, 0L, 0L);
    }

    /* renamed from: a */
    public static LocalFile m3075a(String str, char c, String str2, long j, long j2, long j3) {
        File file = new File(str);
        char m2721a = c == 0 ? C0690c.m2721a(str) : c;
        String m2722a = str2 == null ? C0690c.m2722a(str, m2721a) : str2;
        long length = j == 0 ? file.length() : j;
        long lastModified = j2 == 0 ? file.lastModified() / 1000 : j2;
        return new LocalFile(m2721a, file.getParent(), file.getName(), m2722a, 0, length, lastModified, j3 == 0 ? lastModified : j3);
    }
}
