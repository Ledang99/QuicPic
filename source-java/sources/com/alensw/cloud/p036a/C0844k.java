package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.k */
/* loaded from: classes.dex */
class C0844k extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3091a;

    /* renamed from: b */
    final /* synthetic */ C0842i f3092b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0844k(C0842i c0842i, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues) {
        super(c0842i, i, interfaceC0679f);
        this.f3092b = c0842i;
        this.f3091a = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("list".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                int i = 0;
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    if (i == 0) {
                        this.f3092b.m3260a(abstractC0518h, this.f3091a);
                    } else {
                        abstractC0518h.mo1648b();
                    }
                    m2684a();
                    i++;
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
