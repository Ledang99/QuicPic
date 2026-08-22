package com.alensw.p038ui.p039a;

import android.content.Context;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.view.PasswordView;

/* renamed from: com.alensw.ui.a.aa */
/* loaded from: classes.dex */
final class C1048aa implements InterfaceC1051ad {

    /* renamed from: a */
    final /* synthetic */ Context f3610a;

    /* renamed from: b */
    final /* synthetic */ boolean f3611b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC1051ad f3612c;

    C1048aa(Context context, boolean z, InterfaceC1051ad interfaceC1051ad) {
        this.f3610a = context;
        this.f3611b = z;
        this.f3612c = interfaceC1051ad;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1051ad
    /* renamed from: a */
    public boolean mo3723a(PasswordView passwordView, String str) {
        if (str.length() > 0) {
            new AlertDialogC1089x(this.f3610a, this.f3610a.getString(R.string.password_confirm), this.f3611b, new C1049ab(this, str), null).show();
            return true;
        }
        this.f3612c.mo3723a(passwordView, "");
        return true;
    }
}
