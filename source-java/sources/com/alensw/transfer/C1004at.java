package com.alensw.transfer;

import android.content.Context;
import android.content.Intent;
import android.text.style.ClickableSpan;
import android.view.View;
import com.alensw.p038ui.activity.C1094a;

/* renamed from: com.alensw.transfer.at */
/* loaded from: classes.dex */
class C1004at extends ClickableSpan {

    /* renamed from: a */
    final /* synthetic */ Context f3521a;

    /* renamed from: b */
    final /* synthetic */ C0987ac f3522b;

    C1004at(C0987ac c0987ac, Context context) {
        this.f3522b = c0987ac;
        this.f3521a = context;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Intent intent = new Intent();
        intent.setClassName("com.android.settings", "com.android.settings.TetherSettings");
        C1094a.m3781a(this.f3521a, intent);
    }
}
