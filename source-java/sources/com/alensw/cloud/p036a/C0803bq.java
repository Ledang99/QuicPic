package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.bq */
/* loaded from: classes.dex */
class C0803bq extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String f2988a;

    /* renamed from: b */
    final /* synthetic */ ContentValues f2989b;

    /* renamed from: c */
    final /* synthetic */ StringBuilder f2990c;

    /* renamed from: d */
    final /* synthetic */ C0800bn f2991d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0803bq(C0800bn c0800bn, int i, InterfaceC0679f interfaceC0679f, String str, ContentValues contentValues, StringBuilder sb) {
        super(c0800bn, i, interfaceC0679f);
        this.f2991d = c0800bn;
        this.f2988a = str;
        this.f2989b = contentValues;
        this.f2990c = sb;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("entry".equals(mo1619d)) {
                this.f2991d.m3219a(this.f2988a, abstractC0518h, this.f2989b);
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/atom+xml; charset=utf-8", this.f2990c.toString());
    }
}
