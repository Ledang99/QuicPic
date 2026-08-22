package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.c.l */
/* loaded from: classes.dex */
class ProgressDialogC1276l extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ String f4233a;

    /* renamed from: b */
    final /* synthetic */ C1159a f4234b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1276l(C1159a c1159a, Activity activity, String str, int i, String str2) {
        super(activity, str, i);
        this.f4234b = c1159a;
        this.f4233a = str2;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        if (QuickApp.f2076s.m2293e(this.f4233a) == 0) {
            QuickApp.m2046b(true);
        }
    }
}
