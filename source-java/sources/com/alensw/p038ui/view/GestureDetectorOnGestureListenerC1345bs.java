package com.alensw.p038ui.view;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* renamed from: com.alensw.ui.view.bs */
/* loaded from: classes.dex */
class GestureDetectorOnGestureListenerC1345bs implements GestureDetector.OnGestureListener {

    /* renamed from: a */
    final /* synthetic */ C1342bp f4652a;

    GestureDetectorOnGestureListenerC1345bs(C1342bp c1342bp) {
        this.f4652a = c1342bp;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (this.f4652a.f4648p.m575f()) {
            this.f4652a.mo4250a(motionEvent);
        } else {
            this.f4652a.f4648p.m568a(true);
        }
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        int scrollX = this.f4652a.getScrollX();
        int scrollY = this.f4652a.getScrollY();
        int i = -((int) f);
        int i2 = -((int) f2);
        int scrollRangeX = this.f4652a.getScrollRangeX();
        int scrollRangeY = this.f4652a.getScrollRangeY();
        int clientWidth = (scrollRangeX <= 0 || (i <= 0 ? scrollX <= 0 : scrollX >= scrollRangeX)) ? 0 : this.f4652a.getClientWidth() / 2;
        int clientHeight = (scrollRangeY <= 0 || (i2 <= 0 ? scrollY <= 0 : scrollY >= scrollRangeY)) ? 0 : this.f4652a.getClientHeight() / 2;
        if (clientWidth == 0 && clientHeight == 0) {
            return true;
        }
        this.f4652a.f4648p.m567a(scrollX, scrollY, i, i2, 0, scrollRangeX, 0, scrollRangeY, clientWidth, clientHeight);
        this.f4652a.m4398g();
        this.f4652a.mo4260b(motionEvent, motionEvent2, f, f2);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.f4652a.mo4267d(motionEvent);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.f4652a.m4396a((int) f, (int) f2, this.f4652a.getScrollX(), this.f4652a.getScrollY(), this.f4652a.f4641i, this.f4652a.f4641i, true);
        this.f4652a.mo4251a(motionEvent, motionEvent2, f, f2);
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
        this.f4652a.m4395a(true);
        this.f4652a.mo4259b(motionEvent);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.f4652a.mo4265c(motionEvent);
        return true;
    }
}
