package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: a.d.ag */
/* loaded from: classes.dex */
class C0061ag extends AbstractC0141u {
    C0061ag() {
        this.f667g = (byte) 114;
        this.f673m = 51203;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        try {
            byte[] bytes = "\u0002NT LM 0.12\u0000".getBytes(HTTP.ASCII);
            System.arraycopy(bytes, 0, bArr, i, bytes.length);
            return bytes.length;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
