package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.CharEncoding;
import p000a.p007e.C0155e;

/* renamed from: a.d.bq */
/* loaded from: classes.dex */
class C0098bq extends AbstractC0074at {

    /* renamed from: S */
    boolean f503S;

    /* renamed from: T */
    int f504T;

    /* renamed from: U */
    int f505U;

    /* renamed from: V */
    int f506V;

    /* renamed from: a */
    int f507a;

    /* renamed from: ae */
    String f508ae;

    /* renamed from: af */
    int f509af;

    C0098bq() {
        this.f667g = (byte) 50;
        this.f318L = (byte) 1;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: a */
    int mo179a(byte[] bArr, int i, int i2) {
        int i3;
        if (this.f318L == 1) {
            this.f507a = m337f(bArr, i);
            i3 = i + 2;
        } else {
            i3 = i;
        }
        this.f323Q = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f503S = (bArr[i4] & 1) == 1;
        int i5 = i4 + 2;
        this.f504T = m337f(bArr, i5);
        int i6 = i5 + 2;
        this.f505U = m337f(bArr, i6);
        return (i6 + 2) - i;
    }

    @Override // p000a.p006d.AbstractC0074at
    /* renamed from: b */
    int mo180b(byte[] bArr, int i, int i2) {
        this.f506V = this.f505U + i;
        this.f324R = new C0099br[this.f323Q];
        for (int i3 = 0; i3 < this.f323Q; i3++) {
            InterfaceC0129i[] interfaceC0129iArr = this.f324R;
            C0099br c0099br = new C0099br(this);
            interfaceC0129iArr[i3] = c0099br;
            c0099br.f510a = m338g(bArr, i);
            c0099br.f511b = m338g(bArr, i + 4);
            c0099br.f512c = m340i(bArr, i + 8);
            c0099br.f513d = m340i(bArr, i + 24);
            c0099br.f514e = m339h(bArr, i + 40);
            c0099br.f515f = m338g(bArr, i + 56);
            c0099br.f516g = m338g(bArr, i + 60);
            c0099br.f517h = m290d(bArr, i + 94, c0099br.f516g);
            if (this.f506V >= i && (c0099br.f510a == 0 || this.f506V < c0099br.f510a + i)) {
                this.f508ae = c0099br.f517h;
                this.f509af = c0099br.f511b;
            }
            i += c0099br.f510a;
        }
        return this.f317K;
    }

    /* renamed from: d */
    String m290d(byte[] bArr, int i, int i2) {
        try {
            if (this.f680t) {
                return new String(bArr, i, i2, CharEncoding.UTF_16LE);
            }
            if (i2 > 0 && bArr[(i + i2) - 1] == 0) {
                i2--;
            }
            return new String(bArr, i, i2, AbstractC0141u.f367aa);
        } catch (UnsupportedEncodingException e) {
            C0155e c0155e = f662e;
            if (C0155e.f728a > 1) {
                e.printStackTrace(f662e);
            }
            return null;
        }
    }
}
