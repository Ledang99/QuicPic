package p000a.p001a;

import java.io.IOException;
import p000a.p006d.C0088bg;
import p000a.p006d.C0089bh;
import p000a.p006d.C0091bj;
import p000a.p006d.C0140t;
import p000a.p007e.C0152b;

/* renamed from: a.a.g */
/* loaded from: classes.dex */
public class C0030g extends AbstractC0028e {

    /* renamed from: g */
    C0091bj f71g;

    /* renamed from: h */
    C0088bg f72h = null;

    /* renamed from: i */
    C0089bh f73i = null;

    /* renamed from: j */
    boolean f74j = true;

    public C0030g(String str, C0140t c0140t) {
        this.f60a = AbstractC0028e.m45a(str);
        String str2 = "smb://" + this.f60a.f41b + "/IPC$/" + this.f60a.f42c.substring(6);
        String str3 = (String) this.f60a.m24a("server");
        String str4 = str3 != null ? "&server=" + str3 : "";
        str4 = str3 != null ? str4 + "&address=" + ((String) this.f60a.m24a("address")) : str4;
        this.f71g = new C0091bj(str4.length() > 0 ? str2 + "?" + str4.substring(1) : str2, 27198979, c0140t);
    }

    @Override // p000a.p001a.AbstractC0028e
    /* renamed from: a */
    protected void mo49a(byte[] bArr, int i, int i2, boolean z) {
        if (this.f73i != null && !this.f73i.m254a()) {
            throw new IOException("DCERPC pipe is no longer open");
        }
        if (this.f72h == null) {
            this.f72h = (C0088bg) this.f71g.m257A();
        }
        if (this.f73i == null) {
            this.f73i = (C0089bh) this.f71g.m258B();
        }
        if (z) {
            this.f73i.m253a(bArr, i, i2, 1);
        } else {
            this.f73i.write(bArr, i, i2);
        }
    }

    @Override // p000a.p001a.AbstractC0028e
    /* renamed from: a */
    protected void mo50a(byte[] bArr, boolean z) {
        if (bArr.length < this.f62c) {
            throw new IllegalArgumentException("buffer too small");
        }
        int m251a = (!this.f74j || z) ? this.f72h.m251a(bArr, 0, bArr.length) : this.f72h.read(bArr, 0, 1024);
        if (bArr[0] != 5 && bArr[1] != 0) {
            throw new IOException("Unexpected DCERPC PDU header");
        }
        this.f74j = ((bArr[3] & 255) & 2) == 2;
        short m376b = C0152b.m376b(bArr, 8);
        if (m376b > this.f62c) {
            throw new IOException("Unexpected fragment length: " + ((int) m376b));
        }
        while (m251a < m376b) {
            m251a += this.f72h.m251a(bArr, m251a, m376b - m251a);
        }
    }

    @Override // p000a.p001a.AbstractC0028e
    /* renamed from: b */
    public void mo51b() {
        this.f63d = 0;
        if (this.f73i != null) {
            this.f73i.close();
        }
    }
}
