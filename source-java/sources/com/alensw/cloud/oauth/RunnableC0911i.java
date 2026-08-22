package com.alensw.cloud.oauth;

import android.widget.Toast;

/* renamed from: com.alensw.cloud.oauth.i */
/* loaded from: classes.dex */
class RunnableC0911i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Throwable f3242a;

    /* renamed from: b */
    final /* synthetic */ RunnableC0909g f3243b;

    RunnableC0911i(RunnableC0909g runnableC0909g, Throwable th) {
        this.f3243b = runnableC0909g;
        this.f3242a = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        Toast.makeText(this.f3243b.f3240c, "Authorize failed: " + this.f3242a, 1).show();
        this.f3243b.f3240c.finish();
    }
}
