package com.alensw.cloud.oauth;

import android.content.Context;
import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.cloud.oauth.w */
/* loaded from: classes.dex */
class RunnableC0925w implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0889a f3264a;

    /* renamed from: b */
    final /* synthetic */ GmsAuthActivity f3265b;

    RunnableC0925w(GmsAuthActivity gmsAuthActivity, C0889a c0889a) {
        this.f3265b = gmsAuthActivity;
        this.f3264a = c0889a;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f3264a.f3196g.f3229a = com.google.gms.b.a(this.f3265b, this.f3264a.f3191b, "oauth2:" + (this.f3264a.f3190a == EnumC0963z.GDRIVE ? C0924v.f3263a : C0901al.f3233a));
            this.f3265b.runOnUiThread(new RunnableC0926x(this));
        } catch (com.google.gms.a.c e) {
            this.f3265b.startActivityForResult(e.a(), 12);
        } catch (Exception e2) {
            Log.e("GmsAuthActivity", "get token failed: ", e2);
            C0742b.m2977a(this.f3265b, e2);
            this.f3265b.runOnUiThread(new RunnableC0927y(this));
        } catch (com.google.gms.a.a e3) {
            Log.e("GmsAuthActivity", "auth failed: ", e3);
            C0742b.m2977a((Context) this.f3265b, (Throwable) e3);
            this.f3265b.runOnUiThread(new RunnableC0927y(this));
        }
    }
}
