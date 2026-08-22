package com.p043b.p044a;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* renamed from: com.b.a.l */
/* loaded from: classes.dex */
public class C1397l extends Drawable {

    /* renamed from: c */
    public static final boolean f4946c;

    /* renamed from: a */
    private final int f4947a;

    /* renamed from: b */
    private final int f4948b;

    /* renamed from: d */
    private final Picture f4949d;

    /* renamed from: e */
    private Bitmap f4950e;

    /* renamed from: f */
    private Matrix f4951f;

    /* renamed from: g */
    private Paint f4952g;

    static {
        f4946c = Build.VERSION.SDK_INT >= 11;
    }

    public C1397l(Picture picture, int i, int i2) {
        this.f4949d = picture;
        this.f4947a = i;
        this.f4948b = i2;
    }

    /* renamed from: a */
    public Picture m4563a() {
        return this.f4949d;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (this.f4950e != null) {
            canvas.drawBitmap(this.f4950e, ((bounds.left + bounds.right) - this.f4950e.getWidth()) / 2.0f, ((bounds.bottom + bounds.top) - this.f4950e.getHeight()) / 2.0f, this.f4952g);
            return;
        }
        canvas.save(3);
        canvas.clipRect(bounds);
        if (this.f4951f != null) {
            canvas.concat(this.f4951f);
        }
        this.f4949d.draw(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f4948b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f4947a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        int i = rect.right - rect.left;
        int i2 = rect.bottom - rect.top;
        int width = this.f4949d.getWidth();
        int height = this.f4949d.getHeight();
        float min = Math.min(i / width, i2 / height);
        if (!f4946c && this.f4952g == null) {
            if (this.f4951f == null) {
                this.f4951f = new Matrix();
            } else {
                this.f4951f.reset();
            }
            this.f4951f.postScale(min, min);
            this.f4951f.postTranslate(((i - (width * min)) / 2.0f) + rect.left, ((i2 - (height * min)) / 2.0f) + rect.top);
            return;
        }
        int round = Math.round(width * min);
        int round2 = Math.round(height * min);
        if (this.f4950e != null) {
            if (this.f4950e.getWidth() == round && this.f4950e.getHeight() == round2) {
                return;
            }
            this.f4950e.recycle();
            this.f4950e = null;
        }
        try {
            this.f4950e = Bitmap.createBitmap(round, round2, Bitmap.Config.ARGB_8888);
            if (this.f4950e != null) {
                Canvas canvas = new Canvas(this.f4950e);
                canvas.scale(min, min);
                canvas.translate((round - (width * min)) / 2.0f, (round2 - (height * min)) / 2.0f);
                this.f4949d.draw(canvas);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter != null) {
            if (this.f4952g == null) {
                this.f4952g = new Paint(6);
            }
            this.f4952g.setColorFilter(colorFilter);
        } else {
            this.f4952g = null;
        }
        if (!f4946c) {
            onBoundsChange(getBounds());
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
    }
}
