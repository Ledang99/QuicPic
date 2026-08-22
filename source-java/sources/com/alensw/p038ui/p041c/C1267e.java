package com.alensw.p038ui.p041c;

import android.os.Bundle;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.e */
/* loaded from: classes.dex */
class C1267e implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ String f4210a;

    /* renamed from: b */
    final /* synthetic */ C1159a f4211b;

    C1267e(C1159a c1159a, String str) {
        this.f4211b = c1159a;
        this.f4210a = str;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        if (str.length() > 0) {
            this.f4211b.f4082C.m4037a(C1243dc.class, C1243dc.m4049a(this.f4211b.f4082C, str, this.f4210a), (Bundle) null);
            String unused = C1159a.f3850f = str;
        }
    }
}
