package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.c.cn */
/* loaded from: classes.dex */
class ProgressDialogC1227cn extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ C1226cm f4069a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1227cn(C1226cm c1226cm, Activity activity, String str, int i) {
        super(activity, str, i);
        this.f4069a = c1226cm;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        QuickApp.f2075r.m2313b(this.f4069a.f4067a.getPath());
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        QuickApp.m2046b(true);
    }
}
