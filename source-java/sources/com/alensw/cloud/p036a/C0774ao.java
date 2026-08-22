package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;

/* renamed from: com.alensw.cloud.a.ao */
/* loaded from: classes.dex */
class C0774ao extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f2911a;

    /* renamed from: b */
    final /* synthetic */ C0772am f2912b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0774ao(C0772am c0772am, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues) {
        super(c0772am, i, interfaceC0679f);
        this.f2912b = c0772am;
        this.f2911a = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        abstractC0518h.mo1643a();
        this.f2912b.m3170c(abstractC0518h, this.f2911a);
    }
}
