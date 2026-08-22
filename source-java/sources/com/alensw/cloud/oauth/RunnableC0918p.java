package com.alensw.cloud.oauth;

import javax.net.ssl.SSLException;

/* renamed from: com.alensw.cloud.oauth.p */
/* loaded from: classes.dex */
class RunnableC0918p implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f3254a;

    /* renamed from: b */
    final /* synthetic */ SSLException f3255b;

    /* renamed from: c */
    final /* synthetic */ BasicAuthActivity f3256c;

    RunnableC0918p(BasicAuthActivity basicAuthActivity, String str, SSLException sSLException) {
        this.f3256c = basicAuthActivity;
        this.f3254a = str;
        this.f3255b = sSLException;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3256c.m3329a(this.f3254a, this.f3255b);
    }
}
