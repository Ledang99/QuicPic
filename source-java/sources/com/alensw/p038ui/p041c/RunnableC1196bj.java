package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.c.bj */
/* loaded from: classes.dex */
class RunnableC1196bj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Float f3978a;

    /* renamed from: b */
    final /* synthetic */ C1192bf f3979b;

    RunnableC1196bj(C1192bf c1192bf, Float f) {
        this.f3979b = c1192bf;
        this.f3978a = f;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3979b.f4087H == 2) {
            if (this.f3979b.f3963g.m2390j() == 0) {
                this.f3979b.f3962f.setEmptyText(this.f3979b.m4032g(R.string.no_picture_in_album));
            }
            if (this.f3978a != null) {
                this.f3979b.f3962f.setScrollPos(this.f3978a.floatValue());
            }
            this.f3979b.f3962f.requestLayout();
            this.f3979b.m3981l();
        }
    }
}
