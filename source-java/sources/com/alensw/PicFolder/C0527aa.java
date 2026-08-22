package com.alensw.PicFolder;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.PicFolder.aa */
/* loaded from: classes.dex */
class C0527aa {

    /* renamed from: c */
    final /* synthetic */ C0575q f2099c;

    /* renamed from: a */
    protected int f2097a = 0;

    /* renamed from: b */
    protected final Paint f2098b = new Paint(1);

    /* renamed from: d */
    private final Path f2100d = new Path();

    /* renamed from: e */
    private final RectF f2101e = new RectF();

    C0527aa(C0575q c0575q) {
        this.f2099c = c0575q;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0095, code lost:
    
        if (r15 >= ((r0 - r13.f2099c.f2233w.bottom) - r5)) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m2068a(float f, float f2) {
        float f3;
        int i;
        int i2;
        f3 = this.f2099c.f4756ai;
        float f4 = f3 * 22.0f;
        RectF rectF = this.f2099c.f2232v;
        boolean z = f >= rectF.left - f4 && f < rectF.right + f4;
        boolean z2 = f2 >= rectF.top - f4 && f2 < rectF.bottom + f4;
        int i3 = (!z2 || Math.abs(rectF.left - f) >= f4) ? 0 : 1;
        if (z2 && Math.abs(rectF.right - f) < f4) {
            i3 |= 2;
        }
        if (z && (Math.abs(rectF.top - f2) < f4 || (rectF.top <= f2 && f2 < this.f2099c.f2233w.top + f4))) {
            i3 |= 16;
        }
        if (z) {
            if (Math.abs(rectF.bottom - f2) >= f4) {
                if (rectF.bottom >= f2) {
                    i2 = this.f2099c.f4727D;
                }
            }
            i = i3 | 32;
            if (i == 0) {
                float width = rectF.width() / 3.0f;
                float height = rectF.height() / 3.0f;
                RectF rectF2 = this.f2101e;
                for (int i4 = 0; i4 <= 2; i4++) {
                    int i5 = 1;
                    while (true) {
                        if (i5 <= 2) {
                            rectF2.left = (rectF.left + (i5 * width)) - f4;
                            rectF2.right = rectF2.left + (f4 * 2.0f);
                            rectF2.top = (rectF.top + (i4 * height)) - f4;
                            rectF2.bottom = rectF2.top + (f4 * 2.0f);
                            if (rectF2.contains(f, f2)) {
                                i = 256;
                                break;
                            }
                            i5++;
                        }
                    }
                }
            }
            this.f2097a = i;
            return i;
        }
        i = i3;
        if (i == 0) {
        }
        this.f2097a = i;
        return i;
    }

    /* renamed from: a */
    public void m2069a(int i, float f, float f2) {
        int i2;
        int i3;
        float f3;
        RectF rectF;
        RectF rectF2 = this.f2099c.f2232v;
        float f4 = this.f2099c.f2212b;
        i2 = this.f2099c.f4726C;
        float f5 = i2;
        i3 = this.f2099c.f4727D;
        float f6 = i3;
        float width = rectF2.width();
        float height = rectF2.height();
        if (f4 != 0.0f) {
            if ((i & 15) == 1) {
                rectF2.left += Math.max(f, -rectF2.left);
                if ((i & 240) == 16) {
                    rectF2.top = rectF2.bottom - (width / f4);
                } else {
                    rectF2.bottom = (width / f4) + rectF2.top;
                }
                i = 0;
            } else if ((i & 15) == 2) {
                rectF2.right += Math.min(f, f5 - rectF2.right);
                if ((i & 240) == 16) {
                    rectF2.top = rectF2.bottom - (width / f4);
                } else {
                    rectF2.bottom = (width / f4) + rectF2.top;
                }
                i = 0;
            }
            rectF = this.f2099c.f4739P;
            float min = Math.min(rectF.width(), f5);
            float width2 = rectF2.width() / f4;
            if ((i & 240) == 16) {
                rectF2.top += Math.max(f2, -rectF2.top);
                if ((i & 15) == 1) {
                    rectF2.left = rectF2.right - (height * f4);
                } else {
                    rectF2.right = rectF2.left + (height * f4);
                }
                if (rectF2.width() >= min && rectF2.height() > width2) {
                    rectF2.top = rectF2.bottom - width2;
                }
            } else if ((i & 240) == 32) {
                rectF2.bottom = Math.min(f2, f6 - rectF2.bottom) + rectF2.bottom;
                if ((i & 15) == 1) {
                    rectF2.left = rectF2.right - (height * f4);
                } else {
                    rectF2.right = rectF2.left + (height * f4);
                }
                if (rectF2.width() >= min && rectF2.height() > width2) {
                    rectF2.bottom = rectF2.top + width2;
                }
            }
        } else {
            if ((i & 15) == 1) {
                rectF2.left += Math.max(f, -rectF2.left);
            } else if ((i & 15) == 2) {
                rectF2.right = Math.min(f, f5 - rectF2.right) + rectF2.right;
            }
            if ((i & 240) == 16) {
                rectF2.top += Math.max(f2, -rectF2.top);
            } else if ((i & 240) == 32) {
                rectF2.bottom += Math.min(f2, f6 - rectF2.bottom);
            }
        }
        float width3 = rectF2.width();
        float height2 = rectF2.height();
        f3 = this.f2099c.f4756ai;
        float f7 = 56.0f * f3;
        float f8 = f4 != 0.0f ? f7 / f4 : f7;
        if (width3 < f7) {
            rectF2.inset((width3 - f7) / 2.0f, 0.0f);
        }
        if (height2 < f8) {
            rectF2.inset(0.0f, (height2 - f8) / 2.0f);
        }
    }

    /* renamed from: a */
    public void m2070a(Canvas canvas) {
        int i;
        int i2;
        float f;
        float f2;
        RectF rectF = this.f2099c.f2232v;
        float width = rectF.width();
        float height = rectF.height();
        i = this.f2099c.f4726C;
        float f3 = i;
        i2 = this.f2099c.f4727D;
        Paint paint = this.f2098b;
        paint.setARGB(128, 64, 64, 64);
        canvas.drawRect(0.0f, 0.0f, f3, rectF.top, paint);
        canvas.drawRect(0.0f, rectF.bottom, f3, i2, paint);
        canvas.drawRect(0.0f, rectF.top, rectF.left, rectF.bottom, paint);
        canvas.drawRect(rectF.right, rectF.top, f3, rectF.bottom, paint);
        paint.setColor(-1);
        f = this.f2099c.f4756ai;
        float f4 = f * 2.0f;
        float f5 = (-f4) / 2.0f;
        float f6 = (-f4) / 2.0f;
        rectF.inset(f5, f6);
        C0742b.m2979a(canvas, rectF, f4, paint);
        rectF.inset(-f5, -f6);
        paint.setStrokeWidth(f4);
        m2072a(canvas, rectF, paint);
        float f7 = width / 3.0f;
        float f8 = height / 3.0f;
        f2 = this.f2099c.f4756ai;
        paint.setStrokeWidth((int) f2);
        canvas.drawLine(rectF.left + f7, rectF.top, rectF.left + f7, rectF.bottom, paint);
        canvas.drawLine(rectF.right - f7, rectF.top, rectF.right - f7, rectF.bottom, paint);
        canvas.drawLine(rectF.left, rectF.top + f8, rectF.right, rectF.top + f8, paint);
        canvas.drawLine(rectF.left, rectF.bottom - f8, rectF.right, rectF.bottom - f8, paint);
        m2071a(canvas, rectF.left + f7, rectF.top + f8, paint);
        m2071a(canvas, rectF.right - f7, rectF.top + f8, paint);
        m2071a(canvas, rectF.left + f7, rectF.bottom - f8, paint);
        m2071a(canvas, rectF.right - f7, rectF.bottom - f8, paint);
    }

    /* renamed from: a */
    public void m2071a(Canvas canvas, float f, float f2, Paint paint) {
        float f3;
        f3 = this.f2099c.f4756ai;
        float f4 = f3 * 6.0f;
        Path path = this.f2100d;
        path.moveTo(f - f4, f2);
        path.lineTo(f, f2 - f4);
        path.lineTo(f + f4, f2);
        path.lineTo(f, f4 + f2);
        path.close();
        canvas.drawPath(path, paint);
        path.reset();
    }

    /* renamed from: a */
    public void m2072a(Canvas canvas, RectF rectF, Paint paint) {
        float f;
        float f2 = rectF.top;
        float f3 = rectF.bottom;
        f = this.f2099c.f4756ai;
        float f4 = f * 12.0f;
        Path path = this.f2100d;
        path.moveTo(rectF.left, f2);
        path.lineTo(rectF.left + f4, f2);
        path.lineTo(rectF.left, f2 + f4);
        path.close();
        path.moveTo(rectF.right - f4, f2);
        path.lineTo(rectF.right, f2);
        path.lineTo(rectF.right, f2 + f4);
        path.close();
        path.moveTo(rectF.left, f3);
        path.lineTo(rectF.left + f4, f3);
        path.lineTo(rectF.left, f3 - f4);
        path.close();
        path.moveTo(rectF.right - f4, f3);
        path.lineTo(rectF.right, f3);
        path.lineTo(rectF.right, f3 - f4);
        path.close();
        canvas.drawPath(path, paint);
        path.reset();
    }

    /* renamed from: a */
    public boolean m2073a() {
        return this.f2097a != 0;
    }

    /* renamed from: b */
    public boolean m2074b() {
        return ((this.f2097a & 15) == 0 && (this.f2097a & 240) == 0) ? false : true;
    }

    /* renamed from: c */
    public boolean m2075c() {
        return this.f2097a == 256;
    }
}
