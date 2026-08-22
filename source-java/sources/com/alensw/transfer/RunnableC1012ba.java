package com.alensw.transfer;

/* renamed from: com.alensw.transfer.ba */
/* loaded from: classes.dex */
class RunnableC1012ba implements Runnable {

    /* renamed from: a */
    final /* synthetic */ TransferService f3534a;

    RunnableC1012ba(TransferService transferService) {
        this.f3534a = transferService;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        obj = this.f3534a.f3391k;
        synchronized (obj) {
            this.f3534a.m3502j();
        }
        this.f3534a.stopSelf();
    }
}
