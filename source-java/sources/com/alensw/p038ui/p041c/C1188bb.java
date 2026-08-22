package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.p022a.C0600ao;
import java.util.HashSet;

/* renamed from: com.alensw.ui.c.bb */
/* loaded from: classes.dex */
class C1188bb implements InterfaceC1278n {

    /* renamed from: a */
    final /* synthetic */ C1178as f3953a;

    C1188bb(C1178as c1178as) {
        this.f3953a = c1178as;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1278n
    /* renamed from: a */
    public void mo3889a(boolean z) {
        if (z) {
            return;
        }
        this.f3953a.m3926o();
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1278n
    /* renamed from: a */
    public void mo3890a(boolean z, HashSet hashSet) {
        CommonFile commonFile;
        if (z || hashSet.size() <= 0) {
            return;
        }
        C0600ao c0600ao = QuickApp.f2078u;
        commonFile = this.f3953a.f3922l;
        c0600ao.m2227a(commonFile.mo3021i(), true);
        this.f3953a.m3924n();
    }
}
