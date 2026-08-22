package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.w */
/* loaded from: classes.dex */
class C0856w extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3120a;

    /* renamed from: b */
    final /* synthetic */ InputStream f3121b;

    /* renamed from: c */
    final /* synthetic */ C0853t f3122c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0856w(C0853t c0853t, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, InputStream inputStream) {
        super(c0853t, i, interfaceC0679f);
        this.f3122c = c0853t;
        this.f3120a = contentValues;
        this.f3121b = inputStream;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f3122c.m3269b(abstractC0518h, this.f3120a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        if (this.f3121b != null) {
            C0675b.m2676a(httpURLConnection, "application/octet-stream", this.f3121b, this.f2569i);
        }
    }
}
