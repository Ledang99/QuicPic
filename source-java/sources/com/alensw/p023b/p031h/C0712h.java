package com.alensw.p023b.p031h;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.shapes.Shape;
import java.io.ByteArrayOutputStream;

/* renamed from: com.alensw.b.h.h */
/* loaded from: classes.dex */
public class C0712h extends AbstractC0716l {

    /* renamed from: a */
    private Bitmap f2697a;

    /* renamed from: b */
    public final C0713i f2698b;

    public C0712h(int i, int i2, int i3, int i4) {
        this.f2698b = new C0713i();
        this.f2698b.f2699a = i;
        this.f2698b.f2700b = i2;
        this.f2698b.f2701c = i3;
        this.f2698b.f2702d = (i4 + 360) % 360;
    }

    public C0712h(Bitmap bitmap) {
        this(bitmap, 0, 0);
    }

    public C0712h(Bitmap bitmap, int i, int i2) {
        this(bitmap.getWidth(), bitmap.getHeight(), i, i2);
        this.f2697a = bitmap;
    }

    /* renamed from: a */
    public static C0712h m2837a(int i, int i2, Bitmap.Config config) {
        Bitmap m2773a = C0706b.m2773a(i, i2, config);
        if (m2773a != null) {
            return new C0712h(m2773a);
        }
        return null;
    }

    /* renamed from: a */
    public static C0712h m2838a(byte[] bArr, BitmapFactory.Options options) {
        try {
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray != null) {
                return new C0712h(decodeByteArray);
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* renamed from: a */
    public static void m2839a(Matrix matrix, float f, float f2, float f3, float f4, int i) {
        float f5 = f3 / f;
        float f6 = f4 / f2;
        if (i == 1) {
            f6 = Math.min(f5, f6);
            f5 = f6;
        } else if (i == 2) {
            f6 = Math.max(f5, f6);
            f5 = f6;
        }
        matrix.postScale(f5, f6);
        matrix.postTranslate((f3 - (f5 * f)) / 2.0f, (f4 - (f6 * f2)) / 2.0f);
    }

    /* renamed from: a */
    public C0712h m2840a(int i, int i2, boolean z, Bitmap.Config config) {
        if (!m2854j()) {
            return null;
        }
        Matrix matrix = new Matrix();
        if (z) {
            m2844a(matrix, i, i2, 2);
        } else {
            int m2851g = m2851g();
            int m2852h = m2852h();
            float min = Math.min(i / m2851g, i2 / m2852h);
            float f = m2851g * min;
            float f2 = m2852h * min;
            m2844a(matrix, f, f2, 1);
            i = Math.round(f);
            i2 = Math.round(f2);
        }
        Bitmap bitmap = this.f2697a;
        Bitmap.Config config2 = config == null ? bitmap.getConfig() : config;
        if (config2 == null) {
            config2 = Bitmap.Config.RGB_565;
        }
        Bitmap m2773a = C0706b.m2773a(i, i2, config2);
        if (m2773a == null) {
            return null;
        }
        new Canvas(m2773a).drawBitmap(bitmap, matrix, new Paint(6));
        return new C0712h(m2773a);
    }

    @Override // com.alensw.p023b.p031h.AbstractC0716l
    /* renamed from: a */
    protected void mo2421a() {
        Bitmap bitmap = this.f2697a;
        this.f2697a = null;
        if (bitmap != null) {
            mo2842a(bitmap);
        }
    }

    /* renamed from: a */
    public void m2841a(int i, int i2, float f, Shape shape, Paint paint) {
        Bitmap bitmap;
        if (m2854j()) {
            Bitmap bitmap2 = this.f2697a;
            int width = bitmap2.getWidth();
            int height = bitmap2.getHeight();
            if (bitmap2.isMutable()) {
                bitmap = null;
            } else {
                bitmap = C0706b.m2773a(width, height, this.f2697a.getConfig());
                if (bitmap == null) {
                    return;
                }
            }
            Canvas canvas = new Canvas(bitmap != null ? bitmap : bitmap2);
            if (bitmap != null) {
                canvas.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
            }
            float max = Math.max(i * f, i2 * f);
            float f2 = (width - max) / 2.0f;
            float f3 = (height - max) / 2.0f;
            canvas.translate(f2, f3);
            shape.resize(max, max);
            shape.draw(canvas, paint);
            canvas.translate(-f2, -f3);
            if (bitmap != null) {
                bitmap2.recycle();
                this.f2697a = bitmap;
                this.f2698b.f2699a = width;
                this.f2698b.f2700b = height;
            }
        }
    }

    /* renamed from: a */
    protected void mo2842a(Bitmap bitmap) {
        bitmap.recycle();
    }

    /* renamed from: a */
    public void mo2423a(Canvas canvas, Rect rect, RectF rectF, Paint paint) {
        if (m2854j()) {
            canvas.drawBitmap(this.f2697a, rect, rectF, paint);
        }
    }

    /* renamed from: a */
    public void m2843a(Matrix matrix) {
        matrix.reset();
        if (this.f2698b.f2702d != 0) {
            matrix.preTranslate((-(this.f2698b.f2703e ? this.f2698b.f2699a / 2 : this.f2698b.f2699a)) / 2, (-this.f2698b.f2700b) / 2);
            matrix.postRotate(this.f2698b.f2702d);
            matrix.postTranslate(m2851g() / 2, m2852h() / 2);
        }
    }

    /* renamed from: a */
    public void m2844a(Matrix matrix, float f, float f2, int i) {
        int m2851g = m2851g();
        int m2852h = m2852h();
        m2843a(matrix);
        if (m2851g < 0 || m2852h < 0) {
            return;
        }
        m2839a(matrix, m2851g, m2852h, f, f2, i);
    }

    /* renamed from: a */
    public void m2845a(Matrix matrix, RectF rectF) {
        rectF.set(0.0f, 0.0f, this.f2698b.f2699a, this.f2698b.f2700b);
        matrix.mapRect(rectF);
        if (this.f2698b.f2703e) {
            switch (this.f2698b.f2702d) {
                case 0:
                    rectF.right = rectF.left + (rectF.width() / 2.0f);
                    break;
                case 90:
                    rectF.bottom = rectF.top + (rectF.height() / 2.0f);
                    break;
                case 180:
                    rectF.left = rectF.right - (rectF.width() / 2.0f);
                    break;
                case 270:
                    rectF.top = rectF.bottom - (rectF.height() / 2.0f);
                    break;
            }
        }
    }

    /* renamed from: a */
    public byte[] m2846a(Bitmap.CompressFormat compressFormat, int i) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
            if (this.f2697a.compress(compressFormat, i, byteArrayOutputStream)) {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                return byteArray;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* renamed from: c */
    public int m2847c(int i) {
        this.f2698b.f2702d += i;
        if (this.f2698b.f2702d < 0) {
            this.f2698b.f2702d += 360;
        }
        this.f2698b.f2702d %= 360;
        return this.f2698b.f2702d;
    }

    /* renamed from: d */
    public final Bitmap m2848d() {
        return this.f2697a;
    }

    /* renamed from: e */
    public final int m2849e() {
        return this.f2698b.f2699a;
    }

    /* renamed from: f */
    public final int m2850f() {
        return this.f2698b.f2700b;
    }

    /* renamed from: g */
    public final int m2851g() {
        return this.f2698b.f2702d % 180 == 0 ? this.f2698b.f2703e ? this.f2698b.f2699a / 2 : this.f2698b.f2699a : this.f2698b.f2700b;
    }

    /* renamed from: h */
    public final int m2852h() {
        return this.f2698b.f2702d % 180 == 0 ? this.f2698b.f2700b : this.f2698b.f2703e ? this.f2698b.f2699a / 2 : this.f2698b.f2699a;
    }

    /* renamed from: i */
    public final boolean m2853i() {
        return this.f2697a != null && this.f2697a.hasAlpha() && this.f2697a.getConfig() == Bitmap.Config.ARGB_8888;
    }

    /* renamed from: j */
    public final boolean m2854j() {
        return (this.f2697a == null || this.f2697a.isRecycled()) ? false : true;
    }

    /* renamed from: k */
    public final boolean m2855k() {
        return this.f2698b.f2699a <= 0 || this.f2698b.f2700b <= 0;
    }

    public String toString() {
        return "(" + m2851g() + "x" + m2852h() + "x" + this.f2698b.f2702d + (char) 176 + (this.f2698b.f2703e ? "/2)" : ")");
    }
}
