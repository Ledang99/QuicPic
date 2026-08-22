package p012b.p013a;

import java.io.ByteArrayOutputStream;

/* renamed from: b.a.gr */
/* loaded from: classes.dex */
public class C0395gr {

    /* renamed from: a */
    private final ByteArrayOutputStream f1479a;

    /* renamed from: b */
    private final C0429hy f1480b;

    /* renamed from: c */
    private AbstractC0418hn f1481c;

    public C0395gr() {
        this(new C0414hj());
    }

    public C0395gr(InterfaceC0420hp interfaceC0420hp) {
        this.f1479a = new ByteArrayOutputStream();
        this.f1480b = new C0429hy(this.f1479a);
        this.f1481c = interfaceC0420hp.mo1377a(this.f1480b);
    }

    /* renamed from: a */
    public byte[] m1326a(InterfaceC0388gk interfaceC0388gk) {
        this.f1479a.reset();
        interfaceC0388gk.mo650b(this.f1481c);
        return this.f1479a.toByteArray();
    }
}
