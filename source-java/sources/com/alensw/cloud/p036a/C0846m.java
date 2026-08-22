package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.m */
/* loaded from: classes.dex */
class C0846m extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3095a;

    /* renamed from: b */
    final /* synthetic */ C0682i f3096b;

    /* renamed from: c */
    final /* synthetic */ C0842i f3097c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0846m(C0842i c0842i, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, C0682i c0682i) {
        super(c0842i, i, interfaceC0679f);
        this.f3097c = c0842i;
        this.f3095a = contentValues;
        this.f3096b = c0682i;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f3097c.m3260a(abstractC0518h, this.f3095a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f3096b.f2578e, "Content-Disposition", "form-data; name=\"file\"; filename=\"file\"", "Content-Type", this.f3096b.f2576c));
    }
}
