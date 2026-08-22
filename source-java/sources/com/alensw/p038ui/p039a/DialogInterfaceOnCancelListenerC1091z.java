package com.alensw.p038ui.p039a;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.z */
/* loaded from: classes.dex */
class DialogInterfaceOnCancelListenerC1091z implements DialogInterface.OnCancelListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f3679a;

    /* renamed from: b */
    final /* synthetic */ AlertDialogC1089x f3680b;

    DialogInterfaceOnCancelListenerC1091z(AlertDialogC1089x alertDialogC1089x, Runnable runnable) {
        this.f3680b = alertDialogC1089x;
        this.f3679a = runnable;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.f3679a.run();
    }
}
