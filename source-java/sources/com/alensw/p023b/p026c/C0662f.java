package com.alensw.p023b.p026c;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* renamed from: com.alensw.b.c.f */
/* loaded from: classes.dex */
public class C0662f {

    /* renamed from: c */
    private static Field f2534c;

    /* renamed from: d */
    private static Constructor f2535d;

    /* renamed from: a */
    private final Uri f2536a;

    /* renamed from: b */
    private ParcelFileDescriptor f2537b;

    static {
        try {
            f2534c = FileDescriptor.class.getDeclaredField("descriptor");
            f2534c.setAccessible(true);
            f2535d = ParcelFileDescriptor.class.getDeclaredConstructor(FileDescriptor.class);
            f2535d.setAccessible(true);
        } catch (Throwable th) {
        }
    }

    public C0662f(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
        this.f2537b = parcelFileDescriptor;
        this.f2536a = uri;
    }

    /* renamed from: a */
    public static ParcelFileDescriptor m2588a(ContentResolver contentResolver, Uri uri, boolean z) {
        try {
            return contentResolver.openFileDescriptor(uri, z ? "r" : "rw");
        } catch (FileNotFoundException e) {
            if ("file".equals(uri.getScheme())) {
                return m2589a(uri.getPath(), z);
            }
            throw e;
        }
    }

    /* renamed from: a */
    private static ParcelFileDescriptor m2589a(String str, boolean z) {
        int i;
        if (Build.VERSION.SDK_INT >= 13) {
            if (z) {
                i = f2534c.getInt(new FileInputStream(str).getFD());
            } else {
                i = f2534c.getInt(new FileOutputStream(str).getFD());
            }
            if (i != -1) {
                return ParcelFileDescriptor.fromFd(i);
            }
        }
        throw new FileNotFoundException();
    }

    /* renamed from: a */
    public static C0662f m2590a(ContentResolver contentResolver, Uri uri) {
        return new C0662f(uri, m2588a(contentResolver, uri, true));
    }

    /* renamed from: a */
    public static C0662f m2591a(File file, boolean z) {
        return new C0662f(Uri.fromFile(file), m2593b(file, z));
    }

    /* renamed from: a */
    public static boolean m2592a(Uri uri) {
        return "file".equals(uri.getScheme());
    }

    /* renamed from: b */
    public static ParcelFileDescriptor m2593b(File file, boolean z) {
        try {
            return ParcelFileDescriptor.open(file, z ? 268435456 : 939524096);
        } catch (FileNotFoundException e) {
            return m2589a(file.getPath(), z);
        }
    }

    /* renamed from: a */
    public boolean m2594a() {
        return "file".equals(this.f2536a.getScheme());
    }

    /* renamed from: b */
    public FileDescriptor m2595b() {
        if (this.f2537b == null) {
            throw new FileNotFoundException("file not open");
        }
        return this.f2537b.getFileDescriptor();
    }

    /* renamed from: c */
    public int m2596c() {
        if (this.f2537b != null) {
            try {
                return Build.VERSION.SDK_INT >= 12 ? this.f2537b.getFd() : f2534c.getInt(this.f2537b.getFileDescriptor());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return -1;
    }

    /* renamed from: d */
    public String m2597d() {
        return this.f2536a.getPath();
    }

    /* renamed from: e */
    public long m2598e() {
        if (this.f2537b != null) {
            try {
                return this.f2537b.getStatSize();
            } catch (Throwable th) {
            }
        }
        return 0L;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0662f) && this.f2536a.equals(((C0662f) obj).f2536a);
    }

    /* renamed from: f */
    public long m2599f() {
        try {
            return new File(this.f2536a.getPath()).lastModified();
        } catch (Throwable th) {
            return 0L;
        }
    }

    protected void finalize() {
        m2601h();
    }

    /* renamed from: g */
    public Uri m2600g() {
        return this.f2536a;
    }

    /* renamed from: h */
    public void m2601h() {
        if (this.f2537b != null) {
            try {
                this.f2537b.close();
            } catch (Throwable th) {
            }
        }
        this.f2537b = null;
    }

    public int hashCode() {
        return this.f2536a.hashCode();
    }
}
