package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0678e;

/* renamed from: com.alensw.cloud.a.cw */
/* loaded from: classes.dex */
class C0836cw implements InterfaceC0678e {

    /* renamed from: a */
    private final InterfaceC0678e f3071a;

    /* renamed from: b */
    private final long f3072b;

    /* renamed from: c */
    private long f3073c;

    public C0836cw(InterfaceC0678e interfaceC0678e, long j) {
        this.f3071a = interfaceC0678e;
        this.f3072b = j;
    }

    /* renamed from: a */
    public void m3259a(long j) {
        this.f3073c += j;
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0678e
    /* renamed from: a */
    public void mo2683a(long j, long j2) {
        this.f3071a.mo2683a(this.f3073c + j, this.f3072b);
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0679f
    /* renamed from: b_ */
    public boolean mo2081b_() {
        return this.f3071a.mo2081b_();
    }
}
