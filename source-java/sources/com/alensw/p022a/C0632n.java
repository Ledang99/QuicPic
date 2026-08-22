package com.alensw.p022a;

import android.content.Context;
import android.net.Uri;
import com.alensw.p023b.p026c.C0664h;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.a.n */
/* loaded from: classes.dex */
public class C0632n {

    /* renamed from: b */
    private static C0632n f2427b;

    /* renamed from: a */
    private final C0664h f2428a = new C0664h(16);

    /* renamed from: a */
    public static synchronized C0632n m2405a(Context context) {
        C0632n c0632n;
        synchronized (C0632n.class) {
            if (f2427b == null) {
                f2427b = new C0632n();
                f2427b.m2406b(context);
            }
            c0632n = f2427b;
        }
        return c0632n;
    }

    /* renamed from: b */
    private void m2406b(Context context) {
        this.f2428a.m2608a(C0742b.m2990b(context, "folder_covers"));
    }

    /* renamed from: a */
    public String m2407a(Uri uri) {
        return "file".equals(uri.getScheme()) ? m2408a(uri.getPath()) : m2408a(uri.toString());
    }

    /* renamed from: a */
    public String m2408a(String str) {
        return (String) this.f2428a.m2610b(str);
    }

    /* renamed from: a */
    public void m2409a(String str, String str2) {
        if (str2 != null) {
            this.f2428a.m2606a(str, str2);
        } else {
            this.f2428a.m2614c(str);
        }
        this.f2428a.m2620h();
    }
}
