package com.alensw.p038ui.p041c;

import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.t */
/* loaded from: classes.dex */
class C1284t implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C1280p f4260a;

    C1284t(C1280p c1280p) {
        this.f4260a = c1280p;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String m2973a = C0742b.m2973a(str.trim(), '.');
        if (m2973a.length() == 0) {
            return;
        }
        this.f4260a.m4153f(m2973a);
    }
}
