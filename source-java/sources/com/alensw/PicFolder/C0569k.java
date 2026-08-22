package com.alensw.PicFolder;

import android.view.Menu;
import android.view.View;
import com.alensw.p023b.p030g.InterfaceC0702k;

/* renamed from: com.alensw.PicFolder.k */
/* loaded from: classes.dex */
class C0569k implements InterfaceC0702k {

    /* renamed from: a */
    final /* synthetic */ CropActivity f2199a;

    C0569k(CropActivity cropActivity) {
        this.f2199a = cropActivity;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0702k
    /* renamed from: a */
    public boolean mo2078a(Menu menu, View view) {
        this.f2199a.m1981b(menu);
        return menu.size() > 0;
    }
}
