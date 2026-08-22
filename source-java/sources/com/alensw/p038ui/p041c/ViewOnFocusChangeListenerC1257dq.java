package com.alensw.p038ui.p041c;

import android.view.View;

/* renamed from: com.alensw.ui.c.dq */
/* loaded from: classes.dex */
class ViewOnFocusChangeListenerC1257dq implements View.OnFocusChangeListener {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4197a;

    ViewOnFocusChangeListenerC1257dq(C1256dp c1256dp) {
        this.f4197a = c1256dp;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f4197a.f4082C.m3836u();
        if (this.f4197a.f4087H == 2) {
            this.f4197a.f4082C.mo1994a(!z);
        }
    }
}
