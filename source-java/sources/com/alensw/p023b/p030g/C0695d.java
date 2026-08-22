package com.alensw.p023b.p030g;

import android.app.Activity;

/* renamed from: com.alensw.b.g.d */
/* loaded from: classes.dex */
class C0695d implements InterfaceC0701j {

    /* renamed from: a */
    final /* synthetic */ MenuC0693b f2630a;

    C0695d(MenuC0693b menuC0693b) {
        this.f2630a = menuC0693b;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0701j
    /* renamed from: a */
    public void mo2753a(MenuItemC0703l menuItemC0703l, int i) {
        if (menuItemC0703l.m2763c() || !(this.f2630a.f2626d instanceof Activity)) {
            return;
        }
        ((Activity) this.f2630a.f2626d).onMenuItemSelected(0, menuItemC0703l);
    }
}
