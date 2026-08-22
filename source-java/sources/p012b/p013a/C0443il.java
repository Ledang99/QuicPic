package p012b.p013a;

import android.content.Context;
import com.p045c.p046a.C1418r;

/* renamed from: b.a.il */
/* loaded from: classes.dex */
public final class C0443il implements InterfaceC0449ir {

    /* renamed from: c */
    private static C0443il f1586c;

    /* renamed from: a */
    private InterfaceC0449ir f1587a;

    /* renamed from: b */
    private Context f1588b;

    private C0443il(Context context) {
        this.f1588b = context.getApplicationContext();
        this.f1587a = new C0440ii(this.f1588b);
    }

    /* renamed from: a */
    public static synchronized C0443il m1479a(Context context) {
        C0443il c0443il;
        synchronized (C0443il.class) {
            if (f1586c == null && context != null) {
                f1586c = new C0443il(context);
            }
            c0443il = f1586c;
        }
        return c0443il;
    }

    @Override // p012b.p013a.InterfaceC0449ir
    /* renamed from: a */
    public void mo1465a(InterfaceC0450is interfaceC0450is) {
        C1418r.m4605b(new C0444im(this, interfaceC0450is));
    }

    @Override // p012b.p013a.InterfaceC0449ir
    /* renamed from: b */
    public void mo1466b() {
        C1418r.m4605b(new C0445in(this));
    }

    @Override // p012b.p013a.InterfaceC0449ir
    /* renamed from: b */
    public void mo1468b(InterfaceC0450is interfaceC0450is) {
        this.f1587a.mo1468b(interfaceC0450is);
    }
}
