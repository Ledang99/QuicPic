package com.alensw.p038ui.activity;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;

/* renamed from: com.alensw.ui.activity.t */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1151t implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActivityC1147p f3835a;

    DialogInterfaceOnClickListenerC1151t(ActivityC1147p activityC1147p) {
        this.f3835a = activityC1147p;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT_TREE");
        intent.putExtra("android.content.extra.SHOW_ADVANCED", true);
        C1094a.m3780a((Activity) this.f3835a, intent, 4);
    }
}
