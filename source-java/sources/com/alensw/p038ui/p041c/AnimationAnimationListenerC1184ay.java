package com.alensw.p038ui.p041c;

import android.view.animation.Animation;
import com.alensw.p038ui.view.PictureView;

/* renamed from: com.alensw.ui.c.ay */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1184ay implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ C1178as f3946a;

    AnimationAnimationListenerC1184ay(C1178as c1178as) {
        this.f3946a = c1178as;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        PictureView pictureView;
        pictureView = this.f3946a.f3916f;
        pictureView.setVisibility(8);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
