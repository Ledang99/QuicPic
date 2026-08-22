package com.alensw.PicFolder;

import android.view.View;
import android.view.ViewTreeObserver;

/* renamed from: com.alensw.PicFolder.al */
/* loaded from: classes.dex */
class ViewTreeObserverOnGlobalLayoutListenerC0538al implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2120a;

    /* renamed from: b */
    private int f2121b;

    /* renamed from: c */
    private int f2122c;

    /* renamed from: d */
    private int f2123d;

    /* renamed from: e */
    private int f2124e;

    ViewTreeObserverOnGlobalLayoutListenerC0538al(PlayerActivity playerActivity) {
        this.f2120a = playerActivity;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        View view;
        View view2;
        View view3;
        View view4;
        view = this.f2120a.f3730I;
        int left = view.getLeft();
        view2 = this.f2120a.f3730I;
        int right = view2.getRight();
        view3 = this.f2120a.f3730I;
        int top = view3.getTop();
        view4 = this.f2120a.f3730I;
        int bottom = view4.getBottom();
        if (this.f2121b == left && this.f2122c == right && this.f2123d == top && this.f2124e == bottom) {
            return;
        }
        this.f2121b = left;
        this.f2122c = right;
        this.f2123d = top;
        this.f2124e = bottom;
        this.f2120a.m2014f();
    }
}
