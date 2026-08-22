package com.alensw.p038ui.activity;

import android.view.View;
import com.alensw.p023b.p030g.MenuItemC0703l;

/* renamed from: com.alensw.ui.activity.bb */
/* loaded from: classes.dex */
class ViewOnClickListenerC1123bb implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C1122ba f3787a;

    ViewOnClickListenerC1123bb(C1122ba c1122ba) {
        this.f3787a = c1122ba;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3787a.onMenuItemSelected(0, MenuItemC0703l.m2757a(view));
    }
}
