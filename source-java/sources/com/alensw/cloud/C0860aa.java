package com.alensw.cloud;

import android.content.Context;
import com.alensw.p023b.p026c.C0657a;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.Set;

/* renamed from: com.alensw.cloud.aa */
/* loaded from: classes.dex */
public class C0860aa extends C0657a {
    public C0860aa(Context context, String str) {
        super(16);
        File file = new File(context.getFilesDir(), "cloud");
        file.mkdirs();
        File file2 = new File(file, str + ".cfg");
        if (!file2.exists()) {
            File file3 = new File(new File(C0658b.m2563a(context), "cloud"), str + ".foldersconfig");
            if (file3.exists() && C0742b.m2983a(file3, file2)) {
                C0742b.m2999c(file3);
            }
        }
        m2608a(file2);
    }

    /* renamed from: a */
    public static Set m3276a(Context context, String str) {
        return new C0860aa(context, str).m2619g().keySet();
    }
}
