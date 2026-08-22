package com.alensw.p038ui.p039a;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.q */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1082q implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ ViewOnClickListenerC1081p f3670a;

    DialogInterfaceOnClickListenerC1082q(ViewOnClickListenerC1081p viewOnClickListenerC1081p) {
        this.f3670a = viewOnClickListenerC1081p;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f3670a.f3669d.setText((CharSequence) this.f3670a.f3668c.getItem(i));
    }
}
