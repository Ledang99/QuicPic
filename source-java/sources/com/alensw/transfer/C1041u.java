package com.alensw.transfer;

import android.app.Activity;

/* renamed from: com.alensw.transfer.u */
/* loaded from: classes.dex */
class C1041u implements InterfaceC1025e {

    /* renamed from: a */
    final /* synthetic */ C1039s f3602a;

    C1041u(C1039s c1039s) {
        this.f3602a = c1039s;
    }

    @Override // com.alensw.transfer.InterfaceC1025e
    /* renamed from: a */
    public void mo3696a(C1024d c1024d) {
        Activity g = this.f3602a.m3531g();
        if (g == null) {
            return;
        }
        g.runOnUiThread(new RunnableC1042v(this, c1024d));
    }

    @Override // com.alensw.transfer.InterfaceC1025e
    /* renamed from: b */
    public void mo3697b(C1024d c1024d) {
        Activity g = this.f3602a.m3531g();
        if (g == null) {
            return;
        }
        g.runOnUiThread(new RunnableC1043w(this, c1024d));
        c1024d.m3689k();
    }
}
