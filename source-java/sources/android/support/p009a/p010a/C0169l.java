package android.support.p009a.p010a;

import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.reflect.Method;

/* renamed from: android.support.a.a.l */
/* loaded from: classes.dex */
class C0169l {

    /* renamed from: a */
    public Method f759a;

    /* renamed from: b */
    public Method f760b;

    /* renamed from: c */
    public ImageView f761c;

    C0169l(Activity activity) {
        try {
            this.f759a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
            this.f760b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
        } catch (NoSuchMethodException e) {
            this.f761c = C0168k.m414a(activity, null);
        }
    }
}
