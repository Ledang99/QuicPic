package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.bw */
/* loaded from: classes.dex */
class C0809bw extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0682i f3009a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0808bv f3010b;

    /* renamed from: c */
    private boolean f3011c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0809bw(AbstractC0808bv abstractC0808bv, int i, InterfaceC0679f interfaceC0679f, C0682i c0682i) {
        super(abstractC0808bv, i, interfaceC0679f);
        this.f3010b = abstractC0808bv;
        this.f3009a = c0682i;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2689a(HttpURLConnection httpURLConnection, int i) {
        if (!(i < 300) || !(i >= 200)) {
            super.mo2689a(httpURLConnection, i);
            return;
        }
        String contentType = httpURLConnection.getContentType();
        this.f3009a.f2576c = C0675b.m2680b(contentType);
        this.f3009a.f2577d = C0675b.m2657a(contentType);
        this.f3009a.f2578e = C0675b.m2679b(httpURLConnection);
        this.f3009a.f2575b = httpURLConnection.getLastModified();
        this.f3009a.f2574a = httpURLConnection.getContentLength();
        this.f3011c = true;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: b */
    public void mo2692b(HttpURLConnection httpURLConnection) {
        if (this.f3011c) {
            return;
        }
        super.mo2692b(httpURLConnection);
    }
}
