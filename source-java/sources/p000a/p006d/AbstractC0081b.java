package p000a.p006d;

/* renamed from: a.d.b */
/* loaded from: classes.dex */
abstract class AbstractC0081b extends AbstractC0141u {

    /* renamed from: a */
    AbstractC0141u f359a;

    /* renamed from: b */
    private byte f360b;

    /* renamed from: c */
    private int f361c;

    AbstractC0081b() {
        this.f360b = (byte) -1;
        this.f361c = 0;
        this.f359a = null;
    }

    AbstractC0081b(AbstractC0141u abstractC0141u) {
        this.f360b = (byte) -1;
        this.f361c = 0;
        this.f359a = null;
        if (abstractC0141u != null) {
            this.f359a = abstractC0141u;
            this.f360b = abstractC0141u.f667g;
        }
    }

    /* renamed from: a */
    int mo167a(byte b2) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: a */
    int mo183a(byte[] bArr, int i) {
        this.f669i = i;
        int l = m350l(bArr, i) + i;
        this.f670j = (l + m185c(bArr, l)) - i;
        if (this.f665B != null) {
            this.f665B.m353a(bArr, this.f669i, this.f670j, this, this.f666C);
        }
        return this.f670j;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: b */
    int mo184b(byte[] bArr, int i) {
        this.f669i = i;
        int m = m351m(bArr, i) + i;
        this.f670j = (m + m186d(bArr, m)) - i;
        return this.f670j;
    }

    /* renamed from: c */
    int m185c(byte[] bArr, int i) {
        int i2;
        this.f678r = mo163n(bArr, i + 3 + 2);
        this.f678r += 4;
        int i3 = this.f678r + 1 + i;
        this.f678r /= 2;
        bArr[i] = (byte) (this.f678r & 255);
        this.f679s = mo164o(bArr, i3 + 2);
        int i4 = i3 + 1;
        bArr[i3] = (byte) (this.f679s & 255);
        bArr[i4] = (byte) ((this.f679s >> 8) & 255);
        int i5 = this.f679s + i4 + 1;
        if (this.f359a == null || this.f671k >= mo167a(this.f359a.f667g)) {
            this.f360b = (byte) -1;
            this.f359a = null;
            bArr[i + 1] = -1;
            bArr[i + 2] = 0;
            bArr[i + 3] = -34;
            bArr[i + 3 + 1] = -34;
            return i5 - i;
        }
        this.f359a.f671k = this.f671k + 1;
        bArr[i + 1] = this.f360b;
        bArr[i + 2] = 0;
        this.f361c = i5 - this.f669i;
        m332a(this.f361c, bArr, i + 3);
        this.f359a.f680t = this.f680t;
        if (this.f359a instanceof AbstractC0081b) {
            this.f359a.f676p = this.f676p;
            i2 = ((AbstractC0081b) this.f359a).m185c(bArr, i5) + i5;
        } else {
            this.f359a.f678r = this.f359a.mo163n(bArr, i5);
            int i6 = this.f359a.f678r + 1 + i5;
            this.f359a.f678r /= 2;
            bArr[i5] = (byte) (this.f359a.f678r & 255);
            this.f359a.f679s = this.f359a.mo164o(bArr, i6 + 2);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (this.f359a.f679s & 255);
            bArr[i7] = (byte) ((this.f359a.f679s >> 8) & 255);
            i2 = i7 + 1 + this.f359a.f679s;
        }
        return i2 - i;
    }

    /* renamed from: d */
    int m186d(byte[] bArr, int i) {
        int i2 = i + 1;
        this.f678r = bArr[i];
        if (this.f678r != 0) {
            this.f360b = bArr[i2];
            this.f361c = m337f(bArr, i2 + 2);
            if (this.f361c == 0) {
                this.f360b = (byte) -1;
            }
            if (this.f678r > 2) {
                mo165p(bArr, i2 + 4);
                if (this.f667g == -94 && ((C0060af) this).f229N) {
                    this.f678r += 8;
                }
            }
            i2 = i + 1 + (this.f678r * 2);
        }
        this.f679s = m337f(bArr, i2);
        int i3 = i2 + 2;
        if (this.f679s != 0) {
            mo166q(bArr, i3);
            i3 += this.f679s;
        }
        if (this.f672l != 0 || this.f360b == -1) {
            this.f360b = (byte) -1;
            this.f359a = null;
        } else {
            if (this.f359a == null) {
                this.f360b = (byte) -1;
                throw new RuntimeException("no andx command supplied with response");
            }
            int i4 = this.f361c + this.f669i;
            this.f359a.f669i = this.f669i;
            this.f359a.f667g = this.f360b;
            this.f359a.f672l = this.f672l;
            this.f359a.f668h = this.f668h;
            this.f359a.f673m = this.f673m;
            this.f359a.f674n = this.f674n;
            this.f359a.f675o = this.f675o;
            this.f359a.f676p = this.f676p;
            this.f359a.f677q = this.f677q;
            this.f359a.f680t = this.f680t;
            if (this.f359a instanceof AbstractC0081b) {
                i3 = ((AbstractC0081b) this.f359a).m186d(bArr, i4) + i4;
            } else {
                int i5 = i4 + 1;
                bArr[i4] = (byte) (this.f359a.f678r & 255);
                if (this.f359a.f678r != 0 && this.f359a.f678r > 2) {
                    i5 += this.f359a.mo165p(bArr, i5);
                }
                this.f359a.f679s = m337f(bArr, i5);
                i3 = i5 + 2;
                if (this.f359a.f679s != 0) {
                    this.f359a.mo166q(bArr, i3);
                    i3 += this.f359a.f679s;
                }
            }
            this.f359a.f681u = true;
        }
        return i3 - i;
    }
}
