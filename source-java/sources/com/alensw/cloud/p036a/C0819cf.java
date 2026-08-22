package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.cf */
/* loaded from: classes.dex */
class C0819cf extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3024a;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f3025b;

    /* renamed from: c */
    final /* synthetic */ C0816cc f3026c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0819cf(C0816cc c0816cc, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, StringBuilder sb) {
        super(c0816cc, i, interfaceC0679f);
        this.f3026c = c0816cc;
        this.f3024a = contentValues;
        this.f3025b = sb;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("href".equals(mo1619d)) {
                this.f3024a.put("content_url", abstractC0518h.mo1656f());
                this.f3025b.append(abstractC0518h.mo1656f());
            }
        }
    }
}
