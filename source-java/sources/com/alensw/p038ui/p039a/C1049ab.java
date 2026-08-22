package com.alensw.p038ui.p039a;

import com.alensw.p038ui.view.PasswordView;

/* renamed from: com.alensw.ui.a.ab */
/* loaded from: classes.dex */
class C1049ab implements InterfaceC1051ad {

    /* renamed from: a */
    final /* synthetic */ String f3613a;

    /* renamed from: b */
    final /* synthetic */ C1048aa f3614b;

    C1049ab(C1048aa c1048aa, String str) {
        this.f3614b = c1048aa;
        this.f3613a = str;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1051ad
    /* renamed from: a */
    public boolean mo3723a(PasswordView passwordView, String str) {
        if (this.f3613a.equals(str)) {
            this.f3614b.f3612c.mo3723a(passwordView, this.f3613a);
            return true;
        }
        AlertDialogC1089x.m3752a(passwordView);
        return true;
    }
}
