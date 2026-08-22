package com.alensw.p038ui.activity;

import android.view.View;
import android.view.animation.Interpolator;
import com.alensw.p038ui.view.AbstractC1373r;

/* renamed from: com.alensw.ui.activity.aq */
/* loaded from: classes.dex */
class C1111aq extends AbstractC1373r {

    /* renamed from: a */
    final /* synthetic */ int f3758a;

    /* renamed from: b */
    final /* synthetic */ ActivityC1109ao f3759b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1111aq(ActivityC1109ao activityC1109ao, View view, Interpolator interpolator, int i, int i2, int i3) {
        super(view, interpolator, i, i2);
        this.f3759b = activityC1109ao;
        this.f3758a = i3;
    }

    @Override // com.alensw.p038ui.view.AbstractC1373r
    /* renamed from: a */
    public void mo3838a(int i) {
        this.f3759b.m3819g(i);
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f3759b.m3819g(this.f3758a);
    }
}
