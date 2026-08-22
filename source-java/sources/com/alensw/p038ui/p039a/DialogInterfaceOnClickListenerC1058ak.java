package com.alensw.p038ui.p039a;

import android.content.Context;
import android.content.DialogInterface;
import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.a.ak */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1058ak implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f3636a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC1061an f3637b;

    /* renamed from: c */
    final /* synthetic */ AlertDialogC1052ae f3638c;

    DialogInterfaceOnClickListenerC1058ak(AlertDialogC1052ae alertDialogC1052ae, Context context, InterfaceC1061an interfaceC1061an) {
        this.f3638c = alertDialogC1052ae;
        this.f3636a = context;
        this.f3637b = interfaceC1061an;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        C1071f.m3740a(this.f3636a, R.string.new_folder, "", (CharSequence) null, new C1059al(this));
    }
}
