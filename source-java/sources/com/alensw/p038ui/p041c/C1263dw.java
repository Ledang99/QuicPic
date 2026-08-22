package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0642x;

/* renamed from: com.alensw.ui.c.dw */
/* loaded from: classes.dex */
class C1263dw implements InterfaceC1255do {

    /* renamed from: a */
    final /* synthetic */ C0622d f4205a;

    /* renamed from: b */
    final /* synthetic */ C1256dp f4206b;

    C1263dw(C1256dp c1256dp, C0622d c0622d) {
        this.f4206b = c1256dp;
        this.f4205a = c0622d;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1255do
    /* renamed from: a */
    public void mo3891a(long j, long j2) {
        C0623e c0623e;
        C0623e c0623e2;
        C0623e c0623e3;
        C0623e c0623e4;
        C0623e c0623e5;
        if (this.f4205a != null) {
            this.f4205a.f2406d = (int) (j / 1000);
            this.f4205a.f2407e = (int) (j2 / 1000);
        }
        c0623e = this.f4206b.f4183m;
        if (c0623e != null) {
            c0623e2 = this.f4206b.f4183m;
            if (c0623e2.m2382e()) {
                c0623e3 = this.f4206b.f4183m;
                c0623e3.m2392l();
                C0642x c0642x = QuickApp.f2072o;
                c0623e4 = this.f4206b.f4183m;
                c0623e5 = this.f4206b.f4183m;
                c0642x.m2497a(c0623e4, c0623e5.f2419c < 4);
            }
        }
    }
}
