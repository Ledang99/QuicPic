package com.alensw.p038ui.p041c;

import android.database.ContentObserver;
import android.os.Handler;
import com.alensw.p023b.p033j.C0725a;

/* renamed from: com.alensw.ui.c.ai */
/* loaded from: classes.dex */
class C1168ai extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ C1290z f3870a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1168ai(C1290z c1290z, Handler handler) {
        super(handler);
        this.f3870a = c1290z;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        Runnable runnable;
        Runnable runnable2;
        super.onChange(z);
        Handler handler = this.f3870a.f3851b;
        runnable = this.f3870a.f4282T;
        handler.removeCallbacks(runnable);
        Handler handler2 = this.f3870a.f3851b;
        runnable2 = this.f3870a.f4282T;
        handler2.postDelayed(runnable2, C0725a.m2920c(this.f3870a.f4304y.mo3021i()) ? 3000L : 300L);
    }
}
