package com.alensw.transfer;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import com.alensw.p038ui.p039a.AlertDialogC1086u;

/* renamed from: com.alensw.transfer.av */
/* loaded from: classes.dex */
class DialogInterfaceOnShowListenerC1006av implements DialogInterface.OnShowListener {

    /* renamed from: a */
    final /* synthetic */ AlertDialog f3524a;

    /* renamed from: b */
    final /* synthetic */ Context f3525b;

    /* renamed from: c */
    final /* synthetic */ C0987ac f3526c;

    DialogInterfaceOnShowListenerC1006av(C0987ac c0987ac, AlertDialog alertDialog, Context context) {
        this.f3526c = c0987ac;
        this.f3524a = alertDialog;
        this.f3525b = context;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        TextView textView = (TextView) this.f3524a.findViewById(R.id.message);
        textView.setClickable(true);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        AlertDialogC1086u.m3745a(this.f3525b, this.f3524a);
    }
}
