package com.alensw.PicFolder;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.PicFolder.bg */
/* loaded from: classes.dex */
class C0560bg extends Drawable {

    /* renamed from: a */
    final /* synthetic */ int f2159a;

    /* renamed from: b */
    final /* synthetic */ Point f2160b;

    /* renamed from: c */
    final /* synthetic */ float f2161c;

    /* renamed from: d */
    final /* synthetic */ int f2162d;

    /* renamed from: e */
    final /* synthetic */ int f2163e;

    /* renamed from: f */
    final /* synthetic */ WallpaperActivity f2164f;

    C0560bg(WallpaperActivity wallpaperActivity, int i, Point point, float f, int i2, int i3) {
        this.f2164f = wallpaperActivity;
        this.f2159a = i;
        this.f2160b = point;
        this.f2161c = f;
        this.f2162d = i2;
        this.f2163e = i3;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Paint paint;
        RectF rectF;
        RectF rectF2;
        RectF rectF3;
        RectF rectF4;
        Paint paint2;
        Paint paint3;
        RectF rectF5;
        RectF rectF6;
        Paint paint4;
        RectF rectF7;
        Paint paint5;
        paint = this.f2164f.f2094h;
        paint.setColor((this.f2164f.f3746Y & 16777215) | (-1610612736));
        rectF = this.f2164f.f2095i;
        rectF.set(getBounds());
        rectF2 = this.f2164f.f2095i;
        rectF2.inset(this.f2159a, this.f2159a);
        rectF3 = this.f2164f.f2095i;
        float width = rectF3.width();
        rectF4 = this.f2164f.f2095i;
        rectF4.inset((width - ((this.f2160b.x * width) / this.f2160b.y)) / 2.0f, 0.0f);
        paint2 = this.f2164f.f2094h;
        paint2.setTextSize(this.f2161c);
        paint3 = this.f2164f.f2094h;
        paint3.setTextAlign(Paint.Align.CENTER);
        String str = Integer.toString(this.f2160b.x) + "x" + this.f2160b.y;
        rectF5 = this.f2164f.f2095i;
        float centerX = rectF5.centerX();
        rectF6 = this.f2164f.f2095i;
        float f = rectF6.bottom - (this.f2162d * 2);
        paint4 = this.f2164f.f2094h;
        canvas.drawText(str, centerX, f, paint4);
        rectF7 = this.f2164f.f2095i;
        float f2 = this.f2162d;
        paint5 = this.f2164f.f2094h;
        C0742b.m2979a(canvas, rectF7, f2, paint5);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2163e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2163e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
