package com.alensw.cloud.oauth;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* renamed from: com.alensw.cloud.oauth.ae */
/* loaded from: classes.dex */
class C0894ae extends WebViewClient {

    /* renamed from: a */
    final /* synthetic */ OAuthActivity f3222a;

    C0894ae(OAuthActivity oAuthActivity) {
        this.f3222a = oAuthActivity;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f3222a.setTitle(webView.getTitle());
        this.f3222a.m3824i(false);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (!this.f3222a.f3234a.m3380e(str)) {
            super.onPageStarted(webView, str, bitmap);
        } else {
            this.f3222a.m3344a(str);
            webView.stopLoading();
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
