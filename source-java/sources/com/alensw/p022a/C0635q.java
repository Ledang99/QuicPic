package com.alensw.p022a;

import android.content.Context;
import android.preference.PreferenceManager;
import com.alensw.bean.CommonFolder;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p026c.C0660d;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.Map;

/* renamed from: com.alensw.a.q */
/* loaded from: classes.dex */
public class C0635q {

    /* renamed from: c */
    private static C0635q f2445c;

    /* renamed from: b */
    private final C0660d f2447b = new C0636r(this, 16);

    /* renamed from: a */
    public int f2446a = 0;

    /* renamed from: a */
    public static synchronized C0635q m2430a(Context context) {
        C0635q c0635q;
        synchronized (C0635q.class) {
            if (f2445c == null) {
                f2445c = new C0635q();
                f2445c.m2431b(context);
            }
            c0635q = f2445c;
        }
        return c0635q;
    }

    /* renamed from: b */
    private void m2431b(Context context) {
        this.f2446a = PreferenceManager.getDefaultSharedPreferences(context).getInt("default_sort", 0);
        this.f2447b.m2608a(C0742b.m2990b(context, "folder_modes"));
        File m2564a = C0658b.m2564a(context, "cfolder_modes");
        C0660d c0660d = new C0660d(256);
        if (m2564a.exists() && c0660d.m2608a(m2564a)) {
            for (Map.Entry entry : c0660d.m2618f()) {
                this.f2447b.m2606a((String) entry.getKey(), entry.getValue());
            }
            if (this.f2447b.m2617e()) {
                this.f2447b.m2620h();
            }
            C0742b.m2999c(m2564a);
        }
    }

    /* renamed from: a */
    public int m2432a(C0623e c0623e) {
        Integer num = (Integer) this.f2447b.m2610b(c0623e.getPath());
        return num != null ? num.intValue() : c0623e.m2359a(this.f2446a);
    }

    /* renamed from: a */
    public int m2433a(CommonFolder commonFolder) {
        int i = 2;
        Integer num = (Integer) this.f2447b.m2610b(commonFolder.mo3021i().toString());
        if (num != null) {
            return num.intValue();
        }
        int c = commonFolder.m3015c();
        int i2 = (c & 16) != 0 ? 0 : 2;
        if (this.f2446a != 0) {
            i = this.f2446a == 5 ? 3 : this.f2446a == 6 ? 1 : this.f2446a;
        } else if ((c & 32) != 0) {
            i = 1;
        }
        return CommonFolder.m3023a(i2, i);
    }

    /* renamed from: b */
    public void m2434b(C0623e c0623e) {
        this.f2447b.m2606a(c0623e.getPath(), Integer.valueOf(c0623e.f2420d));
        this.f2447b.m2620h();
    }

    /* renamed from: b */
    public void m2435b(CommonFolder commonFolder) {
        this.f2447b.m2606a(commonFolder.mo3021i().toString(), Integer.valueOf(commonFolder.f2808l));
        this.f2447b.m2620h();
    }
}
