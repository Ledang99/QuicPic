package com.alensw.transfer;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.view.View;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.p038ui.activity.C1094a;

/* renamed from: com.alensw.transfer.ad */
/* loaded from: classes.dex */
class ViewOnClickListenerC0988ad implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f3496a;

    /* renamed from: b */
    final /* synthetic */ C0987ac f3497b;

    ViewOnClickListenerC0988ad(C0987ac c0987ac, Activity activity) {
        this.f3497b = c0987ac;
        this.f3496a = activity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("com.alensw.PicFolder.action.PICK_MULTIPLE");
        intent.setComponent(new ComponentName(this.f3496a.getPackageName(), GalleryActivity.class.getName()));
        C1094a.m3780a(this.f3496a, intent, 1);
    }
}
