package com.alensw.transfer.p037a;

import java.net.InetAddress;
import java.nio.ByteBuffer;

/* renamed from: com.alensw.transfer.a.g */
/* loaded from: classes.dex */
class RunnableC0971g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ByteBuffer f3429a;

    /* renamed from: b */
    final /* synthetic */ InetAddress f3430b;

    /* renamed from: c */
    final /* synthetic */ C0965a f3431c;

    RunnableC0971g(C0965a c0965a, ByteBuffer byteBuffer, InetAddress inetAddress) {
        this.f3431c = c0965a;
        this.f3429a = byteBuffer;
        this.f3430b = inetAddress;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3431c.m3549a(this.f3429a, this.f3430b);
    }
}
