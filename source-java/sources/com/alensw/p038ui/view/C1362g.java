package com.alensw.p038ui.view;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.FloatMath;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.g */
/* loaded from: classes.dex */
final class C1362g extends Animation {

    /* renamed from: a */
    final /* synthetic */ float f4707a;

    /* renamed from: b */
    final /* synthetic */ float f4708b;

    /* renamed from: c */
    final /* synthetic */ Camera f4709c;

    /* renamed from: d */
    final /* synthetic */ float f4710d;

    /* renamed from: e */
    final /* synthetic */ float f4711e;

    /* renamed from: f */
    final /* synthetic */ float f4712f;

    /* renamed from: g */
    final /* synthetic */ boolean f4713g;

    C1362g(float f, float f2, Camera camera, float f3, float f4, float f5, boolean z) {
        this.f4707a = f;
        this.f4708b = f2;
        this.f4709c = camera;
        this.f4710d = f3;
        this.f4711e = f4;
        this.f4712f = f5;
        this.f4713g = z;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        Matrix matrix = transformation.getMatrix();
        float f2 = this.f4707a + ((this.f4708b - this.f4707a) * f);
        float f3 = (float) ((3.141592653589793d * f2) / 180.0d);
        float sin = FloatMath.sin(f3);
        float cos = FloatMath.cos(f3);
        this.f4709c.save();
        this.f4709c.translate(sin * this.f4710d, 0.0f, (1.0f - cos) * this.f4710d);
        this.f4709c.rotateY(f2);
        this.f4709c.getMatrix(matrix);
        this.f4709c.restore();
        matrix.preTranslate(-this.f4711e, -this.f4712f);
        matrix.postTranslate(this.f4711e, this.f4712f);
        if (this.f4713g) {
            transformation.setAlpha(f > 0.25f ? (f - 0.25f) / 0.75f : 0.0f);
        } else {
            transformation.setAlpha(f < 0.75f ? (0.75f - f) / 0.75f : 0.0f);
        }
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
