package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.p023b.p028e.InterfaceC0679f;

/* renamed from: com.alensw.cloud.oauth.g */
/* loaded from: classes.dex */
class RunnableC0909g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0889a f3238a;

    /* renamed from: b */
    final /* synthetic */ boolean f3239b;

    /* renamed from: c */
    final /* synthetic */ ActivityC0907e f3240c;

    RunnableC0909g(ActivityC0907e activityC0907e, C0889a c0889a, boolean z) {
        this.f3240c = activityC0907e;
        this.f3238a = c0889a;
        this.f3239b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3238a.f3190a = this.f3240c.f3234a.m3379d();
            if (!this.f3239b) {
                this.f3240c.f3234a.mo3367a(this.f3238a.f3196g, this.f3240c.f3236c);
            }
            this.f3240c.f3234a.mo3353a(this.f3238a, (InterfaceC0679f) null);
            Log.d("BaseAuthActivity", "add account: " + this.f3238a.m3348a());
            this.f3240c.runOnUiThread(new RunnableC0910h(this));
        } catch (Throwable th) {
            Log.e("BaseAuthActivity", "Parse token failed: ", th);
            this.f3240c.runOnUiThread(new RunnableC0911i(this, th));
        }
    }
}
