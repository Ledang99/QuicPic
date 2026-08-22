package com.alensw.p038ui.activity;

import android.view.MenuItem;

/* renamed from: com.alensw.ui.activity.af */
/* loaded from: classes.dex */
class MenuItemOnMenuItemClickListenerC1100af implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C1099ae f3708a;

    MenuItemOnMenuItemClickListenerC1100af(C1099ae c1099ae) {
        this.f3708a = c1099ae;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        this.f3708a.f3707c.m3760a(menuItem.getItemId() == 1, this.f3708a.f3705a);
        return true;
    }
}
