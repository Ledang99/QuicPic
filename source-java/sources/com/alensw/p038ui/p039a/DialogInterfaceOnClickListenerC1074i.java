package com.alensw.p038ui.p039a;

import android.content.DialogInterface;
import android.widget.EditText;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.ui.a.i */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC1074i implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ EditText f3658a;

    /* renamed from: b */
    final /* synthetic */ EditText f3659b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC1085t f3660c;

    DialogInterfaceOnClickListenerC1074i(EditText editText, EditText editText2, InterfaceC1085t interfaceC1085t) {
        this.f3658a = editText;
        this.f3659b = editText2;
        this.f3660c = interfaceC1085t;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            this.f3660c.mo2099a(C0742b.m2960a(this.f3658a.getText().toString(), 0), C0742b.m2960a(this.f3659b.getText().toString(), 0));
        }
    }
}
