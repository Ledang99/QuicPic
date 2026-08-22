package com.alensw.p038ui.view;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.FloatMath;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.h */
/* loaded from: classes.dex */
final class C1363h extends Animation {

    /* renamed from: a */
    final /* synthetic */ float f4714a;

    /* renamed from: b */
    final /* synthetic */ float f4715b;

    /* renamed from: c */
    final /* synthetic */ Camera f4716c;

    /* renamed from: d */
    final /* synthetic */ float f4717d;

    /* renamed from: e */
    final /* synthetic */ float f4718e;

    /* renamed from: f */
    final /* synthetic */ boolean f4719f;

    C1363h(float f, float f2, Camera camera, float f3, float f4, boolean z) {
        this.f4714a = f;
        this.f4715b = f2;
        this.f4716c = camera;
        this.f4717d = f3;
        this.f4718e = f4;
        this.f4719f = z;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        Matrix matrix = transformation.getMatrix();
        float f2 = this.f4714a + ((this.f4715b - this.f4714a) * f);
        FloatMath.cos((float) ((3.141592653589793d * f2) / 180.0d));
        this.f4716c.save();
        this.f4716c.rotateY(f2);
        this.f4716c.getMatrix(matrix);
        this.f4716c.restore();
        matrix.preScale(0.2f, 0.2f);
        matrix.postScale(5.0f, 5.0f);
        matrix.preTranslate(-this.f4717d, -this.f4718e);
        matrix.postTranslate(this.f4717d, this.f4718e);
        if (!this.f4719f) {
            f = f <= 0.5f ? 1.0f - f : 0.0f;
        } else if (f < 0.5f) {
            f = 0.0f;
        }
        transformation.setAlpha(f);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
