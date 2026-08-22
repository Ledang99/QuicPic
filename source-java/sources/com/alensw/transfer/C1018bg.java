package com.alensw.transfer;

import com.alensw.p023b.p028e.InterfaceC0678e;

/* renamed from: com.alensw.transfer.bg */
/* loaded from: classes.dex */
class C1018bg implements InterfaceC0678e {

    /* renamed from: a */
    final /* synthetic */ C1017bf f3548a;

    /* renamed from: b */
    private long f3549b = 0;

    C1018bg(C1017bf c1017bf) {
        this.f3548a = c1017bf;
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0678e
    /* renamed from: a */
    public void mo2683a(long j, long j2) {
        C1024d c1024d;
        C1024d c1024d2;
        c1024d = this.f3548a.f3547c;
        c1024d.m3679c(j - this.f3549b);
        c1024d2 = this.f3548a.f3547c;
        c1024d2.m3690l();
        this.f3549b = j;
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0679f
    /* renamed from: b_ */
    public boolean mo2081b_() {
        C1024d c1024d;
        c1024d = this.f3548a.f3547c;
        return c1024d.m3692n();
    }
}
