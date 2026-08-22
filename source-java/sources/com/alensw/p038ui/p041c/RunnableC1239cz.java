package com.alensw.p038ui.p041c;

import com.alensw.p038ui.view.ContainerLayout;

/* renamed from: com.alensw.ui.c.cz */
/* loaded from: classes.dex */
class RunnableC1239cz implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1234cu f4106a;

    /* renamed from: b */
    final /* synthetic */ C1234cu f4107b;

    /* renamed from: c */
    final /* synthetic */ ActivityC1237cx f4108c;

    RunnableC1239cz(ActivityC1237cx activityC1237cx, C1234cu c1234cu, C1234cu c1234cu2) {
        this.f4108c = activityC1237cx;
        this.f4106a = c1234cu;
        this.f4107b = c1234cu2;
    }

    @Override // java.lang.Runnable
    public void run() {
        ContainerLayout containerLayout;
        this.f4106a.f4088I = false;
        this.f4106a.m4030e(0);
        containerLayout = this.f4108c.f4102e;
        containerLayout.removeView(this.f4106a.f4083D);
        if (this.f4107b != null) {
            this.f4107b.mo3979i();
        }
    }
}
