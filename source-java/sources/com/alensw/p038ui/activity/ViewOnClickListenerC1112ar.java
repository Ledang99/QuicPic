package com.alensw.p038ui.activity;

import android.R;
import android.app.Activity;
import android.view.View;
import com.alensw.p023b.p030g.MenuItemC0703l;

/* renamed from: com.alensw.ui.activity.ar */
/* loaded from: classes.dex */
final class ViewOnClickListenerC1112ar implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Activity f3760a;

    ViewOnClickListenerC1112ar(Activity activity) {
        this.f3760a = activity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3760a.onMenuItemSelected(0, new MenuItemC0703l(null, view.getContext(), 0, R.id.home, null));
    }
}
