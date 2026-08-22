package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.ap */
/* loaded from: classes.dex */
class C0775ap extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f2913a;

    /* renamed from: b */
    final /* synthetic */ StringBuilder f2914b;

    /* renamed from: c */
    final /* synthetic */ C0772am f2915c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0775ap(C0772am c0772am, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, StringBuilder sb) {
        super(c0772am, i, interfaceC0679f);
        this.f2915c = c0772am;
        this.f2913a = contentValues;
        this.f2914b = sb;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        abstractC0518h.mo1643a();
        this.f2915c.m3170c(abstractC0518h, this.f2913a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "related", this.f2569i, new C0681h(this.f2914b.toString(), "Content-Type", "application/json; charset=utf-8"));
    }
}
