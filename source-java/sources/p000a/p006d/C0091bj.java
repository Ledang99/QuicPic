package p000a.p006d;

import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: a.d.bj */
/* loaded from: classes.dex */
public class C0091bj extends C0085bd {

    /* renamed from: o */
    InputStream f422o;

    /* renamed from: p */
    OutputStream f423p;

    /* renamed from: q */
    int f424q;

    public C0091bj(String str, int i, C0140t c0140t) {
        super(str, c0140t);
        this.f424q = i;
        this.f382j = 16;
    }

    /* renamed from: A */
    public InputStream m257A() {
        if (this.f422o == null) {
            if ((this.f424q & 256) == 256 || (this.f424q & 512) == 512) {
                this.f422o = new C0122cn(this);
            } else {
                this.f422o = new C0088bg(this, (this.f424q & (-65281)) | 32);
            }
        }
        return this.f422o;
    }

    /* renamed from: B */
    public OutputStream m258B() {
        if (this.f423p == null) {
            if ((this.f424q & 256) == 256 || (this.f424q & 512) == 512) {
                this.f423p = new C0123co(this);
            } else {
                this.f423p = new C0089bh(this, false, (this.f424q & (-65281)) | 32);
            }
        }
        return this.f423p;
    }
}
