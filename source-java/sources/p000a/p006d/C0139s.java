package p000a.p006d;

import p000a.p005c.C0051b;
import p000a.p005c.C0052c;
import p000a.p005c.C0053d;
import p000a.p007e.C0154d;
import p000a.p007e.C0155e;

/* renamed from: a.d.s */
/* loaded from: classes.dex */
public class C0139s {

    /* renamed from: a */
    C0140t f635a;

    /* renamed from: c */
    String f637c;

    /* renamed from: i */
    C0155e f643i;

    /* renamed from: d */
    boolean f638d = false;

    /* renamed from: e */
    byte[] f639e = null;

    /* renamed from: f */
    byte[] f640f = null;

    /* renamed from: g */
    String f641g = null;

    /* renamed from: h */
    int f642h = 1;

    /* renamed from: b */
    int f636b = ((this.f636b | 4) | 524288) | 536870912;

    /* renamed from: b */
    int f636b = ((this.f636b | 4) | 524288) | 536870912;

    public C0139s(C0140t c0140t, boolean z) {
        this.f635a = c0140t;
        if (z) {
            this.f636b |= 1073774608;
        }
        this.f637c = C0051b.m124h();
        this.f643i = C0155e.m381a();
    }

    /* renamed from: a */
    public boolean m310a() {
        return this.f638d;
    }

    /* renamed from: a */
    public byte[] m311a(byte[] bArr, int i, int i2) {
        switch (this.f642h) {
            case 1:
                C0051b c0051b = new C0051b(this.f636b, this.f635a.m327b(), this.f637c);
                byte[] m129e = c0051b.m129e();
                C0155e c0155e = this.f643i;
                if (C0155e.f728a >= 4) {
                    this.f643i.println(c0051b);
                    C0155e c0155e2 = this.f643i;
                    if (C0155e.f728a >= 6) {
                        C0154d.m380a(this.f643i, m129e, 0, m129e.length);
                    }
                }
                this.f642h++;
                return m129e;
            case 2:
                try {
                    C0052c c0052c = new C0052c(bArr);
                    C0155e c0155e3 = this.f643i;
                    if (C0155e.f728a >= 4) {
                        this.f643i.println(c0052c);
                        C0155e c0155e4 = this.f643i;
                        if (C0155e.f728a >= 6) {
                            C0154d.m380a(this.f643i, bArr, 0, bArr.length);
                        }
                    }
                    this.f639e = c0052c.m137c();
                    this.f636b &= c0052c.m120a();
                    C0053d c0053d = new C0053d(c0052c, this.f635a.m331d(), this.f635a.m327b(), this.f635a.m329c(), this.f637c, this.f636b);
                    byte[] m161j = c0053d.m161j();
                    C0155e c0155e5 = this.f643i;
                    if (C0155e.f728a >= 4) {
                        this.f643i.println(c0053d);
                        C0155e c0155e6 = this.f643i;
                        if (C0155e.f728a >= 6) {
                            C0154d.m380a(this.f643i, m161j, 0, m161j.length);
                        }
                    }
                    if ((this.f636b & 16) != 0) {
                        this.f640f = c0053d.m159h();
                    }
                    this.f638d = true;
                    this.f642h++;
                    return m161j;
                } catch (Exception e) {
                    throw new C0084bc(e.getMessage(), e);
                }
            default:
                throw new C0084bc("Invalid state");
        }
    }

    /* renamed from: b */
    public byte[] m312b() {
        return this.f640f;
    }

    /* renamed from: c */
    public String m313c() {
        return this.f641g;
    }
}
