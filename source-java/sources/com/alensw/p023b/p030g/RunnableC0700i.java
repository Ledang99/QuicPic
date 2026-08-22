package com.alensw.p023b.p030g;

import android.widget.PopupWindow;

/* renamed from: com.alensw.b.g.i */
/* loaded from: classes.dex */
final class RunnableC0700i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ PopupWindow f2646a;

    /* renamed from: b */
    final /* synthetic */ int f2647b;

    RunnableC0700i(PopupWindow popupWindow, int i) {
        this.f2646a = popupWindow;
        this.f2647b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f2646a.update(this.f2647b, -1);
        } catch (Throwable th) {
        }
    }
}
