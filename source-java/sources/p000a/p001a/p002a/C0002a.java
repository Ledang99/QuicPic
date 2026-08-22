package p000a.p001a.p002a;

import org.apache.http.HttpStatus;
import p000a.p001a.p003b.C0024d;
import p000a.p006d.C0093bl;
import p000a.p006d.InterfaceC0129i;

/* renamed from: a.a.a.a */
/* loaded from: classes.dex */
public class C0002a extends C0012k {
    public C0002a(String str) {
        super(str, HttpStatus.SC_OK, 65535, new C0009h(), new C0024d(0));
        this.f22l.f14a = this.f20c;
        this.f22l.f15b = new C0008g();
        this.f65f = 0;
        this.f66g = 3;
    }

    /* renamed from: c */
    public InterfaceC0129i[] m16c() {
        C0008g c0008g = (C0008g) this.f22l.f15b;
        C0093bl[] c0093blArr = new C0093bl[c0008g.f12a];
        for (int i = 0; i < c0008g.f12a; i++) {
            c0093blArr[i] = new C0093bl(c0008g.f13b[i].f17a, 0, null);
        }
        return c0093blArr;
    }
}
