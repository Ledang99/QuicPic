package com.alensw.p038ui.p039a;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.k */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC1076k implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Runnable f3661a;

    DialogInterfaceOnClickListenerC1076k(Runnable runnable) {
        this.f3661a = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f3661a != null) {
            this.f3661a.run();
        }
    }
}
