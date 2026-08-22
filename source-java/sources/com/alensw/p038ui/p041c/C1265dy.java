package com.alensw.p038ui.p041c;

import android.net.Uri;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0600ao;
import java.util.HashSet;

/* renamed from: com.alensw.ui.c.dy */
/* loaded from: classes.dex */
class C1265dy implements InterfaceC1278n {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4208a;

    C1265dy(C1256dp c1256dp) {
        this.f4208a = c1256dp;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1278n
    /* renamed from: a */
    public void mo3889a(boolean z) {
        if (z) {
            return;
        }
        this.f4208a.m4121r();
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1278n
    /* renamed from: a */
    public void mo3890a(boolean z, HashSet hashSet) {
        Uri uri;
        if (z || hashSet.size() <= 0) {
            return;
        }
        C0600ao c0600ao = QuickApp.f2078u;
        uri = this.f4208a.f4185o;
        c0600ao.m2227a(uri, true);
        this.f4208a.m4119q();
    }
}
