package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.au */
/* loaded from: classes.dex */
class C0780au extends C0782aw {

    /* renamed from: a */
    final /* synthetic */ String[] f2929a;

    /* renamed from: b */
    final /* synthetic */ C0778as f2930b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0780au(C0778as c0778as, int i, InterfaceC0679f interfaceC0679f, String[] strArr) {
        super(c0778as, i, interfaceC0679f);
        this.f2930b = c0778as;
        this.f2929a = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("url".equals(mo1619d)) {
                this.f2929a[0] = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
