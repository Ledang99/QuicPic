package p000a.p006d;

import java.io.IOException;
import java.io.OutputStream;
import p000a.p007e.C0155e;

/* renamed from: a.d.bh */
/* loaded from: classes.dex */
public class C0089bh extends OutputStream {

    /* renamed from: a */
    private C0085bd f409a;

    /* renamed from: b */
    private boolean f410b;

    /* renamed from: c */
    private boolean f411c;

    /* renamed from: d */
    private int f412d;

    /* renamed from: e */
    private int f413e;

    /* renamed from: f */
    private int f414f;

    /* renamed from: g */
    private int f415g;

    /* renamed from: h */
    private long f416h;

    /* renamed from: i */
    private byte[] f417i;

    /* renamed from: j */
    private C0079ay f418j;

    /* renamed from: k */
    private C0080az f419k;

    /* renamed from: l */
    private C0078ax f420l;

    /* renamed from: m */
    private C0082ba f421m;

    public C0089bh(C0085bd c0085bd) {
        this(c0085bd, false);
    }

    public C0089bh(C0085bd c0085bd, boolean z) {
        this(c0085bd, z, z ? 22 : 82);
    }

    C0089bh(C0085bd c0085bd, boolean z, int i) {
        this.f417i = new byte[1];
        this.f409a = c0085bd;
        this.f410b = z;
        this.f412d = i;
        this.f414f = (i >>> 16) & 65535;
        if (z) {
            try {
                this.f416h = c0085bd.m239v();
            } catch (C0143w e) {
                throw e;
            } catch (C0084bc e2) {
                this.f416h = 0L;
            }
        }
        if ((c0085bd instanceof C0091bj) && c0085bd.f380h.startsWith("\\pipe\\")) {
            c0085bd.f380h = c0085bd.f380h.substring(5);
            c0085bd.m208a(new C0120cl("\\pipe" + c0085bd.f380h), new C0121cm());
        }
        c0085bd.m213b(i, this.f414f | 2, 128, 0);
        this.f412d &= -81;
        this.f415g = c0085bd.f379g.f494f.f432e.f465v - 70;
        if ((c0085bd.f379g.f494f.f432e.f462s.f473d & 32768) == 32768) {
            this.f413e = Math.min(65465, 65465);
        } else {
            this.f413e = this.f415g;
        }
        this.f411c = c0085bd.f379g.f494f.f432e.m276a(16);
        if (this.f411c) {
            this.f418j = new C0079ay();
            this.f419k = new C0080az();
        } else {
            this.f420l = new C0078ax();
            this.f421m = new C0082ba();
        }
    }

    /* renamed from: a */
    public void m253a(byte[] bArr, int i, int i2, int i3) {
        if (i2 <= 0) {
            return;
        }
        if (this.f417i == null) {
            throw new IOException("Bad file descriptor");
        }
        m255b();
        C0085bd c0085bd = this.f409a;
        C0155e c0155e = C0085bd.f375c;
        if (C0155e.f728a >= 4) {
            C0085bd c0085bd2 = this.f409a;
            C0085bd.f375c.println("write: fid=" + this.f409a.f381i + ",off=" + i + ",len=" + i2);
        }
        do {
            int i4 = i;
            int i5 = this.f409a.m231n() == 1 ? this.f413e : this.f415g;
            if (i2 <= i5) {
                i5 = i2;
            }
            if (this.f411c) {
                this.f418j.m182a(this.f409a.f381i, this.f416h, i2 - i5, bArr, i4, i5);
                if ((i3 & 1) != 0) {
                    this.f418j.m182a(this.f409a.f381i, this.f416h, i2, bArr, i4, i5);
                    this.f418j.f355b = 8;
                } else {
                    this.f418j.f355b = 0;
                }
                this.f409a.m208a(this.f418j, this.f419k);
                this.f416h += this.f419k.f358b;
                i2 = (int) (i2 - this.f419k.f358b);
                i = (int) (i4 + this.f419k.f358b);
            } else {
                this.f420l.m181a(this.f409a.f381i, this.f416h, i2 - i5, bArr, i4, i5);
                this.f416h += this.f421m.f362a;
                i2 = (int) (i2 - this.f421m.f362a);
                i = (int) (i4 + this.f421m.f362a);
                this.f409a.m208a(this.f420l, this.f421m);
            }
        } while (i2 > 0);
    }

    /* renamed from: a */
    public boolean m254a() {
        return this.f409a.m225h();
    }

    /* renamed from: b */
    void m255b() {
        if (this.f409a.m225h()) {
            return;
        }
        this.f409a.m213b(this.f412d, this.f414f | 2, 128, 0);
        if (this.f410b) {
            this.f416h = this.f409a.m239v();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f409a.m226i();
        this.f417i = null;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f417i[0] = (byte) i;
        write(this.f417i, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (!this.f409a.m225h() && (this.f409a instanceof C0091bj)) {
            this.f409a.m208a(new C0120cl("\\pipe" + this.f409a.f380h), new C0121cm());
        }
        m253a(bArr, i, i2, 0);
    }
}
