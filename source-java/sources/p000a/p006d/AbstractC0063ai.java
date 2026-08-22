package p000a.p006d;

/* renamed from: a.d.ai */
/* loaded from: classes.dex */
abstract class AbstractC0063ai extends AbstractC0073as {

    /* renamed from: c */
    int f235c;

    @Override // p000a.p006d.AbstractC0073as, p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        int i2;
        int c;
        if (this.f667g != -95) {
            i2 = i + 1;
            bArr[i] = this.f296P;
        } else {
            i2 = i + 1;
            bArr[i] = 0;
        }
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        m333b(this.f292L, bArr, i4);
        int i5 = i4 + 4;
        m333b(this.f293M, bArr, i5);
        int i6 = i5 + 4;
        if (this.f667g != -95) {
            m333b(this.f294N, bArr, i6);
            int i7 = i6 + 4;
            m333b(this.f295O, bArr, i7);
            i6 = i7 + 4;
        }
        m333b(this.f286F, bArr, i6);
        int i8 = i6 + 4;
        m333b(this.f286F == 0 ? 0 : this.f287G, bArr, i8);
        int i9 = i8 + 4;
        if (this.f667g == -95) {
            m333b(this.f288H, bArr, i9);
            i9 += 4;
        }
        m333b(this.f289I, bArr, i9);
        int i10 = i9 + 4;
        m333b(this.f289I == 0 ? 0 : this.f290J, bArr, i10);
        int i11 = i10 + 4;
        if (this.f667g == -95) {
            m333b(this.f291K, bArr, i11);
            int i12 = i11 + 4;
            c = i12 + 1;
            bArr[i12] = 0;
        } else {
            int i13 = i11 + 1;
            bArr[i11] = (byte) this.f298R;
            m332a(this.f235c, bArr, i13);
            int i14 = i13 + 2;
            c = i14 + mo175c(bArr, i14);
        }
        return c - i;
    }
}
