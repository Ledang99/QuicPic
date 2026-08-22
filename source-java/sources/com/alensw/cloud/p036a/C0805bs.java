package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.HttpURLConnection;
import org.apache.http.HttpHeaders;

/* renamed from: com.alensw.cloud.a.bs */
/* loaded from: classes.dex */
class C0805bs extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0800bn f2998a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0805bs(C0800bn c0800bn, int i, InterfaceC0679f interfaceC0679f) {
        super(c0800bn, i, interfaceC0679f);
        this.f2998a = c0800bn;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        httpURLConnection.setRequestProperty(HttpHeaders.IF_MATCH, "*");
        super.mo2688a(httpURLConnection);
    }
}
