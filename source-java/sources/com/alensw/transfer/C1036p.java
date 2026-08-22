package com.alensw.transfer;

import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: com.alensw.transfer.p */
/* loaded from: classes.dex */
class C1036p extends FilterInputStream {

    /* renamed from: a */
    final /* synthetic */ C1034n f3586a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1036p(C1034n c1034n, InputStream inputStream) {
        super(inputStream);
        this.f3586a = c1034n;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        TransferService transferService;
        transferService = this.f3586a.f3581b;
        transferService.m3515d();
        super.close();
    }
}
