package com.alensw.transfer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.alensw.transfer.bb */
/* loaded from: classes.dex */
class RunnableC1013bb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ TransferService f3535a;

    RunnableC1013bb(TransferService transferService) {
        this.f3535a = transferService;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        ConcurrentLinkedQueue concurrentLinkedQueue;
        ArrayList arrayList2;
        arrayList = this.f3535a.f3393m;
        synchronized (arrayList) {
            concurrentLinkedQueue = TransferService.f3381a;
            Object[] array = concurrentLinkedQueue.toArray();
            int m3516e = this.f3535a.m3516e();
            arrayList2 = this.f3535a.f3393m;
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((InterfaceC1021bj) it.next()).mo3651a(array, m3516e);
            }
        }
    }
}
