package com.alensw.PicFolder;

import android.view.View;
import android.widget.AdapterView;
import com.alensw.p038ui.view.C1329bc;

/* renamed from: com.alensw.PicFolder.ak */
/* loaded from: classes.dex */
class C0537ak implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ GalleryActivity f2119a;

    C0537ak(GalleryActivity galleryActivity) {
        this.f2119a = galleryActivity;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
        C1329bc c1329bc;
        c1329bc = this.f2119a.f2002i;
        return c1329bc.m4381b(adapterView, view, i, j);
    }
}
