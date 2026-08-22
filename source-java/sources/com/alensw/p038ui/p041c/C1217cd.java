package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p024a.AbstractC0647c;
import com.alensw.p023b.p031h.C0712h;

/* renamed from: com.alensw.ui.c.cd */
/* loaded from: classes.dex */
class C1217cd implements InterfaceC0595aj {

    /* renamed from: a */
    final /* synthetic */ C0623e f4049a;

    /* renamed from: b */
    final /* synthetic */ C1212bz f4050b;

    C1217cd(C1212bz c1212bz, C0623e c0623e) {
        this.f4050b = c1212bz;
        this.f4049a = c0623e;
    }

    @Override // com.alensw.p022a.InterfaceC0595aj
    /* renamed from: a */
    public void mo2170a(Object obj, C0712h c0712h) {
        if (this.f4050b.f4087H == 2) {
            QuickApp.f2079v.m2517a(this.f4049a, (AbstractC0647c) c0712h.mo2865l());
            this.f4050b.f4021j.m4399h();
        }
    }
}
