package com.alensw.p038ui.p041c;

import android.R;
import android.content.Context;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0633o;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.bs */
/* loaded from: classes.dex */
class C1205bs implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C1192bf f4002a;

    C1205bs(C1192bf c1192bf) {
        this.f4002a = c1192bf;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        C0623e c0623e = new C0623e(str, -1);
        C0633o.m2410a(this.f4002a.f4082C).m2414a(c0623e);
        QuickApp.f2072o.m2508e(c0623e);
        C1071f.m3737a((Context) this.f4002a.f4082C, R.string.dialog_alert_title, (CharSequence) this.f4002a.m4032g(com.alensw.PicFolder.R.string.excluded_tips));
        this.f4002a.m4023E();
    }
}
