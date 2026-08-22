package com.alensw.p022a;

import android.content.Context;
import android.os.storage.StorageManager;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.alensw.a.bh */
/* loaded from: classes.dex */
public class C0620bh {

    /* renamed from: a */
    public static final String[] f2393a = {"/mnt/emmc", "/mnt/sdcard-ext", "/mnt/sdcard2", "/mnt/external_sd", "/mnt/external_sdcard", "/mnt/flash", "/external1", "/Removable/MicroSD"};

    /* renamed from: b */
    private final String[] f2394b;

    /* renamed from: c */
    private final String[] f2395c;

    /* renamed from: d */
    private final String[] f2396d;

    /* renamed from: e */
    private final String[] f2397e;

    /* renamed from: f */
    private final String[] f2398f;

    /* renamed from: g */
    private final String[] f2399g;

    /* JADX WARN: Removed duplicated region for block: B:12:0x005a A[Catch: Throwable -> 0x008f, TryCatch #1 {Throwable -> 0x008f, blocks: (B:3:0x0015, B:10:0x0056, B:12:0x005a, B:14:0x0067, B:16:0x006c, B:18:0x007a), top: B:2:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0 A[LOOP:1: B:33:0x00be->B:34:0x00c0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0133 A[LOOP:2: B:42:0x0131->B:43:0x0133, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0171 A[LOOP:3: B:46:0x016f->B:47:0x0171, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x019a A[LOOP:4: B:50:0x0198->B:51:0x019a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0620bh(Context context) {
        int size;
        int i;
        int i2;
        int i3;
        int i4;
        Object[] objArr;
        Class<?> cls;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        ArrayList arrayList = new ArrayList(4);
        HashMap hashMap = new HashMap(4);
        HashMap hashMap2 = new HashMap(4);
        try {
            objArr = (Object[]) StorageManager.class.getMethod("getVolumeList", new Class[0]).invoke((StorageManager) context.getSystemService("storage"), new Object[0]);
            cls = Class.forName("android.os.storage.StorageVolume");
            method = cls.getMethod("getPath", new Class[0]);
            try {
                method2 = cls.getMethod("getUuid", new Class[0]);
            } catch (Throwable th) {
                method2 = null;
            }
        } catch (Throwable th2) {
        }
        try {
            method3 = cls.getMethod("getUserLabel", new Class[0]);
            method4 = method2;
        } catch (Throwable th3) {
            method3 = null;
            method4 = method2;
            while (r4 < r11) {
            }
            if (arrayList.size() > 0) {
            }
            size = arrayList.size();
            this.f2394b = new String[size];
            arrayList.toArray(this.f2394b);
            this.f2395c = new String[size];
            while (i < size) {
            }
            if (QuickApp.f2067j != 3) {
            }
            this.f2396d = new String[size];
            while (i2 < size) {
            }
            this.f2397e = new String[size];
            while (i3 < size) {
            }
            this.f2398f = new String[size];
            this.f2399g = new String[size];
            while (i4 < size) {
            }
            if (this.f2398f[0] != null) {
            }
        }
        for (Object obj : objArr) {
            String str = (String) method.invoke(obj, new Object[0]);
            if (str != null) {
                arrayList.add(str);
                if (method4 != null) {
                    hashMap.put(str, (String) method4.invoke(obj, new Object[0]));
                }
                if (method3 != null) {
                    hashMap2.put(str, (String) method3.invoke(obj, new Object[0]));
                }
            }
        }
        if (arrayList.size() > 0) {
            String[] strArr = f2393a;
            int length = strArr.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    break;
                }
                String str2 = strArr[i5];
                if (!new File(str2).exists()) {
                    i5++;
                } else if (!C0623e.f2410b.equals(str2)) {
                    arrayList.add(str2);
                }
            }
            arrayList.add(0, C0623e.f2410b);
        } else if (arrayList.size() > 1 && arrayList.remove(C0623e.f2410b)) {
            arrayList.add(0, C0623e.f2410b);
        }
        size = arrayList.size();
        this.f2394b = new String[size];
        arrayList.toArray(this.f2394b);
        this.f2395c = new String[size];
        for (i = 0; i < size; i++) {
            this.f2395c[i] = this.f2394b[i] + "/DCIM";
        }
        String str3 = QuickApp.f2067j != 3 ? new File(new StringBuilder().append(C0623e.f2410b).append("/Camera").toString()).exists() ? "/Camera" : "/DCIM" : "/DCIM/" + QuickApp.f2069l;
        this.f2396d = new String[size];
        for (i2 = 0; i2 < size; i2++) {
            this.f2396d[i2] = this.f2394b[i2] + str3;
        }
        this.f2397e = new String[size];
        for (i3 = 0; i3 < size; i3++) {
            this.f2397e[i3] = this.f2394b[i3] + "/Android/data";
        }
        this.f2398f = new String[size];
        this.f2399g = new String[size];
        for (i4 = 0; i4 < size; i4++) {
            this.f2398f[i4] = (String) hashMap.get(this.f2394b[i4]);
            this.f2399g[i4] = (String) hashMap2.get(this.f2394b[i4]);
        }
        if (this.f2398f[0] != null) {
            this.f2398f[0] = "primary";
        }
    }

    /* renamed from: a */
    public boolean m2324a(String str) {
        for (String str2 : this.f2394b) {
            if (C0742b.m2986a(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final String[] m2325a() {
        return this.f2394b;
    }

    /* renamed from: b */
    public boolean m2326b(String str) {
        for (String str2 : this.f2394b) {
            if (C0742b.m3000c(str2, str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public int m2327c(String str) {
        for (String str2 : this.f2395c) {
            if (C0742b.m3000c(str2, str)) {
                for (String str3 : this.f2396d) {
                    if (C0742b.m2986a(str3, str)) {
                        return 2;
                    }
                }
                return 1;
            }
        }
        return 0;
    }

    /* renamed from: d */
    public String m2328d(String str) {
        String[] strArr = this.f2394b;
        for (int i = 0; i < strArr.length; i++) {
            String str2 = this.f2398f[i];
            if (str2 == null) {
                if (str == null) {
                    return strArr[i];
                }
            } else {
                if (str2.equals(str)) {
                    return strArr[i];
                }
            }
        }
        return null;
    }

    /* renamed from: e */
    public String[] m2329e(String str) {
        String[] strArr = this.f2394b;
        for (int i = 0; i < strArr.length; i++) {
            String str2 = strArr[i];
            if (C0742b.m3000c(str2, str)) {
                int length = str2.length();
                if (str.length() > length && str.charAt(length) == File.separatorChar) {
                    length++;
                }
                return new String[]{this.f2398f[i], str.substring(length)};
            }
        }
        return null;
    }

    /* renamed from: f */
    public String m2330f(String str) {
        String[] strArr = this.f2394b;
        for (int i = 0; i < strArr.length; i++) {
            if (C0742b.m3000c(strArr[i], str)) {
                return this.f2399g[i];
            }
        }
        return null;
    }

    /* renamed from: g */
    public boolean m2331g(String str) {
        for (String str2 : this.f2397e) {
            if (C0742b.m3000c(str2, str)) {
                return true;
            }
        }
        return false;
    }
}
