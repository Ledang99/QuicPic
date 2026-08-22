package com.alensw.p038ui.p041c;

import android.content.ContentResolver;
import com.alensw.bean.CommonFolder;

/* renamed from: com.alensw.ui.c.aw */
/* loaded from: classes.dex */
class RunnableC1182aw implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1178as f3944a;

    RunnableC1182aw(C1178as c1178as) {
        this.f3944a = c1178as;
    }

    @Override // java.lang.Runnable
    public void run() {
        CommonFolder commonFolder;
        if (this.f3944a.f4087H == 2) {
            ContentResolver contentResolver = this.f3944a.f4082C.getContentResolver();
            commonFolder = this.f3944a.f3921k;
            contentResolver.notifyChange(commonFolder.mo3021i(), null);
            this.f3944a.f3851b.postDelayed(this, 3600000L);
        }
    }
}
