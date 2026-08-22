package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0623e;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.c.bk */
/* loaded from: classes.dex */
class ProgressDialogC1197bk extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ C0623e f3980a;

    /* renamed from: b */
    final /* synthetic */ C1192bf f3981b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1197bk(C1192bf c1192bf, Activity activity, String str, int i, C0623e c0623e) {
        super(activity, str, i);
        this.f3981b = c1192bf;
        this.f3980a = c0623e;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        QuickApp.f2075r.m2313b(this.f3980a.getPath());
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        QuickApp.m2046b(true);
        this.f3981b.m3984o();
    }
}
