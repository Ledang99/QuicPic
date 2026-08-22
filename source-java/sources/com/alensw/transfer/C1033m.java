package com.alensw.transfer;

import android.app.ActionBar;
import android.support.v4.p011a.InterfaceC0195x;
import android.widget.TextView;

/* renamed from: com.alensw.transfer.m */
/* loaded from: classes.dex */
class C1033m implements InterfaceC0195x {

    /* renamed from: a */
    final /* synthetic */ TransferActivity f3579a;

    C1033m(TransferActivity transferActivity) {
        this.f3579a = transferActivity;
    }

    @Override // android.support.v4.p011a.InterfaceC0195x
    /* renamed from: a */
    public void mo500a(int i) {
        ActionBar actionBar;
        TextView textView;
        TextView textView2;
        ActionBar actionBar2;
        actionBar = this.f3579a.f3731J;
        if (actionBar != null) {
            actionBar2 = this.f3579a.f3731J;
            actionBar2.setSelectedNavigationItem(i);
        } else {
            textView = this.f3579a.f3373c;
            textView.setSelected(i == 0);
            textView2 = this.f3579a.f3374d;
            textView2.setSelected(i == 1);
        }
    }

    @Override // android.support.v4.p011a.InterfaceC0195x
    /* renamed from: a */
    public void mo501a(int i, float f, int i2) {
    }

    @Override // android.support.v4.p011a.InterfaceC0195x
    /* renamed from: b */
    public void mo502b(int i) {
    }
}
