package com.alensw.cloud.oauth;

import android.webkit.WebView;

/* renamed from: com.alensw.cloud.oauth.ag */
/* loaded from: classes.dex */
class RunnableC0896ag implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f3224a;

    /* renamed from: b */
    final /* synthetic */ RunnableC0895af f3225b;

    RunnableC0896ag(RunnableC0895af runnableC0895af, String str) {
        this.f3225b = runnableC0895af;
        this.f3224a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        WebView webView;
        webView = this.f3225b.f3223a.f3189d;
        webView.loadUrl(this.f3224a);
    }
}
