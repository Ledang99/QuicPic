package com.alensw.p038ui.p041c;

import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.af */
/* loaded from: classes.dex */
class C1165af implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C1290z f3863a;

    C1165af(C1290z c1290z) {
        this.f3863a = c1290z;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String m2973a = C0742b.m2973a(str.trim(), '.');
        if (m2973a.length() == 0) {
            return;
        }
        this.f3863a.m4175f(m2973a);
    }
}
