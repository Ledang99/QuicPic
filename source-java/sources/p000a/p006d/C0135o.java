package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: a.d.o */
/* loaded from: classes.dex */
class C0135o extends AbstractC0073as {
    C0135o() {
        this.f667g = (byte) 37;
        this.f299S = (byte) 0;
        this.f300T = new String("\\PIPE\\LANMAN");
        this.f294N = 8;
        this.f296P = (byte) 0;
        this.f298R = 0;
        this.f297Q = 5000;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: c */
    int mo175c(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0073as
    /* renamed from: d */
    int mo176d(byte[] bArr, int i) {
        try {
            byte[] bytes = "WrLeh\u0000B13BWz\u0000".getBytes(HTTP.ASCII);
            m332a(0L, bArr, i);
            int i2 = i + 2;
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
            int length = bytes.length + i2;
            m332a(1L, bArr, length);
            int i3 = length + 2;
            m332a(this.f295O, bArr, i3);
            return (i3 + 2) - i;
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
