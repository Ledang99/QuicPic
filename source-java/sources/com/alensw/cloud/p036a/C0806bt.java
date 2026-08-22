package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.bt */
/* loaded from: classes.dex */
class C0806bt extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String f2999a;

    /* renamed from: b */
    final /* synthetic */ ContentValues f3000b;

    /* renamed from: c */
    final /* synthetic */ C0800bn f3001c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0806bt(C0800bn c0800bn, int i, InterfaceC0679f interfaceC0679f, String str, ContentValues contentValues) {
        super(c0800bn, i, interfaceC0679f);
        this.f3001c = c0800bn;
        this.f2999a = str;
        this.f3000b = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        String m3224d;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("entry".equals(mo1619d)) {
                C0800bn c0800bn = this.f3001c;
                m3224d = this.f3001c.m3224d(this.f2999a);
                c0800bn.m3219a(m3224d, abstractC0518h, this.f3000b);
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
