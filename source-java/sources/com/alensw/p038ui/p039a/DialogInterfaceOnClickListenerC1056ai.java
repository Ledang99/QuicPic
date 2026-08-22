package com.alensw.p038ui.p039a;

import android.content.DialogInterface;
import java.io.File;

/* renamed from: com.alensw.ui.a.ai */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1056ai implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ InterfaceC1061an f3633a;

    /* renamed from: b */
    final /* synthetic */ AlertDialogC1052ae f3634b;

    DialogInterfaceOnClickListenerC1056ai(AlertDialogC1052ae alertDialogC1052ae, InterfaceC1061an interfaceC1061an) {
        this.f3634b = alertDialogC1052ae;
        this.f3633a = interfaceC1061an;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        File path = this.f3634b.f3620c.getPath();
        if (path != null) {
            this.f3633a.mo3728a(path);
        }
    }
}
