package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.cf */
/* loaded from: classes.dex */
class ProgressDialogC1219cf extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ ArrayList f4052a;

    /* renamed from: b */
    final /* synthetic */ C0613ba f4053b;

    /* renamed from: c */
    final /* synthetic */ C0615bc f4054c;

    /* renamed from: e */
    final /* synthetic */ C1212bz f4055e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1219cf(C1212bz c1212bz, Activity activity, String str, int i, ArrayList arrayList, C0613ba c0613ba, C0615bc c0615bc) {
        super(activity, str, i);
        this.f4055e = c1212bz;
        this.f4052a = arrayList;
        this.f4053b = c0613ba;
        this.f4054c = c0615bc;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        Iterator it = this.f4052a.iterator();
        while (it.hasNext()) {
            C0623e c0623e = (C0623e) it.next();
            this.f4053b.m2280a(c0623e.getPath());
            for (int m2390j = c0623e.m2390j() - 1; m2390j >= 0; m2390j--) {
                C0622d m2381e = c0623e.m2381e(m2390j);
                if (m2381e != null) {
                    File file = new File(c0623e, m2381e.f2404b);
                    String path = file.getPath();
                    this.f4053b.m2282a(path, m2381e.f2405c, false);
                    C0742b.m2999c(file);
                    c0623e.m2388h(m2390j);
                    this.f4054c.m2309a(path);
                    if (!m3732d()) {
                        break;
                    }
                }
            }
            c0623e.m2395o();
            C0623e.m2355a(c0623e);
            if (c0623e.m2387h()) {
                c0623e.delete();
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        Iterator it = this.f4052a.iterator();
        while (it.hasNext()) {
            C0623e c0623e = (C0623e) it.next();
            if (c0623e.m2387h()) {
                this.f4055e.f4023l.m2510f(c0623e);
            } else {
                this.f4055e.f4023l.m2497a(c0623e, true);
            }
        }
        if (this.f4055e.f4082C.m3832q()) {
            this.f4055e.f4082C.m3813d(false);
        }
        this.f4055e.f4021j.requestLayout();
    }
}
