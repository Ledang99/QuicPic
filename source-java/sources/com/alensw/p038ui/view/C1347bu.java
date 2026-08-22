package com.alensw.p038ui.view;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.bu */
/* loaded from: classes.dex */
public class C1347bu extends Animation {

    /* renamed from: a */
    private final boolean f4658a;

    /* renamed from: b */
    private final boolean f4659b;

    /* renamed from: c */
    private final RectF f4660c;

    /* renamed from: d */
    private float f4661d;

    /* renamed from: e */
    private float f4662e;

    /* renamed from: f */
    private float f4663f;

    /* renamed from: g */
    private float f4664g;

    /* renamed from: h */
    private float f4665h;

    /* renamed from: i */
    private float f4666i;

    /* renamed from: j */
    private float f4667j;

    /* renamed from: k */
    private float f4668k;

    /* renamed from: l */
    private float f4669l;

    /* renamed from: m */
    private boolean f4670m;

    public C1347bu(boolean z, boolean z2, RectF rectF, RectF rectF2) {
        this.f4658a = z;
        this.f4659b = z2;
        this.f4660c = rectF;
        if (rectF2 != null) {
            m4405a(rectF2, null);
        }
    }

    /* renamed from: a */
    public boolean m4405a(RectF rectF, RectF rectF2) {
        float width = rectF.width();
        float height = rectF.height();
        float width2 = this.f4660c.width();
        float height2 = this.f4660c.height();
        float max = Math.max(width2 / width, height2 / height);
        float f = this.f4658a ? 1.0f : max;
        this.f4661d = this.f4658a ? max : 1.0f;
        this.f4662e = f - this.f4661d;
        RectF rectF3 = this.f4658a ? this.f4660c : rectF;
        RectF rectF4 = this.f4658a ? rectF : this.f4660c;
        float centerX = rectF3.centerX();
        float centerY = rectF3.centerY();
        float centerX2 = rectF4.centerX();
        float centerY2 = rectF4.centerY();
        this.f4663f = this.f4658a ? centerX2 : centerX;
        this.f4664g = this.f4658a ? centerY2 : centerY;
        this.f4667j = centerX2 - centerX;
        this.f4668k = centerY2 - centerY;
        this.f4665h = this.f4658a ? -this.f4667j : 0.0f;
        this.f4666i = this.f4658a ? -this.f4668k : 0.0f;
        boolean z = false;
        if (rectF2 != null) {
            float f2 = width2 / max;
            float f3 = height2 / max;
            rectF2.set(rectF);
            if (width > f2) {
                rectF2.inset(((width - f2) / 2.0f) * (1.0f - this.f4669l), 0.0f);
                z = true;
            } else if (height > f3) {
                rectF2.inset(0.0f, ((height - f3) / 2.0f) * (1.0f - this.f4669l));
                z = true;
            }
        }
        this.f4670m = true;
        return z;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        this.f4669l = this.f4658a ? f : 1.0f - f;
        if (!this.f4670m) {
            transformation.setAlpha(this.f4658a ? 0.0f : 255.0f);
            transformation.setTransformationType(1);
            return;
        }
        Matrix matrix = transformation.getMatrix();
        float f2 = this.f4661d + (this.f4662e * f);
        matrix.setScale(f2, f2, this.f4663f, this.f4664g);
        matrix.postTranslate(this.f4665h + (this.f4667j * f), this.f4666i + (this.f4668k * f));
        if (!this.f4659b) {
            transformation.setTransformationType(2);
            return;
        }
        if (!this.f4658a) {
            f = 1.0f - f;
        }
        transformation.setAlpha(f);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
