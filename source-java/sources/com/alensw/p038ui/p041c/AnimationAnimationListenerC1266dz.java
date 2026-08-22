package com.alensw.p038ui.p041c;

import android.view.animation.Animation;
import android.widget.ImageView;

/* renamed from: com.alensw.ui.c.dz */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1266dz implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4209a;

    AnimationAnimationListenerC1266dz(C1256dp c1256dp) {
        this.f4209a = c1256dp;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        ImageView imageView;
        imageView = this.f4209a.f4177g;
        imageView.setVisibility(4);
        this.f4209a.m4105d(false);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
