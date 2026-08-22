package android.support.p009a.p010a;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;

/* renamed from: android.support.a.a.h */
/* loaded from: classes.dex */
class C0165h implements InterfaceC0160c {

    /* renamed from: a */
    final Activity f749a;

    /* renamed from: b */
    C0169l f750b;

    private C0165h(Activity activity) {
        this.f749a = activity;
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public Context mo406a() {
        return this.f749a;
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public void mo407a(int i) {
        this.f750b = C0168k.m412a(this.f750b, this.f749a, i);
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public void mo408a(Drawable drawable, int i) {
        this.f750b = C0168k.m413a(this.f750b, this.f749a, drawable, i);
    }
}
