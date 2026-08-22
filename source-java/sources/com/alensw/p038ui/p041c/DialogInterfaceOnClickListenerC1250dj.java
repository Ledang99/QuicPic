package com.alensw.p038ui.p041c;

import android.content.Context;
import android.content.DialogInterface;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.p039a.C1071f;

/* renamed from: com.alensw.ui.c.dj */
/* loaded from: classes.dex */
class DialogInterfaceOnClickListenerC1250dj implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ InterfaceC1255do f4147a;

    /* renamed from: b */
    final /* synthetic */ C1246df f4148b;

    DialogInterfaceOnClickListenerC1250dj(C1246df c1246df, InterfaceC1255do interfaceC1255do) {
        this.f4148b = c1246df;
        this.f4147a = interfaceC1255do;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        Context context2;
        context = this.f4148b.f4131d;
        context2 = this.f4148b.f4131d;
        C1071f.m3739a(context, R.string.fix_date, context2.getString(R.string.fix_date_confirm), new RunnableC1251dk(this), (Runnable) null);
    }
}
