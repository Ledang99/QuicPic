package com.p014a.p015a.p016a.p021e;

import java.io.OutputStream;
import java.util.LinkedList;

/* renamed from: com.a.a.a.e.e */
/* loaded from: classes.dex */
public final class C0511e extends OutputStream {

    /* renamed from: a */
    private static final byte[] f1902a = new byte[0];

    /* renamed from: b */
    private final LinkedList f1903b;

    /* renamed from: c */
    private int f1904c;

    /* renamed from: d */
    private byte[] f1905d;

    /* renamed from: e */
    private int f1906e;

    /* renamed from: a */
    private void m1881a() {
        this.f1904c += this.f1905d.length;
        int max = Math.max(this.f1904c >> 1, 1000);
        int i = max <= 262144 ? max : 262144;
        this.f1903b.add(this.f1905d);
        this.f1905d = new byte[i];
        this.f1906e = 0;
    }

    /* renamed from: a */
    public void m1882a(int i) {
        if (this.f1906e >= this.f1905d.length) {
            m1881a();
        }
        byte[] bArr = this.f1905d;
        int i2 = this.f1906e;
        this.f1906e = i2 + 1;
        bArr[i2] = (byte) i;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        m1882a(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        while (true) {
            int min = Math.min(this.f1905d.length - this.f1906e, i2);
            if (min > 0) {
                System.arraycopy(bArr, i, this.f1905d, this.f1906e, min);
                i += min;
                this.f1906e += min;
                i2 -= min;
            }
            if (i2 <= 0) {
                return;
            } else {
                m1881a();
            }
        }
    }
}
