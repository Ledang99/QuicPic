package com.alensw.transfer;

import android.content.DialogInterface;

/* renamed from: com.alensw.transfer.aw */
/* loaded from: classes.dex */
class DialogInterfaceOnDismissListenerC1007aw implements DialogInterface.OnDismissListener {

    /* renamed from: a */
    final /* synthetic */ C0987ac f3527a;

    DialogInterfaceOnDismissListenerC1007aw(C0987ac c0987ac) {
        this.f3527a = c0987ac;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f3527a.f3489s = false;
    }
}
