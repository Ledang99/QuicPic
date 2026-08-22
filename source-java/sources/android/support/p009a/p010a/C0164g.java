package android.support.p009a.p010a;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

/* renamed from: android.support.a.a.g */
/* loaded from: classes.dex */
class C0164g implements InterfaceC0160c {

    /* renamed from: a */
    final Activity f747a;

    /* renamed from: b */
    private View f748b;

    C0164g(Activity activity) {
        this.f747a = activity;
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public Context mo406a() {
        return this.f747a;
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public void mo407a(int i) {
    }

    @Override // android.support.p009a.p010a.InterfaceC0160c
    /* renamed from: a */
    public void mo408a(Drawable drawable, int i) {
        if (this.f748b == null) {
            this.f748b = this.f747a.findViewById(R.id.home);
        }
        if (this.f748b instanceof ImageView) {
            ((ImageView) this.f748b).setImageDrawable(drawable);
        }
    }
}
