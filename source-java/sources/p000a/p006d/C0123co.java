package p000a.p006d;

/* renamed from: a.d.co */
/* loaded from: classes.dex */
class C0123co extends C0089bh {

    /* renamed from: a */
    private String f590a;

    /* renamed from: b */
    private C0091bj f591b;

    /* renamed from: c */
    private byte[] f592c;

    /* renamed from: d */
    private boolean f593d;

    C0123co(C0091bj c0091bj) {
        super(c0091bj, false, (c0091bj.f424q & (-65281)) | 32);
        this.f592c = new byte[1];
        this.f591b = c0091bj;
        this.f593d = (c0091bj.f424q & 1536) == 1536;
        this.f590a = c0091bj.f380h;
    }

    @Override // p000a.p006d.C0089bh, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f591b.m226i();
    }

    @Override // p000a.p006d.C0089bh, java.io.OutputStream
    public void write(int i) {
        this.f592c[0] = (byte) i;
        write(this.f592c, 0, 1);
    }

    @Override // p000a.p006d.C0089bh, java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // p000a.p006d.C0089bh, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if ((this.f591b.f424q & 256) == 256) {
            this.f591b.m208a(new C0120cl(this.f590a), new C0121cm());
            this.f591b.m208a(new C0114cf(this.f590a, bArr, i, i2), new C0115cg(this.f591b));
        } else if ((this.f591b.f424q & 512) == 512) {
            m255b();
            C0118cj c0118cj = new C0118cj(this.f591b.f381i, bArr, i, i2);
            if (this.f593d) {
                c0118cj.f295O = 1024;
            }
            this.f591b.m208a(c0118cj, new C0119ck(this.f591b));
        }
    }
}
