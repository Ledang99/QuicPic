package com.alensw.p038ui.p041c;

import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;
import java.io.File;

/* renamed from: com.alensw.ui.c.co */
/* loaded from: classes.dex */
class C1228co implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C1212bz f4070a;

    C1228co(C1212bz c1212bz) {
        this.f4070a = c1212bz;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String m2973a = C0742b.m2973a(str.trim(), '.');
        if (m2973a.length() == 0) {
            return;
        }
        this.f4070a.m4000b(new File(this.f4070a.f4037z, m2973a));
    }
}
