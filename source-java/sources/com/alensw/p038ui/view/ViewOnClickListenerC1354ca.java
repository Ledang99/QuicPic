package com.alensw.p038ui.view;

import android.view.View;

/* renamed from: com.alensw.ui.view.ca */
/* loaded from: classes.dex */
class ViewOnClickListenerC1354ca implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ View.OnClickListener f4677a;

    /* renamed from: b */
    final /* synthetic */ TitleBar f4678b;

    ViewOnClickListenerC1354ca(TitleBar titleBar, View.OnClickListener onClickListener) {
        this.f4678b = titleBar;
        this.f4677a = onClickListener;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TitleView titleView;
        View.OnClickListener onClickListener = this.f4677a;
        titleView = this.f4678b.f4480h;
        onClickListener.onClick(titleView);
    }
}
