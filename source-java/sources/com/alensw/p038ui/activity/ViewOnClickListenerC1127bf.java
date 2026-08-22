package com.alensw.p038ui.activity;

import android.view.View;

/* renamed from: com.alensw.ui.activity.bf */
/* loaded from: classes.dex */
class ViewOnClickListenerC1127bf implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PathListActivity f3794a;

    ViewOnClickListenerC1127bf(PathListActivity pathListActivity) {
        this.f3794a = pathListActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3794a.f3682a.remove(view.getTag());
        this.f3794a.f3685d = true;
        this.f3794a.f3683b.notifyDataSetChanged();
    }
}
