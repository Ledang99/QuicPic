package com.alensw.p038ui.view;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.view.s */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1374s implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ConfirmPreference f4833a;

    DialogInterfaceOnClickListenerC1374s(ConfirmPreference confirmPreference) {
        this.f4833a = confirmPreference;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f4833a.f4337a != null) {
            this.f4833a.f4337a.run();
        }
    }
}
