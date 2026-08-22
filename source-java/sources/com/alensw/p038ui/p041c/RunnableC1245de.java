package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.c.de */
/* loaded from: classes.dex */
class RunnableC1245de implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1244dd f4127a;

    RunnableC1245de(C1244dd c1244dd) {
        this.f4127a = c1244dd;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4127a.f4121a.f4087H != 0) {
            this.f4127a.f4121a.m4029c(false);
            if (this.f4127a.f4121a.f4304y.m3046n()) {
                this.f4127a.f4121a.f4285f.setEmptyText(this.f4127a.f4121a.m4032g(R.string.no_picture_in_album));
            } else {
                this.f4127a.f4121a.m4190m();
            }
        }
    }
}
