package com.alensw.p038ui.p041c;

import android.os.Process;
import android.view.animation.Animation;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.view.PictureView;

/* renamed from: com.alensw.ui.c.au */
/* loaded from: classes.dex */
class AnimationAnimationListenerC1180au implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ C1178as f3941a;

    /* renamed from: b */
    private int f3942b;

    AnimationAnimationListenerC1180au(C1178as c1178as) {
        this.f3941a = c1178as;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        boolean z;
        PictureView pictureView;
        PictureView pictureView2;
        PictureView pictureView3;
        PictureView pictureView4;
        Process.setThreadPriority(this.f3942b);
        this.f3941a.m3913d(false);
        this.f3941a.m3907b(true);
        z = this.f3941a.f3907U;
        if (z) {
            pictureView = this.f3941a.f3916f;
            int width = pictureView.getWidth();
            pictureView2 = this.f3941a.f3916f;
            int height = pictureView2.getHeight();
            float m2958a = C0742b.m2958a(width);
            float m2958a2 = C0742b.m2958a(height);
            pictureView3 = this.f3941a.f3916f;
            pictureView4 = this.f3941a.f3916f;
            pictureView3.m4448b(pictureView4.getTransScale() * 2.0f, m2958a, m2958a2, 45000);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.f3942b = Process.getThreadPriority(Process.myTid());
        Process.setThreadPriority(-4);
    }
}
