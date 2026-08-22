package p000a.p006d;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import p000a.p007e.C0155e;
import p000a.p007e.p008a.C0151d;

/* renamed from: a.d.bg */
/* loaded from: classes.dex */
public class C0088bg extends InputStream {

    /* renamed from: a */
    C0085bd f400a;

    /* renamed from: b */
    C0069ao f401b;

    /* renamed from: c */
    C0068an f402c;

    /* renamed from: d */
    private long f403d;

    /* renamed from: e */
    private int f404e;

    /* renamed from: f */
    private int f405f;

    /* renamed from: g */
    private int f406g;

    /* renamed from: h */
    private int f407h;

    /* renamed from: i */
    private byte[] f408i;

    public C0088bg(C0085bd c0085bd) {
        this(c0085bd, 1);
    }

    C0088bg(C0085bd c0085bd, int i) {
        this.f408i = new byte[1];
        this.f401b = new C0069ao();
        this.f402c = new C0068an();
        this.f400a = c0085bd;
        this.f406g = i & 65535;
        this.f407h = (i >>> 16) & 65535;
        if (c0085bd.f382j != 16) {
            c0085bd.m213b(i, this.f407h, 128, 0);
            this.f406g &= -81;
        } else {
            c0085bd.m222e();
        }
        this.f404e = Math.min(c0085bd.f379g.f494f.f432e.f466w - 70, c0085bd.f379g.f494f.f432e.f462s.f471b - 70);
        if ((c0085bd.f379g.f494f.f432e.f462s.f473d & 16384) == 16384) {
            this.f405f = Math.min(65465, 65465);
        } else {
            this.f405f = this.f404e;
        }
    }

    public C0088bg(String str) {
        this(new C0085bd(str));
    }

    /* renamed from: a */
    public int m251a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (i2 <= 0) {
            return 0;
        }
        long j = this.f403d;
        if (this.f408i == null) {
            throw new IOException("Bad file descriptor");
        }
        this.f400a.m213b(this.f406g, this.f407h, 128, 0);
        C0085bd c0085bd = this.f400a;
        C0155e c0155e = C0085bd.f375c;
        if (C0155e.f728a >= 4) {
            C0085bd c0085bd2 = this.f400a;
            C0085bd.f375c.println("read: fid=" + this.f400a.f381i + ",off=" + i + ",len=" + i2);
        }
        this.f401b.m173e(bArr, i);
        if (this.f400a.f382j == 16) {
            this.f401b.f683w = 0L;
        }
        do {
            i3 = this.f400a.m231n() == 1 ? this.f405f : this.f404e;
            if (i2 <= i3) {
                i3 = i2;
            }
            C0085bd c0085bd3 = this.f400a;
            C0155e c0155e2 = C0085bd.f375c;
            if (C0155e.f728a >= 4) {
                C0085bd c0085bd4 = this.f400a;
                C0085bd.f375c.println("read: len=" + i2 + ",r=" + i3 + ",fp=" + this.f403d);
            }
            try {
                this.f402c.m172a(this.f400a.f381i, this.f403d, i3);
                if (this.f400a.f382j == 16) {
                    C0068an c0068an = this.f402c;
                    C0068an c0068an2 = this.f402c;
                    this.f402c.f261d = 1024;
                    c0068an2.f259b = 1024;
                    c0068an.f260c = 1024;
                }
                this.f400a.m208a(this.f402c, this.f401b);
                i4 = this.f401b.f262D;
                if (i4 > 0) {
                    this.f403d += i4;
                    i2 -= i4;
                    this.f401b.f265c += i4;
                    if (i2 <= 0) {
                        break;
                    }
                } else {
                    return (int) (this.f403d - j > 0 ? this.f403d - j : -1L);
                }
            } catch (C0084bc e) {
                if (this.f400a.f382j == 16 && e.m190a() == -1073741493) {
                    return -1;
                }
                throw m252a(e);
            }
        } while (i4 == i3);
        return (int) (this.f403d - j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [a.e.a.d] */
    /* renamed from: a */
    protected IOException m252a(C0084bc c0084bc) {
        Throwable m191b = c0084bc.m191b();
        if (m191b instanceof C0151d) {
            ?? r0 = (C0151d) m191b;
            c0084bc = r0;
            m191b = ((C0151d) r0).m370a();
        }
        if (!(m191b instanceof InterruptedException)) {
            return c0084bc;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(m191b.getMessage());
        interruptedIOException.initCause(m191b);
        return interruptedIOException;
    }

    @Override // java.io.InputStream
    public int available() {
        int i;
        if (this.f400a.f382j != 16) {
            return (int) (this.f400a.m239v() - this.f403d);
        }
        try {
            C0091bj c0091bj = (C0091bj) this.f400a;
            this.f400a.m213b(32, c0091bj.f424q & 16711680, 128, 0);
            C0116ch c0116ch = new C0116ch(this.f400a.f380h, this.f400a.f381i);
            C0117ci c0117ci = new C0117ci(c0091bj);
            c0091bj.m208a(c0116ch, c0117ci);
            if (c0117ci.f578a == 1 || c0117ci.f578a == 4) {
                this.f400a.f383k = false;
                i = 0;
            } else {
                i = c0117ci.f575S;
            }
            return i;
        } catch (C0084bc e) {
            throw m252a(e);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f400a.m226i();
            this.f408i = null;
        } catch (C0084bc e) {
            throw m252a(e);
        }
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.f408i, 0, 1) == -1) {
            return -1;
        }
        return this.f408i[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return m251a(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        this.f403d += j;
        return j;
    }
}
