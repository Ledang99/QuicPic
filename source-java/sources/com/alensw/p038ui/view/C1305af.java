package com.alensw.p038ui.view;

import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.af */
/* loaded from: classes.dex */
class C1305af extends Animation {

    /* renamed from: a */
    final /* synthetic */ float f4509a;

    /* renamed from: b */
    final /* synthetic */ float f4510b;

    /* renamed from: c */
    final /* synthetic */ ImageGridView f4511c;

    C1305af(ImageGridView imageGridView, float f, float f2) {
        this.f4511c = imageGridView;
        this.f4509a = f;
        this.f4510b = f2;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        this.f4511c.f4385ag = this.f4509a + (this.f4510b * f);
        transformation.setTransformationType(0);
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }
}
