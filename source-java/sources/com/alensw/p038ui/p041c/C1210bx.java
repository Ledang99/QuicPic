package com.alensw.p038ui.p041c;

import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.bx */
/* loaded from: classes.dex */
class C1210bx implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C1192bf f4008a;

    C1210bx(C1192bf c1192bf) {
        this.f4008a = c1192bf;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String m3008g = C0742b.m3008g(C0742b.m2973a(str.trim(), '.'));
        if (m3008g.length() == 0 || this.f4008a.f3963g.getName().equals(m3008g)) {
            return;
        }
        this.f4008a.m3976f(m3008g);
    }
}
