package com.alensw.p038ui.p041c;

import android.os.Process;
import android.view.animation.Animation;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.view.PictureView;

/* renamed from: com.alensw.ui.c.dr */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1258dr implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4198a;

    /* renamed from: b */
    private int f4199b;

    AnimationAnimationListenerC1258dr(C1256dp c1256dp) {
        this.f4198a = c1256dp;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        boolean z;
        PictureView pictureView;
        PictureView pictureView2;
        PictureView pictureView3;
        PictureView pictureView4;
        Process.setThreadPriority(this.f4199b);
        this.f4198a.m4105d(false);
        this.f4198a.m4099b(true);
        z = this.f4198a.f4167V;
        if (z) {
            pictureView = this.f4198a.f4176f;
            int width = pictureView.getWidth();
            pictureView2 = this.f4198a.f4176f;
            int height = pictureView2.getHeight();
            float m2958a = C0742b.m2958a(width);
            float m2958a2 = C0742b.m2958a(height);
            pictureView3 = this.f4198a.f4176f;
            pictureView4 = this.f4198a.f4176f;
            pictureView3.m4448b(pictureView4.getTransScale() * 2.0f, m2958a, m2958a2, 45000);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f4199b = Process.getThreadPriority(Process.myTid());
        Process.setThreadPriority(-4);
    }
}
