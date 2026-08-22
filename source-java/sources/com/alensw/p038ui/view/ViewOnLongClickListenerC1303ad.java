package com.alensw.p038ui.view;

import android.view.View;

/* renamed from: com.alensw.ui.view.ad */
/* loaded from: classes.dex */
class ViewOnLongClickListenerC1303ad implements View.OnLongClickListener {

    /* renamed from: a */
    final /* synthetic */ ImageGridView f4507a;

    ViewOnLongClickListenerC1303ad(ImageGridView imageGridView) {
        this.f4507a = imageGridView;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        int i;
        InterfaceC1309aj interfaceC1309aj;
        InterfaceC1309aj interfaceC1309aj2;
        InterfaceC1309aj interfaceC1309aj3;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        InterfaceC1309aj interfaceC1309aj4;
        i = this.f4507a.f4360H;
        interfaceC1309aj = this.f4507a.f4409r;
        int count = interfaceC1309aj != null ? this.f4507a.getCount() : 0;
        interfaceC1309aj2 = this.f4507a.f4409r;
        if (interfaceC1309aj2 != null && this.f4507a.isShown() && i >= 0 && i < count) {
            if (this.f4507a.f4407d) {
                i2 = this.f4507a.f4361I;
                if (i < i2) {
                    this.f4507a.f4361I = i;
                }
                i3 = this.f4507a.f4362J;
                if (i > i3) {
                    this.f4507a.f4362J = i;
                }
                i4 = this.f4507a.f4361I;
                i5 = this.f4507a.f4362J;
                if (i4 <= i5) {
                    i8 = this.f4507a.f4361I;
                    int max = Math.max(i8, 0);
                    i9 = this.f4507a.f4362J;
                    int min = Math.min(i9 + 1, count);
                    interfaceC1309aj4 = this.f4507a.f4409r;
                    interfaceC1309aj4.mo3659a(max, min, true);
                }
                i6 = this.f4507a.f4361I;
                i7 = this.f4507a.f4362J;
                if (i6 < i7) {
                    this.f4507a.f4361I = Integer.MAX_VALUE;
                    this.f4507a.f4362J = Integer.MIN_VALUE;
                }
            } else {
                this.f4507a.f4361I = this.f4507a.f4362J = i;
                interfaceC1309aj3 = this.f4507a.f4409r;
                interfaceC1309aj3.mo3663c(i);
            }
        }
        return true;
    }
}
