package com.p014a.p015a.p016a.p018b;

import java.io.InputStream;

/* renamed from: com.a.a.a.b.e */
/* loaded from: classes.dex */
public final class C0485e extends InputStream {

    /* renamed from: a */
    protected final C0483c f1768a;

    /* renamed from: b */
    final InputStream f1769b;

    /* renamed from: c */
    byte[] f1770c;

    /* renamed from: d */
    int f1771d;

    /* renamed from: e */
    final int f1772e;

    public C0485e(C0483c c0483c, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.f1768a = c0483c;
        this.f1769b = inputStream;
        this.f1770c = bArr;
        this.f1771d = i;
        this.f1772e = i2;
    }

    /* renamed from: a */
    private void m1689a() {
        byte[] bArr = this.f1770c;
        if (bArr != null) {
            this.f1770c = null;
            if (this.f1768a != null) {
                this.f1768a.m1678a(bArr);
            }
        }
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f1770c != null ? this.f1772e - this.f1771d : this.f1769b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m1689a();
        this.f1769b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        if (this.f1770c == null) {
            this.f1769b.mark(i);
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f1770c == null && this.f1769b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f1770c == null) {
            return this.f1769b.read();
        }
        byte[] bArr = this.f1770c;
        int i = this.f1771d;
        this.f1771d = i + 1;
        int i2 = bArr[i] & 255;
        if (this.f1771d < this.f1772e) {
            return i2;
        }
        m1689a();
        return i2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (this.f1770c == null) {
            return this.f1769b.read(bArr, i, i2);
        }
        int i3 = this.f1772e - this.f1771d;
        if (i2 > i3) {
            i2 = i3;
        }
        System.arraycopy(this.f1770c, this.f1771d, bArr, i, i2);
        this.f1771d += i2;
        if (this.f1771d < this.f1772e) {
            return i2;
        }
        m1689a();
        return i2;
    }

    @Override // java.io.InputStream
    public void reset() {
        if (this.f1770c == null) {
            this.f1769b.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        long j2;
        if (this.f1770c != null) {
            int i = this.f1772e - this.f1771d;
            if (i > j) {
                this.f1771d += (int) j;
                return j;
            }
            m1689a();
            j2 = i + 0;
            j -= i;
        } else {
            j2 = 0;
        }
        if (j > 0) {
            j2 += this.f1769b.skip(j);
        }
        return j2;
    }
}
