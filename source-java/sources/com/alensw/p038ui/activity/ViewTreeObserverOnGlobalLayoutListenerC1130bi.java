package com.alensw.p038ui.activity;

import android.view.ViewTreeObserver;
import android.widget.GridView;

/* renamed from: com.alensw.ui.activity.bi */
/* loaded from: classes.dex */
class ViewTreeObserverOnGlobalLayoutListenerC1130bi implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    final /* synthetic */ SelectThemeActivity f3799a;

    ViewTreeObserverOnGlobalLayoutListenerC1130bi(SelectThemeActivity selectThemeActivity) {
        this.f3799a = selectThemeActivity;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        GridView gridView;
        GridView gridView2;
        int i;
        GridView gridView3;
        gridView = this.f3799a.f3690c;
        if (gridView.getWidth() > 0) {
            gridView2 = this.f3799a.f3690c;
            int width = gridView2.getWidth();
            i = this.f3799a.f3693f;
            int i2 = width / i;
            if ((i2 & 1) != 0) {
                i2++;
            }
            gridView3 = this.f3799a.f3690c;
            gridView3.setNumColumns(i2);
        }
    }
}
