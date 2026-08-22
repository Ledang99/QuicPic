package com.alensw.p038ui.p041c;

import android.view.View;
import com.alensw.p022a.C0623e;

/* renamed from: com.alensw.ui.c.cs */
/* loaded from: classes.dex */
class ViewOnClickListenerC1232cs implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ C1212bz f4075a;

    ViewOnClickListenerC1232cs(C1212bz c1212bz) {
        this.f4075a = c1212bz;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f4075a.f4026o) {
            this.f4075a.m3999b(new C0623e(this.f4075a.f4022k.getPath(), 0));
        }
    }
}
