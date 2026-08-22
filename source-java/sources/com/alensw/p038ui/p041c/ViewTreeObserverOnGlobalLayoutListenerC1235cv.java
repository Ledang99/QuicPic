package com.alensw.p038ui.p041c;

import android.view.ViewTreeObserver;

/* renamed from: com.alensw.ui.c.cv */
/* loaded from: classes.dex */
class ViewTreeObserverOnGlobalLayoutListenerC1235cv implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ C1234cu f4091a;

    /* renamed from: b */
    private int f4092b;

    /* renamed from: c */
    private int f4093c;

    /* renamed from: d */
    private int f4094d;

    /* renamed from: e */
    private int f4095e;

    ViewTreeObserverOnGlobalLayoutListenerC1235cv(C1234cu c1234cu) {
        this.f4091a = c1234cu;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        int left = this.f4091a.f4083D.getLeft();
        int right = this.f4091a.f4083D.getRight();
        int top = this.f4091a.f4083D.getTop();
        int bottom = this.f4091a.f4083D.getBottom();
        if (this.f4092b == left && this.f4093c == right && this.f4094d == top && this.f4095e == bottom) {
            return;
        }
        this.f4092b = left;
        this.f4093c = right;
        this.f4094d = top;
        this.f4095e = bottom;
        this.f4091a.mo3939a(left, top, right, bottom);
    }
}
