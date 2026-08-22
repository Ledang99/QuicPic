package android.support.v4.p011a;

import android.view.MotionEvent;

/* renamed from: android.support.v4.a.h */
/* loaded from: classes.dex */
class C0179h implements InterfaceC0180i {
    C0179h() {
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: a */
    public int mo431a(MotionEvent motionEvent) {
        return motionEvent.getPointerCount();
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: a */
    public int mo432a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: b */
    public int mo433b(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: c */
    public float mo434c(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: d */
    public float mo435d(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }
}
