package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0622d;

/* renamed from: com.alensw.ui.c.by */
/* loaded from: classes.dex */
class C1211by implements InterfaceC1255do {

    /* renamed from: a */
    final /* synthetic */ C0622d f4009a;

    /* renamed from: b */
    final /* synthetic */ C1192bf f4010b;

    C1211by(C1192bf c1192bf, C0622d c0622d) {
        this.f4010b = c1192bf;
        this.f4009a = c0622d;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1255do
    /* renamed from: a */
    public void mo3891a(long j, long j2) {
        this.f4009a.f2406d = (int) (j / 1000);
        this.f4009a.f2407e = (int) (j2 / 1000);
        if (this.f4010b.f3963g.m2382e()) {
            this.f4010b.f3963g.m2392l();
            QuickApp.f2072o.m2497a(this.f4010b.f3963g, this.f4010b.f3963g.f2419c < 4);
            this.f4010b.f3962f.requestLayout();
        }
    }
}
