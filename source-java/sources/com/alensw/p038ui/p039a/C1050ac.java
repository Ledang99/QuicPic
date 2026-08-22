package com.alensw.p038ui.p039a;

import com.alensw.PicFolder.QuickApp;
import com.alensw.p038ui.view.PasswordView;

/* renamed from: com.alensw.ui.a.ac */
/* loaded from: classes.dex */
final class C1050ac implements InterfaceC1051ad {

    /* renamed from: a */
    final /* synthetic */ String f3615a;

    /* renamed from: b */
    final /* synthetic */ boolean f3616b;

    /* renamed from: c */
    final /* synthetic */ Runnable f3617c;

    /* renamed from: d */
    final /* synthetic */ Runnable f3618d;

    C1050ac(String str, boolean z, Runnable runnable, Runnable runnable2) {
        this.f3615a = str;
        this.f3616b = z;
        this.f3617c = runnable;
        this.f3618d = runnable2;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1051ad
    /* renamed from: a */
    public boolean mo3723a(PasswordView passwordView, String str) {
        if (!this.f3615a.equals(str)) {
            AlertDialogC1089x.m3752a(passwordView);
            if (this.f3618d == null) {
                return true;
            }
            this.f3618d.run();
            return true;
        }
        if (this.f3616b) {
            QuickApp.f2082y = str;
        }
        if (this.f3617c == null) {
            return true;
        }
        this.f3617c.run();
        return true;
    }
}
