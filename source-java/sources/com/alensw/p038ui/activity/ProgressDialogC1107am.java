package com.alensw.p038ui.activity;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.activity.am */
/* loaded from: classes.dex */
class ProgressDialogC1107am extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ RunnableC1106al f3722a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1107am(RunnableC1106al runnableC1106al, Activity activity, String str, int i) {
        super(activity, str, i);
        this.f3722a = runnableC1106al;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        if (QuickApp.f2078u != null) {
            QuickApp.f2078u.m2233c();
        }
    }
}
