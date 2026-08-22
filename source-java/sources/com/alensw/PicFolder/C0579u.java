package com.alensw.PicFolder;

import android.graphics.RectF;
import android.view.View;
import android.view.animation.Interpolator;
import com.alensw.p038ui.view.RunnableC1346bt;

/* renamed from: com.alensw.PicFolder.u */
/* loaded from: classes.dex */
class C0579u extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ float f2239a;

    /* renamed from: b */
    final /* synthetic */ float f2240b;

    /* renamed from: c */
    final /* synthetic */ float f2241c;

    /* renamed from: d */
    final /* synthetic */ float f2242d;

    /* renamed from: e */
    final /* synthetic */ float f2243e;

    /* renamed from: f */
    final /* synthetic */ C0575q f2244f;

    /* renamed from: g */
    private float f2245g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0579u(C0575q c0575q, View view, Interpolator interpolator, float f, float f2, float f3, float f4, float f5) {
        super(view, interpolator);
        this.f2244f = c0575q;
        this.f2239a = f;
        this.f2240b = f2;
        this.f2241c = f3;
        this.f2242d = f4;
        this.f2243e = f5;
        this.f2245g = 0.0f;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        this.f2244f.f4732I = true;
        this.f2245g = this.f2239a;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        float f2 = this.f2239a + (this.f2240b * f);
        this.f2244f.m4447b(f2, this.f2241c, this.f2242d);
        this.f2244f.m2108d(f2 / this.f2245g, this.f2241c, this.f2242d);
        this.f2245g = f2;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        int i;
        int i2;
        this.f2244f.f4733J = null;
        this.f2244f.f4732I = false;
        this.f2244f.m4447b(this.f2243e, this.f2241c, this.f2242d);
        this.f2244f.m2108d(this.f2243e / this.f2245g, this.f2241c, this.f2242d);
        RectF rectF = this.f2244f.f2232v;
        i = this.f2244f.f4726C;
        float f = i;
        i2 = this.f2244f.f4727D;
        float f2 = i2;
        float f3 = rectF.left < 0.0f ? -rectF.left : rectF.right > f ? f - rectF.right : 0.0f;
        float f4 = rectF.top < 0.0f ? -rectF.top : rectF.bottom > f2 ? f2 - rectF.bottom : 0.0f;
        if (f3 != 0.0f || f4 != 0.0f) {
            this.f2244f.m4446b(f3, f4);
            rectF.offset(f3, f4);
        }
        this.f2244f.m2137c();
    }
}
