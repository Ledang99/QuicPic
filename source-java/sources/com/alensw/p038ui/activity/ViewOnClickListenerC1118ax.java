package com.alensw.p038ui.activity;

import android.R;
import android.view.View;
import com.alensw.p023b.p030g.MenuItemC0703l;

/* renamed from: com.alensw.ui.activity.ax */
/* loaded from: classes.dex */
class ViewOnClickListenerC1118ax implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ActivityC1109ao f3769a;

    ViewOnClickListenerC1118ax(ActivityC1109ao activityC1109ao) {
        this.f3769a = activityC1109ao;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        view.setId(R.id.selectAll);
        this.f3769a.onMenuItemSelected(0, MenuItemC0703l.m2757a(view));
        view.setId(id);
    }
}
