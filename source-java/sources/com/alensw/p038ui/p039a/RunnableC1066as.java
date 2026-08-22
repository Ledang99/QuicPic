package com.alensw.p038ui.p039a;

import android.app.Activity;
import android.widget.Toast;

/* renamed from: com.alensw.ui.a.as */
/* loaded from: classes.dex */
class RunnableC1066as implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f3646a;

    /* renamed from: b */
    final /* synthetic */ AbstractProgressDialogC1062ao f3647b;

    RunnableC1066as(AbstractProgressDialogC1062ao abstractProgressDialogC1062ao, String str) {
        this.f3647b = abstractProgressDialogC1062ao;
        this.f3646a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        activity = this.f3647b.f3642a;
        Toast.makeText(activity, this.f3646a, 1).show();
    }
}
