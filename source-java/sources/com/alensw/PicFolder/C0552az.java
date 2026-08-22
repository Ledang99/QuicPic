package com.alensw.PicFolder;

import android.view.View;
import android.view.animation.Interpolator;
import com.alensw.p038ui.view.RunnableC1346bt;

/* renamed from: com.alensw.PicFolder.az */
/* loaded from: classes.dex */
class C0552az extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ float f2143a;

    /* renamed from: b */
    final /* synthetic */ float f2144b;

    /* renamed from: c */
    final /* synthetic */ float f2145c;

    /* renamed from: d */
    final /* synthetic */ PlayerView f2146d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0552az(PlayerView playerView, View view, Interpolator interpolator, float f, float f2, float f3) {
        super(view, interpolator);
        this.f2146d = playerView;
        this.f2143a = f;
        this.f2144b = f2;
        this.f2145c = f3;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        this.f2146d.f2051p = this.f2143a + (this.f2144b * f);
        this.f2146d.requestLayout();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f2146d.f2051p = this.f2145c;
        this.f2146d.requestLayout();
    }
}
