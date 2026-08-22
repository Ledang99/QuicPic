package android.support.p009a.p010a;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;

/* renamed from: android.support.a.a.j */
/* loaded from: classes.dex */
class C0167j extends InsetDrawable implements InterfaceC0163f {

    /* renamed from: a */
    final /* synthetic */ C0158a f752a;

    /* renamed from: b */
    private final boolean f753b;

    /* renamed from: c */
    private final Rect f754c;

    /* renamed from: d */
    private final Activity f755d;

    /* renamed from: e */
    private float f756e;

    /* renamed from: f */
    private float f757f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private C0167j(C0158a c0158a, Activity activity, Drawable drawable, float f) {
        super(drawable, 0);
        this.f752a = c0158a;
        this.f753b = Build.VERSION.SDK_INT > 18;
        this.f754c = new Rect();
        this.f755d = activity;
        this.f757f = f;
    }

    @Override // android.support.p009a.p010a.InterfaceC0163f
    /* renamed from: a */
    public void mo410a(float f) {
        this.f756e = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        copyBounds(this.f754c);
        canvas.save();
        boolean m391b = C0158a.m391b(this.f755d);
        int i = m391b ? -1 : 1;
        int width = this.f754c.width();
        canvas.translate(i * (-this.f757f) * width * this.f756e, 0.0f);
        if (m391b && !this.f753b) {
            canvas.translate(width, 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        super.draw(canvas);
        canvas.restore();
    }
}
