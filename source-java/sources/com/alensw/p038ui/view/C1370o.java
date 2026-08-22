package com.alensw.p038ui.view;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.o */
/* loaded from: classes.dex */
class C1370o extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ Camera f4799a;

    /* renamed from: b */
    final /* synthetic */ boolean f4800b;

    /* renamed from: c */
    final /* synthetic */ Matrix f4801c;

    /* renamed from: d */
    final /* synthetic */ float f4802d;

    /* renamed from: e */
    final /* synthetic */ float f4803e;

    /* renamed from: f */
    final /* synthetic */ Matrix f4804f;

    /* renamed from: g */
    final /* synthetic */ Runnable f4805g;

    /* renamed from: h */
    final /* synthetic */ C1365j f4806h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1370o(C1365j c1365j, View view, Interpolator interpolator, Camera camera, boolean z, Matrix matrix, float f, float f2, Matrix matrix2, Runnable runnable) {
        super(view, interpolator);
        this.f4806h = c1365j;
        this.f4799a = camera;
        this.f4800b = z;
        this.f4801c = matrix;
        this.f4802d = f;
        this.f4803e = f2;
        this.f4804f = matrix2;
        this.f4805g = runnable;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        this.f4806h.f4732I = true;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        float f2 = 180.0f * f;
        this.f4799a.save();
        if (this.f4800b) {
            this.f4799a.rotateY(f2);
        } else {
            this.f4799a.rotateX(f2);
        }
        this.f4799a.getMatrix(this.f4801c);
        this.f4799a.restore();
        this.f4801c.preScale(0.2f, 0.2f);
        this.f4801c.postScale(5.0f, 5.0f);
        this.f4801c.preTranslate(-this.f4802d, -this.f4803e);
        this.f4801c.postTranslate(this.f4802d, this.f4803e);
        this.f4806h.f4742S.set(this.f4804f);
        this.f4806h.f4742S.postConcat(this.f4801c);
        this.f4806h.m4465j();
        this.f4806h.invalidate();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f4806h.f4732I = false;
        this.f4806h.invalidate();
        if (this.f4805g != null) {
            this.f4805g.run();
        }
    }
}
