package com.alensw.cloud.oauth;

import android.util.Log;

/* renamed from: com.alensw.cloud.oauth.af */
/* loaded from: classes.dex */
class RunnableC0895af implements Runnable {

    /* renamed from: a */
    final /* synthetic */ OAuthActivity f3223a;

    RunnableC0895af(OAuthActivity oAuthActivity) {
        this.f3223a = oAuthActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3223a.runOnUiThread(new RunnableC0896ag(this, this.f3223a.f3234a.mo3361a(this.f3223a.f3236c)));
        } catch (Throwable th) {
            Log.e("OAuthActivity", "error get request token url: " + th.toString());
            this.f3223a.finish();
        }
    }
}
