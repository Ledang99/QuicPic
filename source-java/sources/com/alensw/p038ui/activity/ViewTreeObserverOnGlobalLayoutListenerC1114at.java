package com.alensw.p038ui.activity;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;

/* renamed from: com.alensw.ui.activity.at */
/* loaded from: classes.dex */
class ViewTreeObserverOnGlobalLayoutListenerC1114at implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ View f3764a;

    /* renamed from: b */
    final /* synthetic */ ActivityC1109ao f3765b;

    ViewTreeObserverOnGlobalLayoutListenerC1114at(ActivityC1109ao activityC1109ao, View view) {
        this.f3765b = activityC1109ao;
        this.f3764a = view;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        View m3795b = ActivityC1109ao.m3795b((ViewGroup) this.f3764a);
        if (m3795b instanceof ImageView) {
            this.f3764a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            ActivityC1109ao.m3790a(m3795b, this.f3765b.f3745X);
        }
    }
}
