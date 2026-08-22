package com.alensw.p038ui.view;

import android.graphics.PointF;

/* renamed from: com.alensw.ui.view.x */
/* loaded from: classes.dex */
class RunnableC1379x implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1378w f4872a;

    RunnableC1379x(C1378w c1378w) {
        this.f4872a = c1378w;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        int i;
        InterfaceC1380y interfaceC1380y;
        PointF pointF;
        PointF pointF2;
        this.f4872a.f4844E = false;
        z = this.f4872a.f4848c;
        if (z) {
            return;
        }
        i = this.f4872a.f4846a;
        if (i == 1) {
            interfaceC1380y = this.f4872a.f4871z;
            pointF = this.f4872a.f4840A;
            float f = pointF.x;
            pointF2 = this.f4872a.f4840A;
            interfaceC1380y.mo2147b(f, pointF2.y);
        }
    }
}
