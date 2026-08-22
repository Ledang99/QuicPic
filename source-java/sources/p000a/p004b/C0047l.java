package p000a.p004b;

/* renamed from: a.b.l */
/* loaded from: classes.dex */
public class C0047l extends AbstractC0048m {

    /* renamed from: c */
    private C0037b f172c;

    /* renamed from: d */
    private C0037b f173d;

    C0047l() {
        this.f172c = new C0037b();
        this.f173d = new C0037b();
    }

    public C0047l(C0037b c0037b, C0037b c0037b2) {
        this.f174a = 129;
        this.f172c = c0037b;
        this.f173d = c0037b2;
    }

    @Override // p000a.p004b.AbstractC0048m
    /* renamed from: a */
    int mo109a(byte[] bArr, int i) {
        int m64a = this.f172c.m64a(bArr, i) + i;
        return (m64a + this.f173d.m64a(bArr, m64a)) - i;
    }
}
