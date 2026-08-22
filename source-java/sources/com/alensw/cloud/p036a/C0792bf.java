package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.bf */
/* loaded from: classes.dex */
class C0792bf extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String[] f2954a;

    /* renamed from: b */
    final /* synthetic */ C0787ba f2955b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0792bf(C0787ba c0787ba, int i, InterfaceC0679f interfaceC0679f, String[] strArr) {
        super(c0787ba, i, interfaceC0679f);
        this.f2955b = c0787ba;
        this.f2954a = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("source".equals(mo1619d)) {
                this.f2954a[0] = abstractC0518h.mo1656f();
            } else if ("picture".equals(mo1619d)) {
                this.f2954a[1] = abstractC0518h.mo1656f();
            } else if ("images".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    String str = "";
                    String str2 = "";
                    while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                        String mo1619d2 = abstractC0518h.mo1619d();
                        abstractC0518h.mo1643a();
                        if ("type".equals(mo1619d2)) {
                            str = abstractC0518h.mo1656f();
                        } else if ("source".equals(mo1619d2)) {
                            str2 = abstractC0518h.mo1656f();
                        } else {
                            abstractC0518h.mo1648b();
                        }
                    }
                    if ("normal".equals(str)) {
                        this.f2954a[2] = str2;
                    }
                    m2684a();
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
