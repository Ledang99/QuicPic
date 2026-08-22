package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.ci */
/* loaded from: classes.dex */
class C0822ci extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String[] f3030a;

    /* renamed from: b */
    final /* synthetic */ boolean[] f3031b;

    /* renamed from: c */
    final /* synthetic */ C0816cc f3032c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0822ci(C0816cc c0816cc, int i, InterfaceC0679f interfaceC0679f, String[] strArr, boolean[] zArr) {
        super(c0816cc, i, interfaceC0679f);
        this.f3032c = c0816cc;
        this.f3030a = strArr;
        this.f3031b = zArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        if (i == 409 && str.contains("DiskResourceAlreadyExistsError")) {
            this.f3031b[0] = true;
        } else {
            super.mo2685a(i, str);
        }
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("href".equals(mo1619d)) {
                this.f3030a[0] = abstractC0518h.mo1656f();
            }
        }
    }
}
