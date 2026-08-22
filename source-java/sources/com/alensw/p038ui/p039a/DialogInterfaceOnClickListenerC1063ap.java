package com.alensw.p038ui.p039a;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.ap */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1063ap implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ AbstractProgressDialogC1062ao f3643a;

    DialogInterfaceOnClickListenerC1063ap(AbstractProgressDialogC1062ao abstractProgressDialogC1062ao) {
        this.f3643a = abstractProgressDialogC1062ao;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
