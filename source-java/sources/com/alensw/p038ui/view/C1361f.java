package com.alensw.p038ui.view;

import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.f */
/* loaded from: classes.dex */
final class C1361f extends Animation {

    /* renamed from: a */
    final /* synthetic */ float f4703a;

    /* renamed from: b */
    final /* synthetic */ float f4704b;

    /* renamed from: c */
    final /* synthetic */ float f4705c;

    /* renamed from: d */
    final /* synthetic */ float f4706d;

    C1361f(float f, float f2, float f3, float f4) {
        this.f4703a = f;
        this.f4704b = f2;
        this.f4705c = f3;
        this.f4706d = f4;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        Matrix matrix = transformation.getMatrix();
        float f2 = this.f4703a + (this.f4704b * f);
        matrix.setScale(f2, f2, this.f4705c, this.f4706d);
        transformation.setAlpha(f2);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
