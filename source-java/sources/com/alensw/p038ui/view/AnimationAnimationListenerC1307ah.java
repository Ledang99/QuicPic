package com.alensw.p038ui.view;

import android.view.animation.Animation;

/* renamed from: com.alensw.ui.view.ah */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1307ah implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ boolean f4515a;

    /* renamed from: b */
    final /* synthetic */ ImageGridView f4516b;

    AnimationAnimationListenerC1307ah(ImageGridView imageGridView, boolean z) {
        this.f4516b = imageGridView;
        this.f4515a = z;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f4516b.f4386ah = null;
        if (this.f4515a) {
            this.f4516b.invalidate();
        } else {
            this.f4516b.setVisibility(8);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
