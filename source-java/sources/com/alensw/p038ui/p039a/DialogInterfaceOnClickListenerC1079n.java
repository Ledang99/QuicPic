package com.alensw.p038ui.p039a;

import android.content.DialogInterface;
import android.widget.EditText;

/* renamed from: com.alensw.ui.a.n */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC1079n implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ InterfaceC1084s f3664a;

    /* renamed from: b */
    final /* synthetic */ EditText f3665b;

    DialogInterfaceOnClickListenerC1079n(InterfaceC1084s interfaceC1084s, EditText editText) {
        this.f3664a = interfaceC1084s;
        this.f3665b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            this.f3664a.mo3652a(this.f3665b.getText().toString());
        }
    }
}
