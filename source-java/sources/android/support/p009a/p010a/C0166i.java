package android.support.p009a.p010a;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;

/* renamed from: android.support.a.a.i */
/* loaded from: classes.dex */
class C0166i implements InterfaceC0160c {

    /* renamed from: a */
    final Activity f751a;

    private C0166i(Activity activity) {
        this.f751a = activity;
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public Context mo406a() {
        ActionBar actionBar = this.f751a.getActionBar();
        return actionBar != null ? actionBar.getThemedContext() : this.f751a;
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public void mo407a(int i) {
        ActionBar actionBar = this.f751a.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeActionContentDescription(i);
        }
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public void mo408a(Drawable drawable, int i) {
        ActionBar actionBar = this.f751a.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawable);
            actionBar.setHomeActionContentDescription(i);
        }
    }
}
