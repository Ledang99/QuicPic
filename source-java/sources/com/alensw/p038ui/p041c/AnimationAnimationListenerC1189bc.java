package com.alensw.p038ui.p041c;

import android.view.animation.Animation;
import android.widget.ImageView;

/* renamed from: com.alensw.ui.c.bc */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1189bc implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ C1178as f3954a;

    AnimationAnimationListenerC1189bc(C1178as c1178as) {
        this.f3954a = c1178as;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        ImageView imageView;
        imageView = this.f3954a.f3917g;
        imageView.setVisibility(4);
        this.f3954a.m3913d(false);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
