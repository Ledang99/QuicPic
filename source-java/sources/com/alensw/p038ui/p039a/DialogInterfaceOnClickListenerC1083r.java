package com.alensw.p038ui.p039a;

import android.content.DialogInterface;
import android.view.View;
import android.widget.Spinner;
import com.alensw.p038ui.view.TitleView;

/* renamed from: com.alensw.ui.a.r */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC1083r implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ View f3671a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC1084s f3672b;

    DialogInterfaceOnClickListenerC1083r(View view, InterfaceC1084s interfaceC1084s) {
        this.f3671a = view;
        this.f3672b = interfaceC1084s;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f3672b.mo3652a((this.f3671a instanceof Spinner ? ((Spinner) this.f3671a).getSelectedItem() : ((TitleView) this.f3671a).getText()).toString());
    }
}
