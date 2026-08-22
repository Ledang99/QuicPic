package com.alensw.p038ui.p042d;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import com.alensw.p023b.p031h.C0706b;

/* renamed from: com.alensw.ui.d.e */
/* loaded from: classes.dex */
final class C1295e extends InsetDrawable {

    /* renamed from: a */
    private final Path f4319a;

    /* renamed from: b */
    private Bitmap f4320b;

    /* renamed from: c */
    private Canvas f4321c;

    /* renamed from: d */
    private int f4322d;

    C1295e(Drawable drawable, int i) {
        super(drawable, i);
        this.f4319a = new Path();
        this.f4322d = 0;
    }

    @TargetApi(11)
    /* renamed from: a */
    private boolean m4212a(Canvas canvas) {
        return Build.VERSION.SDK_INT >= 18 || Build.VERSION.SDK_INT < 11 || !canvas.isHardwareAccelerated();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        boolean m4212a = m4212a(canvas);
        int width = bounds.width();
        int height = bounds.height();
        int min = Math.min(width, height);
        if (this.f4322d != min) {
            this.f4319a.reset();
            this.f4319a.addCircle(bounds.exactCenterX(), bounds.exactCenterY(), (39.0f * min) / 96.0f, Path.Direction.CW);
            this.f4322d = min;
            if (!m4212a) {
                if (this.f4320b != null) {
                    this.f4320b.recycle();
                }
                this.f4320b = C0706b.m2773a(min, min, Bitmap.Config.ARGB_8888);
                this.f4321c = this.f4320b != null ? new Canvas(this.f4320b) : null;
            }
        }
        if (this.f4320b != null) {
            this.f4320b.eraseColor(0);
        }
        Canvas canvas2 = (m4212a || this.f4321c == null) ? canvas : this.f4321c;
        canvas2.save(2);
        if (m4212a || canvas2 == this.f4321c) {
            canvas2.clipPath(this.f4319a);
        }
        super.draw(canvas2);
        canvas2.restore();
        if (canvas2 != this.f4321c || this.f4320b == null) {
            return;
        }
        canvas.drawBitmap(this.f4320b, (width - min) / 2.0f, (height - min) / 2.0f, (Paint) null);
    }
}
