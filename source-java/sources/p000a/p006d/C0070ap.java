package p000a.p006d;

/* renamed from: a.d.ap */
/* loaded from: classes.dex */
class C0070ap extends AbstractC0141u {

    /* renamed from: a */
    private int f267a;

    /* renamed from: b */
    private String f268b;

    /* renamed from: c */
    private String f269c;

    C0070ap(String str, String str2) {
        this.f667g = (byte) 7;
        this.f268b = str;
        this.f269c = str2;
        this.f267a = 22;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        m332a(this.f267a, bArr, i);
        return 2;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2;
        int i3 = i + 1;
        bArr[i] = 4;
        int a2 = i3 + m343a(this.f268b, bArr, i3);
        int i4 = a2 + 1;
        bArr[a2] = 4;
        if (this.f680t) {
            i2 = i4 + 1;
            bArr[i4] = 0;
        } else {
            i2 = i4;
        }
        return (i2 + m343a(this.f269c, bArr, i2)) - i;
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
