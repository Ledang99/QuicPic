package com.p014a.p015a.p016a.p018b;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* renamed from: com.a.a.a.b.a */
/* loaded from: classes.dex */
abstract class AbstractC0481a extends Reader {

    /* renamed from: a */
    protected final C0483c f1742a;

    /* renamed from: b */
    protected InputStream f1743b;

    /* renamed from: c */
    protected byte[] f1744c;

    /* renamed from: d */
    protected int f1745d;

    /* renamed from: e */
    protected int f1746e;

    /* renamed from: f */
    protected char[] f1747f = null;

    protected AbstractC0481a(C0483c c0483c, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.f1742a = c0483c;
        this.f1743b = inputStream;
        this.f1744c = bArr;
        this.f1745d = i;
        this.f1746e = i2;
    }

    /* renamed from: a */
    public final void m1663a() {
        byte[] bArr = this.f1744c;
        if (bArr != null) {
            this.f1744c = null;
            this.f1742a.m1678a(bArr);
        }
    }

    /* renamed from: a */
    protected void m1664a(char[] cArr, int i, int i2) {
        throw new ArrayIndexOutOfBoundsException("read(buf," + i + "," + i2 + "), cbuf[" + cArr.length + "]");
    }

    /* renamed from: b */
    protected void m1665b() {
        throw new IOException("Strange I/O stream, returned 0 bytes on read");
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        InputStream inputStream = this.f1743b;
        if (inputStream != null) {
            this.f1743b = null;
            m1663a();
            inputStream.close();
        }
    }

    @Override // java.io.Reader
    public int read() {
        if (this.f1747f == null) {
            this.f1747f = new char[1];
        }
        if (read(this.f1747f, 0, 1) < 1) {
            return -1;
        }
        return this.f1747f[0];
    }
}
