package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.aq */
/* loaded from: classes.dex */
class C0776aq extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f2916a;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f2917b;

    /* renamed from: c */
    final /* synthetic */ C0682i f2918c;

    /* renamed from: d */
    final /* synthetic */ C0772am f2919d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0776aq(C0772am c0772am, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, StringBuilder sb, C0682i c0682i) {
        super(c0772am, i, interfaceC0679f);
        this.f2919d = c0772am;
        this.f2916a = contentValues;
        this.f2917b = sb;
        this.f2918c = c0682i;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        abstractC0518h.mo1643a();
        this.f2919d.m3170c(abstractC0518h, this.f2916a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "related", this.f2569i, new C0681h(this.f2917b.toString(), "Content-Type", "application/json; charset=utf-8"), new C0681h(this.f2918c.f2578e, "Content-Type", this.f2918c.f2576c));
    }
}
