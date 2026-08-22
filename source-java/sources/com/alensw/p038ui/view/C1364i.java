package com.alensw.p038ui.view;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.i */
/* loaded from: classes.dex */
final class C1364i extends Animation {

    /* renamed from: a */
    final /* synthetic */ boolean f4720a;

    /* renamed from: b */
    final /* synthetic */ int f4721b;

    C1364i(boolean z, int i) {
        this.f4720a = z;
        this.f4721b = i;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        transformation.getMatrix().setTranslate((this.f4720a ? 1.0f - f : -f) * this.f4721b, 0.0f);
        transformation.setTransformationType(2);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
