package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;

/* renamed from: com.alensw.ui.c.cr */
/* loaded from: classes.dex */
class RunnableC1231cr implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f4073a;

    /* renamed from: b */
    final /* synthetic */ C1212bz f4074b;

    RunnableC1231cr(C1212bz c1212bz, boolean z) {
        this.f4074b = c1212bz;
        this.f4073a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        QuickApp.f2074q.f2452b = this.f4073a;
        this.f4074b.m3997a(false);
    }
}
