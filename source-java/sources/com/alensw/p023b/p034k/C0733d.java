package com.alensw.p023b.p034k;

import java.util.concurrent.FutureTask;

/* renamed from: com.alensw.b.k.d */
/* loaded from: classes.dex */
public class C0733d extends FutureTask {

    /* renamed from: a */
    private final InterfaceCallableC0740k f2772a;

    public C0733d(InterfaceCallableC0740k interfaceCallableC0740k) {
        super(interfaceCallableC0740k);
        this.f2772a = interfaceCallableC0740k;
    }

    /* renamed from: b */
    public InterfaceCallableC0740k m2940b() {
        return this.f2772a;
    }

    @Override // java.util.concurrent.FutureTask, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.f2772a.mo2094a();
        }
        return cancel;
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        this.f2772a.mo2095b();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0733d) && this.f2772a.equals(((C0733d) obj).f2772a);
    }

    public int hashCode() {
        return this.f2772a.hashCode();
    }
}
