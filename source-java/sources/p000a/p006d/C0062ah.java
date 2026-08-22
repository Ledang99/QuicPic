package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.CharEncoding;
import p000a.p007e.C0155e;

/* renamed from: a.d.ah */
/* loaded from: classes.dex */
class C0062ah extends AbstractC0141u {

    /* renamed from: a */
    int f233a;

    /* renamed from: b */
    C0095bn f234b;

    C0062ah(C0095bn c0095bn) {
        this.f234b = c0095bn;
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
        this.f233a = m337f(bArr, i);
        int i2 = i + 2;
        if (this.f233a > 10) {
            return i2 - i;
        }
        int i3 = i2 + 1;
        this.f234b.f475f = bArr[i2] & 255;
        this.f234b.f476g = this.f234b.f475f & 1;
        this.f234b.f477h = (this.f234b.f475f & 2) == 2;
        this.f234b.f478i = (this.f234b.f475f & 4) == 4;
        this.f234b.f479j = (this.f234b.f475f & 8) == 8;
        this.f234b.f470a = m337f(bArr, i3);
        int i4 = i3 + 2;
        this.f234b.f480k = m337f(bArr, i4);
        int i5 = i4 + 2;
        this.f234b.f471b = m338g(bArr, i5);
        int i6 = i5 + 4;
        this.f234b.f481l = m338g(bArr, i6);
        int i7 = i6 + 4;
        this.f234b.f472c = m338g(bArr, i7);
        int i8 = i7 + 4;
        this.f234b.f473d = m338g(bArr, i8);
        int i9 = i8 + 4;
        this.f234b.f482m = m340i(bArr, i9);
        int i10 = i9 + 8;
        this.f234b.f483n = m337f(bArr, i10);
        int i11 = i10 + 2;
        int i12 = i11 + 1;
        this.f234b.f484o = bArr[i11] & 255;
        return i12 - i;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        int i2;
        int i3;
        UnsupportedEncodingException e;
        int i4 = 0;
        if ((this.f234b.f473d & Integer.MIN_VALUE) == 0) {
            this.f234b.f485p = new byte[this.f234b.f484o];
            System.arraycopy(bArr, i, this.f234b.f485p, 0, this.f234b.f484o);
            int i5 = i + this.f234b.f484o;
            if (this.f679s > this.f234b.f484o) {
                try {
                    i3 = this.f673m & 32768;
                } catch (UnsupportedEncodingException e2) {
                    i3 = 0;
                    e = e2;
                }
                try {
                    if (i3 != 32768) {
                        do {
                            i3 = i4;
                            if (bArr[i5 + i3] != 0) {
                                i4 = i3 + 1;
                            } else {
                                this.f234b.f474e = new String(bArr, i5, i3, AbstractC0141u.f367aa);
                            }
                        } while (i4 <= 256);
                        throw new RuntimeException("zero termination not found");
                    }
                    do {
                        i3 = i4;
                        if (bArr[i5 + i3] == 0 && bArr[i5 + i3 + 1] == 0) {
                            this.f234b.f474e = new String(bArr, i5, i3, CharEncoding.UTF_16LE);
                        } else {
                            i4 = i3 + 2;
                        }
                    } while (i4 <= 256);
                    throw new RuntimeException("zero termination not found");
                } catch (UnsupportedEncodingException e3) {
                    e = e3;
                    C0155e c0155e = f662e;
                    if (C0155e.f728a > 1) {
                        e.printStackTrace(f662e);
                    }
                    i2 = i3 + i5;
                    return i2 - i;
                }
                i2 = i3 + i5;
            } else {
                this.f234b.f474e = new String();
                i2 = i5;
            }
        } else {
            this.f234b.f486q = new byte[16];
            System.arraycopy(bArr, i, this.f234b.f486q, 0, 16);
            this.f234b.f474e = new String();
            i2 = i;
        }
        return i2 - i;
    }
}
