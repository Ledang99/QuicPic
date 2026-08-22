package com.alensw.p038ui.activity;

import android.view.View;
import com.alensw.p023b.p030g.MenuItemC0703l;

/* renamed from: com.alensw.ui.activity.ap */
/* loaded from: classes.dex */
class ViewOnClickListenerC1110ap implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActivityC1109ao f3757a;

    ViewOnClickListenerC1110ap(ActivityC1109ao activityC1109ao) {
        this.f3757a = activityC1109ao;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3757a.onMenuItemSelected(0, MenuItemC0703l.m2757a(view));
    }
}
