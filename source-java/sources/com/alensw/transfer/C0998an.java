package com.alensw.transfer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/* renamed from: com.alensw.transfer.an */
/* loaded from: classes.dex */
class C0998an extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ C0987ac f3511a;

    /* renamed from: b */
    private Runnable f3512b = new RunnableC0999ao(this);

    C0998an(C0987ac c0987ac) {
        this.f3511a = c0987ac;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Handler handler;
        Handler handler2;
        handler = this.f3511a.f3482l;
        handler.removeCallbacks(this.f3512b);
        handler2 = this.f3511a.f3482l;
        handler2.postDelayed(this.f3512b, 2000L);
    }
}
