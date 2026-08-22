package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.ac */
/* loaded from: classes.dex */
class C0762ac extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0760aa f2892a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0762ac(C0760aa c0760aa, int i, InterfaceC0679f interfaceC0679f) {
        super(c0760aa, i, interfaceC0679f);
        this.f2892a = c0760aa;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        String str = "";
        String str2 = "";
        int i = 0;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("stat".equals(mo1619d)) {
                str = abstractC0518h.mo1656f();
            } else if ("code".equals(mo1619d)) {
                i = abstractC0518h.m1914l();
            } else if ("message".equals(mo1619d)) {
                str2 = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
        this.f2892a.m3159a(str, i, str2);
    }
}
