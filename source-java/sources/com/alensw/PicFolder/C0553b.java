package com.alensw.PicFolder;

import com.alensw.p023b.p028e.InterfaceC0679f;

/* renamed from: com.alensw.PicFolder.b */
/* loaded from: classes.dex */
class C0553b implements InterfaceC0679f {

    /* renamed from: a */
    final /* synthetic */ CloudProvider f2147a;

    /* renamed from: b */
    private volatile boolean f2148b;

    private C0553b(CloudProvider cloudProvider) {
        this.f2147a = cloudProvider;
    }

    /* synthetic */ C0553b(CloudProvider cloudProvider, C0526a c0526a) {
        this(cloudProvider);
    }

    /* renamed from: a */
    public void m2080a() {
        this.f2148b = true;
    }

    @Override // com.alensw.p023b.p028e.InterfaceC0679f
    /* renamed from: b_ */
    public boolean mo2081b_() {
        return this.f2148b;
    }
}
