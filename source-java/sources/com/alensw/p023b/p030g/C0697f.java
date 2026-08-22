package com.alensw.p023b.p030g;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListPopupWindow;

/* renamed from: com.alensw.b.g.f */
/* loaded from: classes.dex */
final class C0697f implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C0692a f2634a;

    /* renamed from: b */
    final /* synthetic */ ListPopupWindow f2635b;

    /* renamed from: c */
    final /* synthetic */ int[] f2636c;

    /* renamed from: d */
    final /* synthetic */ int f2637d;

    /* renamed from: e */
    final /* synthetic */ InterfaceC0701j f2638e;

    C0697f(C0692a c0692a, ListPopupWindow listPopupWindow, int[] iArr, int i, InterfaceC0701j interfaceC0701j) {
        this.f2634a = c0692a;
        this.f2635b = listPopupWindow;
        this.f2636c = iArr;
        this.f2637d = i;
        this.f2638e = interfaceC0701j;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MenuItemC0703l menuItemC0703l = (MenuItemC0703l) this.f2634a.getItem(i);
        if (menuItemC0703l.isEnabled()) {
            if (!menuItemC0703l.hasSubMenu()) {
                if (this.f2635b.isShowing()) {
                    this.f2635b.dismiss();
                }
                this.f2638e.mo2753a(menuItemC0703l, i);
                return;
            }
            this.f2634a.m2733a((SubMenuC0704m) menuItemC0703l.getSubMenu());
            this.f2634a.notifyDataSetChanged();
            int[] m2734a = this.f2634a.m2734a();
            this.f2635b.setContentWidth(Math.max(this.f2636c[0], m2734a[0]));
            if (m2734a[1] > this.f2637d) {
                this.f2635b.setHeight(this.f2637d);
            }
        }
    }
}
