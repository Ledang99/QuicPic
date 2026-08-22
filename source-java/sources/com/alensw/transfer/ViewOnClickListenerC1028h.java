package com.alensw.transfer;

import android.support.v4.p011a.C0187p;
import android.view.View;
import android.widget.TextView;

/* renamed from: com.alensw.transfer.h */
/* loaded from: classes.dex */
class ViewOnClickListenerC1028h implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ TransferActivity f3574a;

    ViewOnClickListenerC1028h(TransferActivity transferActivity) {
        this.f3574a = transferActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        TextView textView;
        C0187p c0187p;
        textView = this.f3574a.f3373c;
        int i = view == textView ? 0 : 1;
        c0187p = this.f3574a.f3372b;
        c0187p.setCurrentItem(i);
    }
}
