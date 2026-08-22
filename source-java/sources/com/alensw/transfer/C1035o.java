package com.alensw.transfer;

/* renamed from: com.alensw.transfer.o */
/* loaded from: classes.dex */
class C1035o implements InterfaceC1023c {

    /* renamed from: a */
    final /* synthetic */ long[] f3583a;

    /* renamed from: b */
    final /* synthetic */ C1024d f3584b;

    /* renamed from: c */
    final /* synthetic */ C1034n f3585c;

    C1035o(C1034n c1034n, long[] jArr, C1024d c1024d) {
        this.f3585c = c1034n;
        this.f3583a = jArr;
        this.f3584b = c1024d;
    }

    @Override // com.alensw.transfer.InterfaceC1023c
    /* renamed from: a */
    public void mo3667a() {
        TransferService transferService;
        TransferService transferService2;
        TransferService transferService3;
        if (this.f3584b.m3686h() >= this.f3584b.m3687i()) {
            transferService3 = this.f3585c.f3581b;
            transferService3.m3512b(this.f3584b);
        } else if (this.f3583a[0] < this.f3583a[1]) {
            transferService = this.f3585c.f3581b;
            transferService.m3514c(this.f3584b);
        }
        transferService2 = this.f3585c.f3581b;
        transferService2.m3515d();
    }

    @Override // com.alensw.transfer.InterfaceC1023c
    /* renamed from: a */
    public void mo3668a(long j) {
        long[] jArr = this.f3583a;
        jArr[0] = jArr[0] + j;
        this.f3584b.m3679c(j);
        this.f3584b.m3690l();
    }
}
