package com.alensw.p038ui.view;

import android.widget.LinearLayout;

/* renamed from: com.alensw.ui.view.by */
/* loaded from: classes.dex */
class RunnableC1351by implements Runnable {

    /* renamed from: a */
    final /* synthetic */ TitleBar f4674a;

    RunnableC1351by(TitleBar titleBar) {
        this.f4674a = titleBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ActionLayout actionLayout;
        boolean z;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        actionLayout = this.f4674a.f4483k;
        actionLayout.requestLayout();
        this.f4674a.requestLayout();
        z = this.f4674a.f4477e;
        if (z) {
            linearLayout = this.f4674a.f4484l;
            if (linearLayout != null) {
                linearLayout2 = this.f4674a.f4484l;
                linearLayout2.requestLayout();
            }
        }
    }
}
