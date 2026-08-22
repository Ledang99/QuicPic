package com.alensw.p038ui.activity;

import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.activity.al */
/* loaded from: classes.dex */
class RunnableC1106al implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MainPreference f3721a;

    RunnableC1106al(MainPreference mainPreference) {
        this.f3721a = mainPreference;
    }

    @Override // java.lang.Runnable
    public void run() {
        new ProgressDialogC1107am(this, this.f3721a, this.f3721a.getString(R.string.running_wait), 0).m3731c();
    }
}
