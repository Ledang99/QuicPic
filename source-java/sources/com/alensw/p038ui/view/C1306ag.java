package com.alensw.p038ui.view;

import android.graphics.RectF;
import android.view.animation.Transformation;

/* renamed from: com.alensw.ui.view.ag */
/* loaded from: classes.dex */
class C1306ag extends C1347bu {

    /* renamed from: a */
    final /* synthetic */ float f4512a;

    /* renamed from: b */
    final /* synthetic */ float f4513b;

    /* renamed from: c */
    final /* synthetic */ ImageGridView f4514c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1306ag(ImageGridView imageGridView, boolean z, boolean z2, RectF rectF, RectF rectF2, float f, float f2) {
        super(z, z2, rectF, rectF2);
        this.f4514c = imageGridView;
        this.f4512a = f;
        this.f4513b = f2;
    }

    @Override // com.alensw.p038ui.view.C1347bu, android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        this.f4514c.f4385ag = this.f4512a + (this.f4513b * f);
        super.applyTransformation(f, transformation);
    }
}
