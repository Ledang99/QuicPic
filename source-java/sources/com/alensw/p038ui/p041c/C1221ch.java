package com.alensw.p038ui.p041c;

import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0633o;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.ch */
/* loaded from: classes.dex */
class C1221ch implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C0633o f4057a;

    /* renamed from: b */
    final /* synthetic */ Runnable f4058b;

    /* renamed from: c */
    final /* synthetic */ C1212bz f4059c;

    C1221ch(C1212bz c1212bz, C0633o c0633o, Runnable runnable) {
        this.f4059c = c1212bz;
        this.f4057a = c0633o;
        this.f4058b = runnable;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        C0623e c0623e = new C0623e(str, -1);
        this.f4057a.m2414a(c0623e);
        this.f4059c.f4023l.m2510f(c0623e);
        this.f4059c.f4023l.m2508e(c0623e);
        this.f4058b.run();
    }
}
