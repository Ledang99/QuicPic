package com.alensw.p038ui.p040b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.view.animation.AnimationUtils;
import com.alensw.p023b.p031h.C0706b;

/* renamed from: com.alensw.ui.b.a */
/* loaded from: classes.dex */
public class C1158a extends InsetDrawable {

    /* renamed from: a */
    private int f3845a;

    /* renamed from: b */
    private long f3846b;

    /* renamed from: c */
    private Bitmap f3847c;

    /* renamed from: d */
    private final Paint f3848d;

    public C1158a(Drawable drawable, boolean z) {
        super(drawable, 0);
        this.f3848d = new Paint(6);
        this.f3845a = z ? 2 : 0;
    }

    /* renamed from: a */
    public void m3856a() {
        this.f3845a = 1;
        this.f3846b = AnimationUtils.currentAnimationTimeMillis();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float min = Math.min(300L, AnimationUtils.currentAnimationTimeMillis() - this.f3846b);
        if (min >= 300.0f) {
            if (this.f3845a == 1) {
                this.f3845a = 2;
            } else if (this.f3845a == 3) {
                this.f3845a = 0;
                setColorFilter(null);
            }
        }
        if (this.f3845a == 0) {
            super.draw(canvas);
        } else {
            float f = min / 300.0f;
            if (this.f3845a == 3) {
                f = 1.0f - f;
            }
            Rect bounds = getBounds();
            float width = bounds.width();
            float height = (bounds.height() * 0.3125f) + bounds.top;
            canvas.save(3);
            canvas.rotate(f * (-30.0f), (width * 0.28125f) + bounds.left, height);
            if (this.f3847c != null) {
                canvas.drawBitmap(this.f3847c, bounds.left, bounds.top, this.f3848d);
            } else {
                canvas.clipRect(bounds.left, bounds.top, bounds.right, height);
                super.draw(canvas);
            }
            canvas.restore();
            canvas.save(2);
            canvas.clipRect(bounds.left, height, bounds.right, bounds.bottom);
            super.draw(canvas);
            canvas.restore();
        }
        if (this.f3845a == 1 || this.f3845a == 3) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f3847c != null) {
            this.f3847c.recycle();
        }
        this.f3847c = C0706b.m2773a(rect.width(), Math.round(rect.height() * 0.3125f), Bitmap.Config.ARGB_8888);
        if (this.f3847c != null) {
            super.draw(new Canvas(this.f3847c));
        }
    }
}
