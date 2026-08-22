package com.alensw.PicFolder;

import android.view.Menu;
import android.view.View;
import com.alensw.p023b.p030g.InterfaceC0702k;

/* renamed from: com.alensw.PicFolder.j */
/* loaded from: classes.dex */
class C0568j implements InterfaceC0702k {

    /* renamed from: a */
    final /* synthetic */ CropActivity f2198a;

    C0568j(CropActivity cropActivity) {
        this.f2198a = cropActivity;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0702k
    /* renamed from: a */
    public boolean mo2078a(Menu menu, View view) {
        this.f2198a.m1978a(menu);
        return menu.size() > 0;
    }
}
