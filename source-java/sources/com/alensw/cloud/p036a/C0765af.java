package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.af */
/* loaded from: classes.dex */
class C0765af extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String[] f2895a;

    /* renamed from: b */
    final /* synthetic */ C0764ae f2896b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0765af(C0764ae c0764ae, int i, InterfaceC0679f interfaceC0679f, String[] strArr) {
        super(c0764ae, i, interfaceC0679f);
        this.f2896b = c0764ae;
        this.f2895a = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        String str = "";
        String str2 = "";
        String str3 = "";
        String str4 = "";
        String str5 = "";
        int i = 0;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("photo".equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("id".equals(mo1619d2)) {
                        str2 = abstractC0518h.mo1656f();
                    } else if ("secret".equals(mo1619d2)) {
                        str3 = abstractC0518h.mo1656f();
                    } else if ("owner".equals(mo1619d2)) {
                        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                            String mo1619d3 = abstractC0518h.mo1619d();
                            abstractC0518h.mo1643a();
                            if ("nsid".equals(mo1619d3)) {
                                str = abstractC0518h.mo1656f();
                            } else {
                                abstractC0518h.mo1648b();
                            }
                        }
                    } else {
                        abstractC0518h.mo1648b();
                    }
                }
            } else if ("stat".equals(mo1619d)) {
                str4 = abstractC0518h.mo1656f();
            } else if ("code".equals(mo1619d)) {
                i = abstractC0518h.m1914l();
            } else if ("message".equals(mo1619d)) {
                str5 = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
        this.f2896b.m3159a(str4, i, str5);
        if ((str.length() & str2.length() & str3.length()) != 0) {
            this.f2895a[0] = this.f2896b.m3158a(str, str2, str3);
        }
    }
}
