package com.alensw.p038ui.view;

import android.app.Activity;
import android.view.MenuItem;
import android.view.View;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p023b.p030g.SubMenuC0704m;

/* renamed from: com.alensw.ui.view.bv */
/* loaded from: classes.dex */
class ViewOnClickListenerC1348bv implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ TitleBar f4671a;

    ViewOnClickListenerC1348bv(TitleBar titleBar) {
        this.f4671a = titleBar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MenuC0693b menuC0693b;
        SubMenuC0704m subMenuC0704m;
        Activity activity = (Activity) view.getContext();
        if (this.f4671a.m4330d()) {
            menuC0693b = this.f4671a.f4485m;
            MenuItem findItem = menuC0693b.findItem(view.getId());
            if (findItem != null && (subMenuC0704m = (SubMenuC0704m) findItem.getSubMenu()) != null && subMenuC0704m.size() != 0) {
                subMenuC0704m.m2747a(view);
                return;
            }
        }
        activity.onOptionsItemSelected(MenuItemC0703l.m2757a(view));
    }
}
