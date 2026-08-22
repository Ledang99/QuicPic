package com.alensw.transfer;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.alensw.transfer.bc */
/* loaded from: classes.dex */
class RunnableC1014bc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ TransferService f3536a;

    RunnableC1014bc(TransferService transferService) {
        this.f3536a = transferService;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        arrayList = this.f3536a.f3393m;
        synchronized (arrayList) {
            arrayList2 = this.f3536a.f3393m;
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((InterfaceC1021bj) it.next()).mo3650a();
            }
        }
    }
}
