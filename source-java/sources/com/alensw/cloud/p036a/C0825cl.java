package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.cl */
/* loaded from: classes.dex */
class C0825cl extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3038a;

    /* renamed from: b */
    final /* synthetic */ C0816cc f3039b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0825cl(C0816cc c0816cc, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues) {
        super(c0816cc, i, interfaceC0679f);
        this.f3039b = c0816cc;
        this.f3038a = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f3039b.m3247a(abstractC0518h, this.f3038a);
    }
}
