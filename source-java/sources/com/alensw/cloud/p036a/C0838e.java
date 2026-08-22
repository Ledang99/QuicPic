package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.e */
/* loaded from: classes.dex */
class C0838e extends C0811by {

    /* renamed from: a */
    final /* synthetic */ StringBuilder f3076a;

    /* renamed from: b */
    final /* synthetic */ ContentValues f3077b;

    /* renamed from: c */
    final /* synthetic */ C0759a f3078c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0838e(C0759a c0759a, int i, InterfaceC0679f interfaceC0679f, StringBuilder sb, ContentValues contentValues) {
        super(c0759a, i, interfaceC0679f);
        this.f3078c = c0759a;
        this.f3076a = sb;
        this.f3077b = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f3078c.m3137a(abstractC0518h, this.f3077b);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/json; charset=utf8", this.f3076a.toString());
    }
}
