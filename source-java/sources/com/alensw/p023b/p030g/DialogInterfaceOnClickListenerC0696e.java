package com.alensw.p023b.p030g;

import android.content.Context;
import android.content.DialogInterface;

/* renamed from: com.alensw.b.g.e */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC0696e implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C0692a f2631a;

    /* renamed from: b */
    final /* synthetic */ Context f2632b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC0701j f2633c;

    DialogInterfaceOnClickListenerC0696e(C0692a c0692a, Context context, InterfaceC0701j interfaceC0701j) {
        this.f2631a = c0692a;
        this.f2632b = context;
        this.f2633c = interfaceC0701j;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MenuItemC0703l menuItemC0703l = (MenuItemC0703l) this.f2631a.getItem(i);
        if (menuItemC0703l.isEnabled()) {
            if (!menuItemC0703l.hasSubMenu()) {
                this.f2633c.mo2753a(menuItemC0703l, i);
                return;
            }
            this.f2631a.m2733a((SubMenuC0704m) menuItemC0703l.getSubMenu());
            MenuC0693b.m2742b(this.f2632b, this.f2631a, menuItemC0703l.getTitle(), this.f2633c);
        }
    }
}
