package com.alensw.p038ui.p039a;

import com.alensw.p038ui.view.InterfaceC1324ay;
import com.alensw.p038ui.view.PasswordView;

/* renamed from: com.alensw.ui.a.y */
/* loaded from: classes.dex */
class C1090y implements InterfaceC1324ay {

    /* renamed from: a */
    final /* synthetic */ InterfaceC1051ad f3677a;

    /* renamed from: b */
    final /* synthetic */ AlertDialogC1089x f3678b;

    C1090y(AlertDialogC1089x alertDialogC1089x, InterfaceC1051ad interfaceC1051ad) {
        this.f3678b = alertDialogC1089x;
        this.f3677a = interfaceC1051ad;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1324ay
    /* renamed from: a */
    public void mo3753a(PasswordView passwordView, String str) {
        if (this.f3677a.mo3723a(passwordView, str)) {
            this.f3678b.dismiss();
        }
    }
}
