package com.alensw.PicFolder;

import android.support.v4.widget.DrawerLayout;
import com.alensw.p038ui.view.C1329bc;

/* renamed from: com.alensw.PicFolder.ae */
/* loaded from: classes.dex */
class RunnableC0531ae implements Runnable {

    /* renamed from: a */
    final /* synthetic */ GalleryActivity f2110a;

    RunnableC0531ae(GalleryActivity galleryActivity) {
        this.f2110a = galleryActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1329bc c1329bc;
        DrawerLayout drawerLayout;
        C1329bc c1329bc2;
        DrawerLayout drawerLayout2;
        c1329bc = this.f2110a.f2002i;
        if (!c1329bc.isEmpty()) {
            drawerLayout = this.f2110a.f1998e;
            drawerLayout.m520c(3);
        } else {
            c1329bc2 = this.f2110a.f2002i;
            c1329bc2.m4371a();
            drawerLayout2 = this.f2110a.f1998e;
            drawerLayout2.postDelayed(this, 700L);
        }
    }
}
