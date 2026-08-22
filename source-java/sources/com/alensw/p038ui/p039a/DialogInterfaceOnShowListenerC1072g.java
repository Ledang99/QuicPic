package com.alensw.p038ui.p039a;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* renamed from: com.alensw.ui.a.g */
/* loaded from: classes.dex */
final class DialogInterfaceOnShowListenerC1072g implements DialogInterface.OnShowListener {

    /* renamed from: a */
    final /* synthetic */ Context f3656a;

    /* renamed from: b */
    final /* synthetic */ AlertDialog f3657b;

    DialogInterfaceOnShowListenerC1072g(Context context, AlertDialog alertDialog) {
        this.f3656a = context;
        this.f3657b = alertDialog;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        AlertDialogC1086u.m3745a(this.f3656a, this.f3657b);
    }
}
