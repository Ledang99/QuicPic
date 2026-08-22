package com.alensw.p022a;

import com.alensw.p023b.p034k.C0730a;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.a.ai */
/* loaded from: classes.dex */
class C0594ai extends C0730a {

    /* renamed from: a */
    final /* synthetic */ C0593ah f2268a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0594ai(C0593ah c0593ah, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f2268a = c0593ah;
    }

    @Override // com.alensw.p023b.p034k.C0730a
    /* renamed from: a */
    protected void mo2169a(Runnable runnable) {
        ConcurrentHashMap concurrentHashMap;
        super.mo2169a(runnable);
        if (runnable instanceof RunnableC0596ak) {
            concurrentHashMap = this.f2268a.f2263c;
            concurrentHashMap.remove(((RunnableC0596ak) runnable).m2173b());
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        ConcurrentHashMap concurrentHashMap;
        super.afterExecute(runnable, th);
        if (runnable instanceof RunnableC0596ak) {
            concurrentHashMap = this.f2268a.f2263c;
            concurrentHashMap.remove(((RunnableC0596ak) runnable).m2173b());
        }
    }
}
