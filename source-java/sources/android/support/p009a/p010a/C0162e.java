package android.support.p009a.p010a;

import android.app.Activity;
import android.content.Context;

/* renamed from: android.support.a.a.e */
/* loaded from: classes.dex */
class C0162e extends C0170m implements InterfaceC0163f {

    /* renamed from: a */
    private final Activity f746a;

    public C0162e(Activity activity, Context context) {
        super(context);
        this.f746a = activity;
    }

    @Override // android.support.p009a.p010a.InterfaceC0163f
    /* renamed from: a */
    public void mo410a(float f) {
        if (f == 1.0f) {
            m417a(true);
        } else if (f == 0.0f) {
            m417a(false);
        }
        super.m419b(f);
    }

    @Override // android.support.p009a.p010a.C0170m
    /* renamed from: a */
    protected boolean mo411a() {
        return C0158a.m391b(this.f746a);
    }
}
