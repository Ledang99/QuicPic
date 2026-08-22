package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.c */
/* loaded from: classes.dex */
class C0813c extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3016a;

    /* renamed from: b */
    final /* synthetic */ C0759a f3017b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0813c(C0759a c0759a, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues) {
        super(c0759a, i, interfaceC0679f);
        this.f3017b = c0759a;
        this.f3016a = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f3017b.m3137a(abstractC0518h, this.f3016a);
    }
}
