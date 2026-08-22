package com.alensw.p038ui.p041c;

import android.view.View;

/* renamed from: com.alensw.ui.c.ax */
/* loaded from: classes.dex */
class ViewOnFocusChangeListenerC1183ax implements View.OnFocusChangeListener {

    /* renamed from: a */
    final /* synthetic */ C1178as f3945a;

    ViewOnFocusChangeListenerC1183ax(C1178as c1178as) {
        this.f3945a = c1178as;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        this.f3945a.f4082C.m3836u();
        if (this.f3945a.f4087H == 2) {
            this.f3945a.f4082C.mo1994a(!z);
        }
    }
}
