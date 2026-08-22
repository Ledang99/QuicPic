package com.alensw.transfer;

import android.view.View;
import android.widget.ListView;

/* renamed from: com.alensw.transfer.v */
/* loaded from: classes.dex */
class RunnableC1042v implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1024d f3603a;

    /* renamed from: b */
    final /* synthetic */ C1041u f3604b;

    RunnableC1042v(C1041u c1041u, C1024d c1024d) {
        this.f3604b = c1041u;
        this.f3603a = c1024d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000b, code lost:
    
        r0 = r3.f3604b.f3602a.m3705a(r3.f3603a);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        int m3705a;
        ListView listView;
        if (this.f3604b.f3602a.m3532h() == null || m3705a == -1) {
            return;
        }
        listView = this.f3604b.f3602a.f3593d;
        View childAt = listView.getChildAt(m3705a);
        if (childAt != null) {
            this.f3604b.f3602a.m3707a(this.f3603a, (C0986ab) childAt.getTag());
        }
    }
}
