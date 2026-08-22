package com.alensw.transfer;

import java.io.FilterInputStream;
import java.io.InputStream;

/* renamed from: com.alensw.transfer.b */
/* loaded from: classes.dex */
public class C1011b extends FilterInputStream {

    /* renamed from: a */
    private InterfaceC1023c f3533a;

    protected C1011b(InputStream inputStream, InterfaceC1023c interfaceC1023c) {
        super(inputStream);
        this.f3533a = interfaceC1023c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        return super.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        if (this.f3533a != null) {
            this.f3533a.mo3667a();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = super.read();
        if (read != -1 && this.f3533a != null) {
            this.f3533a.mo3668a(1L);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (this.f3533a != null) {
            this.f3533a.mo3668a(read);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() {
        super.reset();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long skip = super.skip(j);
        if (this.f3533a != null) {
            this.f3533a.mo3668a(skip);
        }
        return skip;
    }
}
