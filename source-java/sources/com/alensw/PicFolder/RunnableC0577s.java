package com.alensw.PicFolder;

import android.graphics.PointF;
import android.graphics.RectF;
import android.media.FaceDetector;

/* renamed from: com.alensw.PicFolder.s */
/* loaded from: classes.dex */
class RunnableC0577s implements Runnable {

    /* renamed from: a */
    final /* synthetic */ FaceDetector.Face f2236a;

    /* renamed from: b */
    final /* synthetic */ RunnableC0576r f2237b;

    RunnableC0577s(RunnableC0576r runnableC0576r, FaceDetector.Face face) {
        this.f2237b = runnableC0576r;
        this.f2236a = face;
    }

    @Override // java.lang.Runnable
    public void run() {
        float f;
        RectF rectF;
        RectF rectF2;
        if (this.f2236a != null) {
            float eyesDistance = this.f2236a.eyesDistance() * 2.5f;
            f = this.f2237b.f2235b.f4756ai;
            float max = Math.max(eyesDistance, 56.0f * f);
            float f2 = this.f2237b.f2235b.f2212b != 0.0f ? max / this.f2237b.f2235b.f2212b : max;
            PointF pointF = new PointF();
            this.f2236a.getMidPoint(pointF);
            rectF = this.f2237b.f2235b.f4739P;
            float f3 = rectF.left;
            rectF2 = this.f2237b.f2235b.f4739P;
            pointF.offset(f3, rectF2.top);
            this.f2237b.f2235b.f2232v.set(pointF.x - max, pointF.y - f2, max + pointF.x, f2 + pointF.y);
            this.f2237b.f2235b.m2137c();
        }
        if (this.f2237b.f2234a != null) {
            this.f2237b.f2234a.m2866m();
        }
        this.f2237b.f2235b.m2127a(0);
    }
}
