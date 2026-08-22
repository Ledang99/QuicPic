package com.alensw.p038ui.p041c;

import com.alensw.bean.CommonFile;

/* renamed from: com.alensw.ui.c.am */
/* loaded from: classes.dex */
class C1172am implements InterfaceC1255do {

    /* renamed from: a */
    final /* synthetic */ CommonFile f3875a;

    /* renamed from: b */
    final /* synthetic */ C1290z f3876b;

    C1172am(C1290z c1290z, CommonFile commonFile) {
        this.f3876b = c1290z;
        this.f3875a = commonFile;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1255do
    /* renamed from: a */
    public void mo3891a(long j, long j2) {
        this.f3875a.m3013a(j / 1000, j2 / 1000);
        if (this.f3876b.f4304y.m3045m()) {
            this.f3876b.f4304y.m3051s();
            this.f3876b.f4285f.requestLayout();
        }
    }
}
