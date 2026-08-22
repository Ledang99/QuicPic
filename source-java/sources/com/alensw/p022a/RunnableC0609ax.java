package com.alensw.p022a;

import com.alensw.bean.CommonFolder;

/* renamed from: com.alensw.a.ax */
/* loaded from: classes.dex */
class RunnableC0609ax implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f2344a;

    /* renamed from: b */
    final /* synthetic */ C0608aw f2345b;

    RunnableC0609ax(C0608aw c0608aw, boolean z) {
        this.f2345b = c0608aw;
        this.f2344a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        InterfaceC0611az interfaceC0611az;
        CommonFolder commonFolder;
        interfaceC0611az = this.f2345b.f2343b.f2337g;
        commonFolder = this.f2345b.f2343b.f2338h;
        interfaceC0611az.mo2260a(commonFolder, this.f2344a);
    }
}
