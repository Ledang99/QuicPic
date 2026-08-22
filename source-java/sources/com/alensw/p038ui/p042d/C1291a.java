package com.alensw.p038ui.p042d;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Xfermode;

/* renamed from: com.alensw.ui.d.a */
/* loaded from: classes.dex */
public class C1291a extends C1293c {

    /* renamed from: a */
    protected float f4305a;

    /* renamed from: b */
    protected float f4306b;

    /* renamed from: c */
    protected boolean f4307c;

    /* renamed from: d */
    protected Bitmap f4308d;

    /* renamed from: e */
    protected final Paint f4309e = new Paint(1);

    /* renamed from: f */
    protected final PorterDuffXfermode f4310f = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);

    /* renamed from: a */
    protected Object mo4199a(float f, float f2) {
        return this.f4315k;
    }

    /* renamed from: a */
    protected void m4200a(Canvas canvas, Paint paint) {
        float width = getWidth();
        float height = getHeight();
        float min = Math.min(width, height) / 96.0f;
        this.f4309e.set(paint);
        this.f4309e.setAntiAlias(true);
        mo4201a(canvas, this.f4309e, width, height);
        Object mo4199a = mo4199a(width, height);
        float f = this.f4305a * min;
        float f2 = min * this.f4306b;
        if (f2 > 0.0f) {
            this.f4309e.setShadowLayer(f2, 0.0f, 0.0f, -1610612736);
        }
        if (f > 0.0f) {
            this.f4309e.setColor(-1610612736);
            this.f4309e.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f4309e.setStrokeCap(Paint.Cap.ROUND);
            this.f4309e.setStrokeJoin(Paint.Join.ROUND);
            this.f4309e.setStrokeWidth(f);
            m4202a(canvas, mo4199a, this.f4309e);
            Xfermode xfermode = this.f4309e.getXfermode();
            this.f4309e.setStyle(Paint.Style.FILL);
            this.f4309e.setXfermode(this.f4310f);
            m4202a(canvas, mo4199a, this.f4309e);
            this.f4309e.setXfermode(xfermode);
        }
        this.f4309e.setColor(paint.getColor());
        this.f4309e.setStyle(paint.getStyle());
        m4202a(canvas, mo4199a, this.f4309e);
        mo4203b(canvas, paint, width, height);
        this.f4315k.rewind();
    }

    /* renamed from: a */
    protected void mo4201a(Canvas canvas, Paint paint, float f, float f2) {
    }

    /* renamed from: a */
    protected void m4202a(Canvas canvas, Object obj, Paint paint) {
        if (obj instanceof Path) {
            canvas.drawPath((Path) obj, paint);
        } else if (obj instanceof String) {
            canvas.drawText((String) obj, 0.0f, 0.0f, paint);
        }
    }

    /* renamed from: b */
    protected void mo4203b(Canvas canvas, Paint paint, float f, float f2) {
    }

    @Override // com.alensw.p038ui.p042d.C1293c, android.graphics.drawable.shapes.Shape
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas, Paint paint) {
        if (this.f4308d == null) {
            m4200a(canvas, paint);
            return;
        }
        if (this.f4307c) {
            this.f4308d.eraseColor(0);
            m4200a(new Canvas(this.f4308d), paint);
            this.f4307c = false;
        }
        canvas.drawBitmap(this.f4308d, 0.0f, 0.0f, (Paint) null);
    }

    @Override // android.graphics.drawable.shapes.Shape
    protected void onResize(float f, float f2) {
        int i = (int) f;
        int i2 = (int) f2;
        if (this.f4308d == null || this.f4308d.getWidth() != i || this.f4308d.getHeight() != i2) {
            if (this.f4308d != null) {
                this.f4308d.recycle();
            }
            try {
                this.f4308d = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            } catch (Throwable th) {
                this.f4308d = null;
            }
        }
        this.f4307c = true;
    }
}
