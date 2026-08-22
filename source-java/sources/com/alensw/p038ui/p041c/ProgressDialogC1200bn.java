package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0622d;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.bn */
/* loaded from: classes.dex */
class ProgressDialogC1200bn extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ HashSet f3994a;

    /* renamed from: b */
    final /* synthetic */ int f3995b;

    /* renamed from: c */
    final /* synthetic */ C1192bf f3996c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1200bn(C1192bf c1192bf, Activity activity, String str, int i, HashSet hashSet, int i2) {
        super(activity, str, i);
        this.f3996c = c1192bf;
        this.f3994a = hashSet;
        this.f3995b = i2;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        int m2961a;
        Iterator it = this.f3994a.iterator();
        while (it.hasNext()) {
            C0622d c0622d = (C0622d) it.next();
            String m2351a = c0622d.m2351a();
            if ((c0622d.f2405c == 'I' && m2351a.length() > 0) && (m2961a = C0742b.m2961a(m2351a, this.f3995b, false)) != -1) {
                QuickApp.f2080w.m2523c(c0622d);
                QuickApp.f2076s.m2283a(m2351a, m2961a);
                QuickApp.f2075r.m2309a(m2351a);
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        this.f3996c.f3962f.requestLayout();
        QuickApp.f2072o.m2497a(this.f3996c.f3963g, true);
        this.f3996c.m3984o();
    }
}
