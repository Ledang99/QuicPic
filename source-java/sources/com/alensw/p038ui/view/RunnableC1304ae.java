package com.alensw.p038ui.view;

import android.graphics.RectF;

/* renamed from: com.alensw.ui.view.ae */
/* loaded from: classes.dex */
class RunnableC1304ae implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ImageGridView f4508a;

    RunnableC1304ae(ImageGridView imageGridView) {
        this.f4508a = imageGridView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RectF rectF;
        long j;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        rectF = this.f4508a.f4386ah;
        if (rectF != null || this.f4508a.f4647o.m4472c()) {
            j = this.f4508a.f4388aj;
            long currentTimeMillis = j - System.currentTimeMillis();
            ImageGridView imageGridView = this.f4508a;
            if (currentTimeMillis <= 0) {
                currentTimeMillis = 300;
            }
            imageGridView.postDelayed(this, currentTimeMillis);
            return;
        }
        i = this.f4508a.f4390al;
        boolean z = i >= 0;
        i2 = this.f4508a.f4358F;
        i3 = this.f4508a.f4357E;
        int i8 = i2 - i3;
        if (z) {
            i5 = this.f4508a.f4358F;
        } else {
            i4 = this.f4508a.f4357E;
            i5 = i4 - i8;
        }
        int max = Math.max(i5, 0);
        if (z) {
            i7 = this.f4508a.f4358F;
            i6 = i7 + i8;
        } else {
            i6 = this.f4508a.f4357E;
        }
        this.f4508a.m4244a(max, Math.min(i6, this.f4508a.getCount()), false);
    }
}
