package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.cj */
/* loaded from: classes.dex */
class C0823cj extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String[] f3033a;

    /* renamed from: b */
    final /* synthetic */ C0816cc f3034b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0823cj(C0816cc c0816cc, int i, InterfaceC0679f interfaceC0679f, String[] strArr) {
        super(c0816cc, i, interfaceC0679f);
        this.f3034b = c0816cc;
        this.f3033a = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("md5".equals(mo1619d)) {
                this.f3033a[0] = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
