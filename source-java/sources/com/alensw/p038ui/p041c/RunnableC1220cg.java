package com.alensw.p038ui.p041c;

import android.R;
import android.content.Context;
import android.net.Uri;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0613ba;
import com.alensw.p038ui.p039a.C1071f;

/* renamed from: com.alensw.ui.c.cg */
/* loaded from: classes.dex */
class RunnableC1220cg implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1212bz f4056a;

    RunnableC1220cg(C1212bz c1212bz) {
        this.f4056a = c1212bz;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4056a.f4082C.m3832q()) {
            this.f4056a.f4082C.m3813d(false);
        }
        // Force album reload so excluded folders disappear immediately.
        // requestLayout alone is not enough while a scan can re-add them.
        QuickApp.m2042a(true);
        QuickApp.f2074q.m2451a(4, null, null);
        try {
            this.f4056a.f4082C.getContentResolver().notifyChange(C0613ba.m2269a('I'), null);
        } catch (SecurityException unused) {
        }
        this.f4056a.m3997a(true);
        C1071f.m3737a((Context) this.f4056a.f4082C, R.string.dialog_alert_title, (CharSequence) this.f4056a.m4032g(com.alensw.PicFolder.R.string.excluded_tips));
    }
}
