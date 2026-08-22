package com.alensw.p038ui.p041c;

import android.view.View;

/* renamed from: com.alensw.ui.c.ac */
/* loaded from: classes.dex */
class ViewOnClickListenerC1162ac implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C1290z f3857a;

    ViewOnClickListenerC1162ac(C1290z c1290z) {
        this.f3857a = c1290z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3857a.f4286g.setVisibility(8);
        this.f3857a.f4286g.startAnimation(this.f3857a.f4082C.m3810c(false));
    }
}
