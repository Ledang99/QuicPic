package com.alensw.PicFolder;

import android.view.View;

/* renamed from: com.alensw.PicFolder.an */
/* loaded from: classes.dex */
class ViewOnClickListenerC0540an implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2126a;

    ViewOnClickListenerC0540an(PlayerActivity playerActivity) {
        this.f2126a = playerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2126a.f2028s = !this.f2126a.f2028s;
        this.f2126a.m2009b(true);
    }
}
