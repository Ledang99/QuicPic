package com.alensw.transfer;

import android.view.View;
import android.widget.ListView;

/* renamed from: com.alensw.transfer.w */
/* loaded from: classes.dex */
class RunnableC1043w implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1024d f3605a;

    /* renamed from: b */
    final /* synthetic */ C1041u f3606b;

    RunnableC1043w(C1041u c1041u, C1024d c1024d) {
        this.f3606b = c1041u;
        this.f3605a = c1024d;
    }

    @Override // java.lang.Runnable
    public void run() {
        int m3705a;
        ListView listView;
        m3705a = this.f3606b.f3602a.m3705a(this.f3605a);
        if (m3705a != -1) {
            listView = this.f3606b.f3602a.f3593d;
            View childAt = listView.getChildAt(m3705a);
            if (childAt != null) {
                this.f3606b.f3602a.m3707a(this.f3605a, (C0986ab) childAt.getTag());
            }
        }
    }
}
