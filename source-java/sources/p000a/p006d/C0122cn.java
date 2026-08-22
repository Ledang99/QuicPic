package p000a.p006d;

import java.io.IOException;
import p000a.p007e.C0155e;

/* renamed from: a.d.cn */
/* loaded from: classes.dex */
class C0122cn extends C0088bg {

    /* renamed from: d */
    Object f584d;

    /* renamed from: e */
    private byte[] f585e;

    /* renamed from: f */
    private int f586f;

    /* renamed from: g */
    private int f587g;

    /* renamed from: h */
    private int f588h;

    /* renamed from: i */
    private boolean f589i;

    C0122cn(C0091bj c0091bj) {
        super(c0091bj, (c0091bj.f424q & (-65281)) | 32);
        this.f585e = new byte[4096];
        this.f589i = (c0091bj.f424q & 1536) != 1536;
        this.f584d = new Object();
    }

    @Override // p000a.p006d.C0088bg, java.io.InputStream
    public int available() {
        C0085bd c0085bd = this.f400a;
        C0155e c0155e = C0085bd.f375c;
        if (C0155e.f728a < 3) {
            return 0;
        }
        C0085bd c0085bd2 = this.f400a;
        C0085bd.f375c.println("Named Pipe available() does not apply to TRANSACT Named Pipes");
        return 0;
    }

    /* renamed from: b */
    int m300b(byte[] bArr, int i, int i2) {
        if (i2 > this.f585e.length - this.f588h) {
            int length = this.f585e.length * 2;
            if (i2 > length - this.f588h) {
                length = this.f588h + i2;
            }
            byte[] bArr2 = this.f585e;
            this.f585e = new byte[length];
            int length2 = bArr2.length - this.f586f;
            if (this.f588h > length2) {
                System.arraycopy(bArr2, this.f586f, this.f585e, 0, length2);
                System.arraycopy(bArr2, 0, this.f585e, length2, this.f588h - length2);
            } else {
                System.arraycopy(bArr2, this.f586f, this.f585e, 0, this.f588h);
            }
            this.f586f = 0;
            this.f587g = this.f588h;
        }
        int length3 = this.f585e.length - this.f587g;
        if (i2 > length3) {
            System.arraycopy(bArr, i, this.f585e, this.f587g, length3);
            System.arraycopy(bArr, i + length3, this.f585e, 0, i2 - length3);
        } else {
            System.arraycopy(bArr, i, this.f585e, this.f587g, i2);
        }
        this.f587g = (this.f587g + i2) % this.f585e.length;
        this.f588h += i2;
        return i2;
    }

    @Override // p000a.p006d.C0088bg, java.io.InputStream
    public int read() {
        int i;
        synchronized (this.f584d) {
            while (this.f588h == 0) {
                try {
                    this.f584d.wait();
                } catch (InterruptedException e) {
                    throw new IOException(e.getMessage());
                }
            }
            i = this.f585e[this.f586f] & 255;
            this.f586f = (this.f586f + 1) % this.f585e.length;
        }
        return i;
    }

    @Override // p000a.p006d.C0088bg, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // p000a.p006d.C0088bg, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (i2 > 0) {
            synchronized (this.f584d) {
                while (this.f588h == 0) {
                    try {
                        this.f584d.wait();
                    } catch (InterruptedException e) {
                        throw new IOException(e.getMessage());
                    }
                }
                int length = this.f585e.length - this.f586f;
                i3 = i2 > this.f588h ? this.f588h : i2;
                if (this.f588h <= length || i3 <= length) {
                    System.arraycopy(this.f585e, this.f586f, bArr, i, i3);
                } else {
                    System.arraycopy(this.f585e, this.f586f, bArr, i, length);
                    System.arraycopy(this.f585e, 0, bArr, i + length, i3 - length);
                }
                this.f588h -= i3;
                this.f586f = (this.f586f + i3) % this.f585e.length;
            }
        }
        return i3;
    }
}
