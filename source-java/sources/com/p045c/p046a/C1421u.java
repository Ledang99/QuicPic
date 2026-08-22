package com.p045c.p046a;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Locale;
import p012b.p013a.C0385gh;

/* renamed from: com.c.a.u */
/* loaded from: classes.dex */
public class C1421u {

    /* renamed from: a */
    private final int f5011a;

    /* renamed from: b */
    private File f5012b;

    /* renamed from: c */
    private FilenameFilter f5013c;

    public C1421u(Context context) {
        this(context, ".um");
    }

    public C1421u(Context context, String str) {
        this.f5011a = 10;
        this.f5013c = new C1422v(this);
        this.f5012b = new File(context.getFilesDir(), str);
        if (this.f5012b.exists() && this.f5012b.isDirectory()) {
            return;
        }
        this.f5012b.mkdir();
    }

    /* renamed from: a */
    public void m4626a(InterfaceC1423w interfaceC1423w) {
        File[] listFiles = this.f5012b.listFiles(this.f5013c);
        if (listFiles == null || listFiles.length <= 0) {
            return;
        }
        interfaceC1423w.mo1529a(this.f5012b);
        int length = listFiles.length;
        for (int i = 0; i < length; i++) {
            try {
                if (interfaceC1423w.mo1530b(listFiles[i])) {
                    listFiles[i].delete();
                }
            } catch (Throwable th) {
                listFiles[i].delete();
            }
        }
        interfaceC1423w.mo1531c(this.f5012b);
    }

    /* renamed from: a */
    public void m4627a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        try {
            C0385gh.m1301a(new File(this.f5012b, String.format(Locale.US, "um_cache_%d.env", Long.valueOf(System.currentTimeMillis()))), bArr);
        } catch (Exception e) {
        }
        File[] listFiles = this.f5012b.listFiles(this.f5013c);
        if (listFiles == null || listFiles.length < 10) {
            return;
        }
        Arrays.sort(listFiles);
        int length = listFiles.length - 10;
        for (int i = 0; i < length; i++) {
            listFiles[i].delete();
        }
    }

    /* renamed from: a */
    public boolean m4628a() {
        File[] listFiles = this.f5012b.listFiles();
        return listFiles != null && listFiles.length > 0;
    }
}
