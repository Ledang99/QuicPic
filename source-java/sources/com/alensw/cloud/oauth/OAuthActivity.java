package com.alensw.cloud.oauth;

import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* loaded from: classes.dex */
public class OAuthActivity extends ActivityC0907e {

    /* renamed from: d */
    private WebView f3189d;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3344a(String str) {
        C0889a c0889a = new C0889a();
        this.f3234a.mo3368a(str);
        super.m3824i(true);
        this.f3189d.setEnabled(false);
        m3398a(c0889a, false);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        if (this.f3189d.canGoBack()) {
            this.f3189d.goBack();
        } else {
            finish();
        }
    }

    @Override // com.alensw.cloud.oauth.ActivityC0907e, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FrameLayout frameLayout = new FrameLayout(this);
        this.f3189d = new WebView(this);
        frameLayout.addView(this.f3189d);
        setContentView(frameLayout);
        this.f3189d.setWebViewClient(new C0894ae(this));
        WebSettings settings = this.f3189d.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSaveFormData(false);
        settings.setSavePassword(false);
        settings.setCacheMode(2);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        }
        CookieSyncManager.createInstance(this);
        CookieManager.getInstance().removeAllCookie();
        m3824i(true);
        AbstractProgressDialogC1062ao.f3641d.submit(new RunnableC0895af(this));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return false;
    }

    @Override // com.alensw.cloud.oauth.ActivityC0907e, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        if (this.f3189d != null) {
            this.f3189d.clearCache(true);
        }
        super.onDestroy();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onPause() {
        super.onPause();
        if (isFinishing()) {
            this.f3189d.stopLoading();
        }
    }
}
