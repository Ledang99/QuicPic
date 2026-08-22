package com.alensw.transfer;

import com.alensw.p023b.p035l.C0742b;
import com.alensw.transfer.p037a.C0984t;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;

/* renamed from: com.alensw.transfer.ah */
/* loaded from: classes.dex */
class RunnableC0992ah implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0984t f3502a;

    /* renamed from: b */
    final /* synthetic */ C0989ae f3503b;

    RunnableC0992ah(C0989ae c0989ae, C0984t c0984t) {
        this.f3503b = c0989ae;
        this.f3502a = c0984t;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        HashMap hashMap;
        ArrayList arrayList2;
        Comparator comparator;
        C1008ax c1008ax;
        arrayList = this.f3503b.f3498a.f3485o;
        arrayList.add(this.f3502a);
        hashMap = this.f3503b.f3498a.f3488r;
        hashMap.put(this.f3502a, 0);
        arrayList2 = this.f3503b.f3498a.f3485o;
        comparator = this.f3503b.f3498a.f3493w;
        C0742b.m2987a(arrayList2, comparator);
        c1008ax = this.f3503b.f3498a.f3483m;
        c1008ax.notifyDataSetChanged();
    }
}
