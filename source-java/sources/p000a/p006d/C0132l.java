package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: a.d.l */
/* loaded from: classes.dex */
class C0132l extends AbstractC0073as {

    /* renamed from: a */
    static final String[] f615a = {"WrLehDO\u0000B16BBDz\u0000", "WrLehDz\u0000B16BBDz\u0000"};

    /* renamed from: b */
    String f616b;

    /* renamed from: c */
    String f617c = null;

    /* renamed from: d */
    int f618d;

    C0132l(String str, int i) {
        this.f616b = str;
        this.f618d = i;
        this.f667g = (byte) 37;
        this.f299S = (byte) 104;
        this.f300T = "\\PIPE\\LANMAN";
        this.f294N = 8;
        this.f295O = 16384;
        this.f296P = (byte) 0;
        this.f298R = 0;
        this.f297Q = 5000;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: a */
    void mo174a(int i, String str) {
        super.mo178e();
        this.f617c = str;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: c */
    int mo175c(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: d */
    int mo176d(byte[] bArr, int i) {
        char c = this.f299S == 104 ? (char) 0 : (char) 1;
        try {
            byte[] bytes = f615a[c].getBytes(HTTP.ASCII);
            m332a(this.f299S & 255, bArr, i);
            int i2 = i + 2;
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
            int length = bytes.length + i2;
            m332a(1L, bArr, length);
            int i3 = length + 2;
            m332a(this.f295O, bArr, i3);
            int i4 = i3 + 2;
            m333b(this.f618d, bArr, i4);
            int i5 = i4 + 4;
            int a2 = i5 + m344a(this.f616b.toUpperCase(), bArr, i5, false);
            return (c == 1 ? m344a(this.f617c.toUpperCase(), bArr, a2, false) + a2 : a2) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: e */
    int mo177e(byte[] bArr, int i) {
        return 0;
    }
}
