package com.alensw.cloud.sync;

import android.content.Context;

/* renamed from: com.alensw.cloud.sync.b */
/* loaded from: classes.dex */
class RunnableC0934b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f3292a;

    /* renamed from: b */
    final /* synthetic */ ConnectionChangeReceiver f3293b;

    RunnableC0934b(ConnectionChangeReceiver connectionChangeReceiver, Context context) {
        this.f3293b = connectionChangeReceiver;
        this.f3292a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3293b.f3269b = null;
        this.f3293b.m3400a(this.f3292a);
    }
}
