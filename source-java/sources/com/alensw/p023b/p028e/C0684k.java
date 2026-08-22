package com.alensw.p023b.p028e;

import org.apache.http.impl.DefaultHttpServerConnection;

/* renamed from: com.alensw.b.e.k */
/* loaded from: classes.dex */
class C0684k extends Thread {

    /* renamed from: a */
    final /* synthetic */ DefaultHttpServerConnection f2584a;

    /* renamed from: b */
    final /* synthetic */ C0683j f2585b;

    C0684k(C0683j c0683j, DefaultHttpServerConnection defaultHttpServerConnection) {
        this.f2585b = c0683j;
        this.f2584a = defaultHttpServerConnection;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.f2585b.m2704a(this.f2584a);
    }
}
