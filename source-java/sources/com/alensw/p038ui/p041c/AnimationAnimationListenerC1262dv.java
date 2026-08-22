package com.alensw.p038ui.p041c;

import android.view.animation.Animation;
import com.alensw.p038ui.view.PictureView;

/* renamed from: com.alensw.ui.c.dv */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1262dv implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4204a;

    AnimationAnimationListenerC1262dv(C1256dp c1256dp) {
        this.f4204a = c1256dp;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        PictureView pictureView;
        pictureView = this.f4204a.f4176f;
        pictureView.setVisibility(8);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
