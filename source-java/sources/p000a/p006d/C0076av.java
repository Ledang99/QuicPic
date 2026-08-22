package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.http.protocol.HTTP;

/* renamed from: a.d.av */
/* loaded from: classes.dex */
class C0076av extends AbstractC0081b {

    /* renamed from: D */
    String f339D;

    /* renamed from: b */
    boolean f340b;

    /* renamed from: c */
    boolean f341c;

    /* renamed from: d */
    String f342d;

    C0076av(AbstractC0141u abstractC0141u) {
        super(abstractC0141u);
        this.f339D = "";
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        this.f340b = (bArr[i] & 1) == 1;
        this.f341c = (bArr[i] & 2) == 2;
        return 2;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        int c = m347c(bArr, i, 32);
        try {
            this.f342d = new String(bArr, i, c, HTTP.ASCII);
            return ((c + 1) + i) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }
}
