package com.alensw.PicFolder;

import android.view.View;

/* renamed from: com.alensw.PicFolder.au */
/* loaded from: classes.dex */
class ViewOnClickListenerC0547au implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2135a;

    ViewOnClickListenerC0547au(PlayerActivity playerActivity) {
        this.f2135a = playerActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2135a.f2020k.seekTo(0);
        this.f2135a.m2009b(true);
        this.f2135a.m2011c();
    }
}
