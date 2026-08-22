package p000a.p001a.p002a;

import p000a.p006d.InterfaceC0129i;

/* renamed from: a.a.a.b */
/* loaded from: classes.dex */
public class C0003b extends C0015n {
    public C0003b(String str) {
        super("\\\\" + str, 1, new C0019r(), -1, 0, 0);
        this.f65f = 0;
        this.f66g = 3;
    }

    /* renamed from: c */
    public InterfaceC0129i[] m17c() {
        C0019r c0019r = (C0019r) this.f27d;
        C0004c[] c0004cArr = new C0004c[c0019r.f37a];
        for (int i = 0; i < c0019r.f37a; i++) {
            c0004cArr[i] = new C0004c(this, c0019r.f38b[i]);
        }
        return c0004cArr;
    }
}
