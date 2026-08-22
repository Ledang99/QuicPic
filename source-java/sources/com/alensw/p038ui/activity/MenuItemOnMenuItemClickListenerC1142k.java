package com.alensw.p038ui.activity;

import android.view.MenuItem;
import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.activity.k */
/* loaded from: classes.dex */
final class MenuItemOnMenuItemClickListenerC1142k implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f3825a;

    MenuItemOnMenuItemClickListenerC1142k(Runnable runnable) {
        this.f3825a = runnable;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.delete) {
            return true;
        }
        this.f3825a.run();
        return true;
    }
}
