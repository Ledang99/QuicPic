package com.alensw.p038ui.p041c;

import com.alensw.p023b.p031h.C0715k;

/* renamed from: com.alensw.ui.c.dk */
/* loaded from: classes.dex */
class RunnableC1251dk implements Runnable {

    /* renamed from: a */
    final /* synthetic */ DialogInterfaceOnClickListenerC1250dj f4149a;

    RunnableC1251dk(DialogInterfaceOnClickListenerC1250dj dialogInterfaceOnClickListenerC1250dj) {
        this.f4149a = dialogInterfaceOnClickListenerC1250dj;
    }

    @Override // java.lang.Runnable
    public void run() {
        long m4070d;
        C0715k c0715k;
        m4070d = this.f4149a.f4148b.m4070d();
        if (this.f4149a.f4147a != null) {
            InterfaceC1255do interfaceC1255do = this.f4149a.f4147a;
            c0715k = this.f4149a.f4148b.f4138k;
            interfaceC1255do.mo3891a(m4070d, c0715k.f2714j);
        }
    }
}
