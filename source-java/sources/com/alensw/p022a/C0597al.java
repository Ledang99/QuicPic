package com.alensw.p022a;

import android.content.SharedPreferences;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.lang.reflect.Method;

/* renamed from: com.alensw.a.al */
/* loaded from: classes.dex */
public class C0597al extends JniUtils {

    /* renamed from: b */
    private static Method f2276b;

    /* renamed from: a */
    private int f2277a;

    static {
        new C0623e(C0623e.f2410b, 0).m2365a((char) 0, 0, 0L, null);
        for (Method method : C0623e.class.getMethods()) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 4 && parameterTypes[0] == Character.TYPE && parameterTypes[1] == Integer.TYPE && parameterTypes[2] == Long.TYPE && parameterTypes[3] == String.class && method.getReturnType() == Void.TYPE) {
                f2276b = method;
                return;
            }
        }
    }

    public C0597al() {
        if (f2276b == null) {
            throw new RuntimeException("no Folder.add!");
        }
        this.f2277a = fsCreateScanner(f2276b);
        if (this.f2277a == 0) {
            throw new RuntimeException("create failed!");
        }
    }

    /* renamed from: a */
    public static String m2175a(boolean z, boolean z2, SharedPreferences sharedPreferences) {
        String[][] strArr = C0690c.f2606a;
        StringBuilder sb = new StringBuilder(128);
        if (z) {
            for (String str : strArr[0]) {
                sb.append('/').append('I').append(str);
            }
            String m2176a = m2176a(strArr[1], 'I', sharedPreferences);
            if (m2176a != null && m2176a.length() > 0) {
                sb.append(m2176a);
            }
        }
        if (z2) {
            for (String str2 : strArr[2]) {
                sb.append('/').append('V').append(str2);
            }
            String m2176a2 = m2176a(strArr[3], 'V', sharedPreferences);
            if (m2176a2 != null && m2176a2.length() > 0) {
                sb.append(m2176a2);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m2176a(String[] strArr, char c, SharedPreferences sharedPreferences) {
        String str = (c == 'I' ? "extra_images_" : "extra_videos_") + strArr.length;
        String string = sharedPreferences.getString(str, null);
        if (string != null) {
            return string;
        }
        StringBuilder sb = new StringBuilder(128);
        for (String str2 : strArr) {
            if (C0690c.m2726d("0." + str2)) {
                sb.append('/').append(c).append(str2);
            }
        }
        String sb2 = sb.toString();
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString(str, sb2);
        C0742b.m2978a(edit);
        return sb2;
    }

    /* renamed from: a */
    public int m2177a(C0623e c0623e, int i) {
        return fsScanFolders(this.f2277a, c0623e, i);
    }

    /* renamed from: a */
    public void m2178a(String str) {
        fsInitExtensions(this.f2277a, str);
    }

    /* renamed from: a */
    public void m2179a(boolean z) {
        fsCancelScan(this.f2277a, z);
    }

    /* renamed from: b */
    public int m2180b(C0623e c0623e, int i) {
        return fsScanPictures(this.f2277a, c0623e, i);
    }

    protected void finalize() {
        int i = this.f2277a;
        this.f2277a = 0;
        if (i != 0) {
            JniUtils.fsDestroyScanner(i);
        }
    }
}
