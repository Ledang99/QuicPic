package com.alensw.p038ui.p039a;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.m */
/* loaded from: classes.dex */
final class DialogInterfaceOnCancelListenerC1078m implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f3663a;

    DialogInterfaceOnCancelListenerC1078m(Runnable runnable) {
        this.f3663a = runnable;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f3663a != null) {
            this.f3663a.run();
        }
    }
}
