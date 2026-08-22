package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.ar */
/* loaded from: classes.dex */
class C0777ar extends C0811by {

    /* renamed from: a */
    final /* synthetic */ StringBuilder f2920a;

    /* renamed from: b */
    final /* synthetic */ C0772am f2921b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0777ar(C0772am c0772am, int i, InterfaceC0679f interfaceC0679f, StringBuilder sb) {
        super(c0772am, i, interfaceC0679f);
        this.f2921b = c0772am;
        this.f2920a = sb;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/json; charset=utf-8", this.f2920a.toString());
    }
}
