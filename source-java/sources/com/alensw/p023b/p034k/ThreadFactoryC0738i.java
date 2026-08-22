package com.alensw.p023b.p034k;

import java.util.concurrent.ThreadFactory;

/* renamed from: com.alensw.b.k.i */
/* loaded from: classes.dex */
class ThreadFactoryC0738i implements ThreadFactory {

    /* renamed from: a */
    private final int f2781a;

    public ThreadFactoryC0738i(int i) {
        this.f2781a = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new C0739j(this, runnable);
    }
}
