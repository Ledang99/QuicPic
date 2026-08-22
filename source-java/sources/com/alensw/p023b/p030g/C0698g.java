package com.alensw.p023b.p030g;

import android.view.View;
import android.widget.AdapterView;
import android.widget.PopupWindow;

/* renamed from: com.alensw.b.g.g */
/* loaded from: classes.dex */
final class C0698g implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C0692a f2639a;

    /* renamed from: b */
    final /* synthetic */ PopupWindow f2640b;

    /* renamed from: c */
    final /* synthetic */ View f2641c;

    /* renamed from: d */
    final /* synthetic */ int f2642d;

    /* renamed from: e */
    final /* synthetic */ int f2643e;

    /* renamed from: f */
    final /* synthetic */ InterfaceC0701j f2644f;

    C0698g(C0692a c0692a, PopupWindow popupWindow, View view, int i, int i2, InterfaceC0701j interfaceC0701j) {
        this.f2639a = c0692a;
        this.f2640b = popupWindow;
        this.f2641c = view;
        this.f2642d = i;
        this.f2643e = i2;
        this.f2644f = interfaceC0701j;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MenuItemC0703l menuItemC0703l = (MenuItemC0703l) this.f2639a.getItem(i);
        if (menuItemC0703l.isEnabled()) {
            if (this.f2640b.isShowing()) {
                this.f2640b.dismiss();
            }
            if (!menuItemC0703l.hasSubMenu()) {
                this.f2644f.mo2753a(menuItemC0703l, i);
                return;
            }
            this.f2639a.m2733a((SubMenuC0704m) menuItemC0703l.getSubMenu());
            this.f2639a.notifyDataSetChanged();
            MenuC0693b.m2743b(this.f2640b, this.f2641c, this.f2639a.m2734a()[0] + (this.f2642d * 2), this.f2643e);
        }
    }
}
