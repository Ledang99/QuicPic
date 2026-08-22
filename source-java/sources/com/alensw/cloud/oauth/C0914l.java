package com.alensw.cloud.oauth;

import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;

/* renamed from: com.alensw.cloud.oauth.l */
/* loaded from: classes.dex */
class C0914l implements TextView.OnEditorActionListener {

    /* renamed from: a */
    final /* synthetic */ BasicAuthActivity f3245a;

    C0914l(BasicAuthActivity basicAuthActivity) {
        this.f3245a = basicAuthActivity;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        Button button;
        Button button2;
        if (i != 6) {
            return false;
        }
        button = this.f3245a.f3185g;
        if (button.isEnabled()) {
            button2 = this.f3245a.f3185g;
            button2.performClick();
        }
        return true;
    }
}
