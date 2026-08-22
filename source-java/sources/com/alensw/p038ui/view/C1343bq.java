package com.alensw.p038ui.view;

import android.graphics.drawable.Drawable;

/* renamed from: com.alensw.ui.view.bq */
/* loaded from: classes.dex */
class C1343bq implements Drawable.Callback {

    /* renamed from: a */
    final /* synthetic */ C1342bp f4650a;

    C1343bq(C1342bp c1342bp) {
        this.f4650a = c1342bp;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        this.f4650a.invalidate();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
    }
}
