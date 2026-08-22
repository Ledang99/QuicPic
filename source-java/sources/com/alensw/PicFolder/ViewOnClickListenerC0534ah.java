package com.alensw.PicFolder;

import android.support.v4.widget.DrawerLayout;
import android.view.View;

/* renamed from: com.alensw.PicFolder.ah */
/* loaded from: classes.dex */
class ViewOnClickListenerC0534ah implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ GalleryActivity f2114a;

    ViewOnClickListenerC0534ah(GalleryActivity galleryActivity) {
        this.f2114a = galleryActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DrawerLayout drawerLayout;
        DrawerLayout drawerLayout2;
        drawerLayout = this.f2114a.f1998e;
        if (drawerLayout.m524e(3)) {
            drawerLayout2 = this.f2114a.f1998e;
            drawerLayout2.m521d(3);
        }
    }
}
