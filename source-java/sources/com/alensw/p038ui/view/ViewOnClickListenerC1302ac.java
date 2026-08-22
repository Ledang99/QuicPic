package com.alensw.p038ui.view;

import android.view.View;

/* renamed from: com.alensw.ui.view.ac */
/* loaded from: classes.dex */
class ViewOnClickListenerC1302ac implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ImageGridView f4506a;

    ViewOnClickListenerC1302ac(ImageGridView imageGridView) {
        this.f4506a = imageGridView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        InterfaceC1309aj interfaceC1309aj;
        InterfaceC1309aj interfaceC1309aj2;
        InterfaceC1309aj interfaceC1309aj3;
        Runnable runnable;
        i = this.f4506a.f4360H;
        if (i != -1) {
            ImageGridView imageGridView = this.f4506a;
            runnable = this.f4506a.f4381ac;
            imageGridView.postDelayed(runnable, this.f4506a.f4644l);
        }
        interfaceC1309aj = this.f4506a.f4409r;
        if (interfaceC1309aj == null || !this.f4506a.isShown() || i < 0) {
            return;
        }
        interfaceC1309aj2 = this.f4506a.f4409r;
        if (i < interfaceC1309aj2.mo3656a()) {
            interfaceC1309aj3 = this.f4506a.f4409r;
            interfaceC1309aj3.mo3662b(i);
        }
    }
}
