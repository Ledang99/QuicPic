package com.alensw.p038ui.p041c;

import android.content.Intent;

/* renamed from: com.alensw.ui.c.b */
/* loaded from: classes.dex */
class RunnableC1186b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ InterfaceC1277m f3949a;

    /* renamed from: b */
    final /* synthetic */ Intent f3950b;

    /* renamed from: c */
    final /* synthetic */ C1159a f3951c;

    RunnableC1186b(C1159a c1159a, InterfaceC1277m interfaceC1277m, Intent intent) {
        this.f3951c = c1159a;
        this.f3949a = interfaceC1277m;
        this.f3950b = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3949a.mo3277a(this.f3950b);
    }
}
