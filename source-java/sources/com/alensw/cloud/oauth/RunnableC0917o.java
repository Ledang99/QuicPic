package com.alensw.cloud.oauth;

import android.view.View;
import android.widget.Button;

/* renamed from: com.alensw.cloud.oauth.o */
/* loaded from: classes.dex */
class RunnableC0917o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ View f3252a;

    /* renamed from: b */
    final /* synthetic */ RunnableC0916n f3253b;

    RunnableC0917o(RunnableC0916n runnableC0916n, View view) {
        this.f3253b = runnableC0916n;
        this.f3252a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        Button button;
        this.f3253b.f3251e.m3824i(false);
        button = this.f3253b.f3251e.f3185g;
        button.setEnabled(true);
        if (this.f3252a != null) {
            this.f3252a.requestFocus();
        }
    }
}
