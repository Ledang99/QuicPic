package com.alensw.transfer;

import com.alensw.transfer.p037a.C0984t;
import java.util.ArrayList;

/* renamed from: com.alensw.transfer.ai */
/* loaded from: classes.dex */
class RunnableC0993ai implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0984t f3504a;

    /* renamed from: b */
    final /* synthetic */ C0989ae f3505b;

    RunnableC0993ai(C0989ae c0989ae, C0984t c0984t) {
        this.f3505b = c0989ae;
        this.f3504a = c0984t;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        C1008ax c1008ax;
        arrayList = this.f3505b.f3498a.f3485o;
        if (arrayList.remove(this.f3504a)) {
            c1008ax = this.f3505b.f3498a.f3483m;
            c1008ax.notifyDataSetChanged();
        }
    }
}
