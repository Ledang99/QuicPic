package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.be */
/* loaded from: classes.dex */
class C0791be extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f2950a;

    /* renamed from: b */
    final /* synthetic */ C0682i f2951b;

    /* renamed from: c */
    final /* synthetic */ String f2952c;

    /* renamed from: d */
    final /* synthetic */ C0787ba f2953d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0791be(C0787ba c0787ba, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, C0682i c0682i, String str) {
        super(c0787ba, i, interfaceC0679f);
        this.f2953d = c0787ba;
        this.f2950a = contentValues;
        this.f2951b = c0682i;
        this.f2952c = str;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f2953d.m3200b(abstractC0518h, this.f2950a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f2951b.f2578e, "Content-Disposition", "form-data; name=\"file\"; filename=\"" + this.f2952c + "\"", "Content-Type", "application/octet-stream"));
    }
}
