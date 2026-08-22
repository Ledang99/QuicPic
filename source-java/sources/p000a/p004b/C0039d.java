package p000a.p004b;

/* renamed from: a.b.d */
/* loaded from: classes.dex */
class C0039d extends AbstractC0041f {
    C0039d() {
        this.f134r = new C0037b();
    }

    @Override // p000a.p004b.AbstractC0041f
    /* renamed from: a */
    int mo68a(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p004b.AbstractC0041f
    /* renamed from: b */
    int mo69b(byte[] bArr, int i) {
        return m87m(bArr, i);
    }

    @Override // p000a.p004b.AbstractC0041f
    /* renamed from: c */
    int mo70c(byte[] bArr, int i) {
        if (this.f121e != 0 || this.f120d != 0) {
            return 0;
        }
        boolean z = (bArr[i] & 128) == 128;
        int i2 = (bArr[i] & 96) >> 5;
        int e = m79e(bArr, i + 2);
        if (e != 0) {
            this.f118b[this.f117a] = new C0042g(this.f134r, e, z, i2);
        } else {
            this.f118b[this.f117a] = null;
        }
        return 6;
    }
}
