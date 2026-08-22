package com.alensw.p038ui.p039a;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.l */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC1077l implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f3662a;

    DialogInterfaceOnClickListenerC1077l(Runnable runnable) {
        this.f3662a = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f3662a != null) {
            this.f3662a.run();
        }
    }
}
