package com.alensw.transfer;

import java.util.ArrayList;

/* renamed from: com.alensw.transfer.ag */
/* loaded from: classes.dex */
class RunnableC0991ag implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0989ae f3501a;

    RunnableC0991ag(C0989ae c0989ae) {
        this.f3501a = c0989ae;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        C1008ax c1008ax;
        arrayList = this.f3501a.f3498a.f3485o;
        arrayList.clear();
        c1008ax = this.f3501a.f3498a.f3483m;
        c1008ax.notifyDataSetChanged();
    }
}
