package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.co */
/* loaded from: classes.dex */
class C0828co extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3043a;

    /* renamed from: b */
    final /* synthetic */ C0826cm f3044b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0828co(C0826cm c0826cm, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues) {
        super(c0826cm, i, interfaceC0679f);
        this.f3044b = c0826cm;
        this.f3043a = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("data".equals(mo1619d)) {
                this.f3044b.m3250a(abstractC0518h, this.f3043a);
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
