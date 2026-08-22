package p012b.p013a;

/* renamed from: b.a.go */
/* loaded from: classes.dex */
public class C0392go {

    /* renamed from: a */
    private final AbstractC0418hn f1477a;

    /* renamed from: b */
    private final C0430hz f1478b;

    public C0392go() {
        this(new C0414hj());
    }

    public C0392go(InterfaceC0420hp interfaceC0420hp) {
        this.f1478b = new C0430hz();
        this.f1477a = interfaceC0420hp.mo1377a(this.f1478b);
    }

    /* renamed from: a */
    public void m1325a(InterfaceC0388gk interfaceC0388gk, byte[] bArr) {
        try {
            this.f1478b.m1425a(bArr);
            interfaceC0388gk.mo646a(this.f1477a);
        } finally {
            this.f1478b.m1423a();
            this.f1477a.mo1413x();
        }
    }
}
