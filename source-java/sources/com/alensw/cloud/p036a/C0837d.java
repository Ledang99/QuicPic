package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.d */
/* loaded from: classes.dex */
class C0837d extends C0811by {

    /* renamed from: a */
    final /* synthetic */ StringBuilder f3074a;

    /* renamed from: b */
    final /* synthetic */ C0759a f3075b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0837d(C0759a c0759a, int i, InterfaceC0679f interfaceC0679f, StringBuilder sb) {
        super(c0759a, i, interfaceC0679f);
        this.f3075b = c0759a;
        this.f3074a = sb;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("tempLink".equals(mo1619d)) {
                this.f3074a.append(abstractC0518h.mo1656f());
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
