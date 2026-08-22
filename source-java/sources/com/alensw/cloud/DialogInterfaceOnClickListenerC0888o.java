package com.alensw.cloud;

import android.content.DialogInterface;
import android.widget.BaseAdapter;

/* renamed from: com.alensw.cloud.o */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC0888o implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ InterfaceC0962y f3180a;

    /* renamed from: b */
    final /* synthetic */ BaseAdapter f3181b;

    DialogInterfaceOnClickListenerC0888o(InterfaceC0962y interfaceC0962y, BaseAdapter baseAdapter) {
        this.f3180a = interfaceC0962y;
        this.f3181b = baseAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.f3180a != null) {
            C0961x c0961x = (C0961x) this.f3181b.getItem(i);
            this.f3180a.mo3472a(c0961x.f3348a, c0961x.f3352e);
        }
    }
}
