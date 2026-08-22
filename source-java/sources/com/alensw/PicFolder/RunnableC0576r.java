package com.alensw.PicFolder;

import android.media.FaceDetector;
import com.alensw.p023b.p031h.C0714j;

/* renamed from: com.alensw.PicFolder.r */
/* loaded from: classes.dex */
class RunnableC0576r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0714j f2234a;

    /* renamed from: b */
    final /* synthetic */ C0575q f2235b;

    RunnableC0576r(C0575q c0575q, C0714j c0714j) {
        this.f2235b = c0575q;
        this.f2234a = c0714j;
    }

    /* renamed from: a */
    private FaceDetector.Face m2141a() {
        try {
            FaceDetector.Face[] faceArr = new FaceDetector.Face[1];
            if (new FaceDetector(this.f2234a.m2849e(), this.f2234a.m2850f(), 1).findFaces(this.f2234a.m2848d(), faceArr) > 0) {
                return faceArr[0];
            }
        } catch (Throwable th) {
        }
        return null;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2235b.f2229s.post(new RunnableC0577s(this, m2141a()));
    }
}
