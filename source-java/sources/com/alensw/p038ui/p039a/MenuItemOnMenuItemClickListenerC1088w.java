package com.alensw.p038ui.p039a;

import android.view.MenuItem;
import android.widget.EditText;

/* renamed from: com.alensw.ui.a.w */
/* loaded from: classes.dex */
class MenuItemOnMenuItemClickListenerC1088w implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ EditText f3675a;

    /* renamed from: b */
    final /* synthetic */ ViewOnLongClickListenerC1087v f3676b;

    MenuItemOnMenuItemClickListenerC1088w(ViewOnLongClickListenerC1087v viewOnLongClickListenerC1087v, EditText editText) {
        this.f3676b = viewOnLongClickListenerC1087v;
        this.f3675a = editText;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3675a.onTextContextMenuItem(menuItem.getItemId());
    }
}
