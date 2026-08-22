package android.support.v4.p011a;

import android.view.MotionEvent;

/* renamed from: android.support.v4.a.g */
/* loaded from: classes.dex */
class C0178g implements InterfaceC0180i {
    C0178g() {
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: a */
    public int mo431a(MotionEvent motionEvent) {
        return 1;
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: a */
    public int mo432a(MotionEvent motionEvent, int i) {
        return i == 0 ? 0 : -1;
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: b */
    public int mo433b(MotionEvent motionEvent, int i) {
        if (i == 0) {
            return 0;
        }
        throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: c */
    public float mo434c(MotionEvent motionEvent, int i) {
        if (i == 0) {
            return motionEvent.getX();
        }
        throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }

    @Override // android.support.v4.p011a.InterfaceC0180i
    /* renamed from: d */
    public float mo435d(MotionEvent motionEvent, int i) {
        if (i == 0) {
            return motionEvent.getY();
        }
        throw new IndexOutOfBoundsException("Pre-Eclair does not support multiple pointers");
    }
}
