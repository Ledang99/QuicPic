package com.alensw.p038ui.p041c;

import android.view.animation.Animation;

/* renamed from: com.alensw.ui.c.cw */
/* loaded from: classes.dex */
class RunnableC1236cw implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Animation f4096a;

    /* renamed from: b */
    final /* synthetic */ C1234cu f4097b;

    RunnableC1236cw(C1234cu c1234cu, Animation animation) {
        this.f4097b = c1234cu;
        this.f4096a = animation;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!ActivityC1237cx.f3726G) {
            this.f4097b.f4083D.setVisibility(8);
        }
        this.f4097b.f4083D.startAnimation(this.f4096a);
    }
}
