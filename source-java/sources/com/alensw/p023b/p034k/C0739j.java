package com.alensw.p023b.p034k;

import android.os.Process;

/* renamed from: com.alensw.b.k.j */
/* loaded from: classes.dex */
class C0739j extends Thread {

    /* renamed from: a */
    final /* synthetic */ ThreadFactoryC0738i f2782a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0739j(ThreadFactoryC0738i threadFactoryC0738i, Runnable runnable) {
        super(runnable);
        this.f2782a = threadFactoryC0738i;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int i;
        i = this.f2782a.f2781a;
        Process.setThreadPriority(i);
        super.run();
    }
}
