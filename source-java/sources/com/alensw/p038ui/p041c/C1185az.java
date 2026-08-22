package com.alensw.p038ui.p041c;

import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;

/* renamed from: com.alensw.ui.c.az */
/* loaded from: classes.dex */
class C1185az implements InterfaceC1255do {

    /* renamed from: a */
    final /* synthetic */ CommonFile f3947a;

    /* renamed from: b */
    final /* synthetic */ C1178as f3948b;

    C1185az(C1178as c1178as, CommonFile commonFile) {
        this.f3948b = c1178as;
        this.f3947a = commonFile;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1255do
    /* renamed from: a */
    public void mo3891a(long j, long j2) {
        CommonFolder commonFolder;
        CommonFolder commonFolder2;
        this.f3947a.m3013a(j / 1000, j2 / 1000);
        commonFolder = this.f3948b.f3921k;
        if (commonFolder.m3045m()) {
            commonFolder2 = this.f3948b.f3921k;
            commonFolder2.m3051s();
        }
    }
}
