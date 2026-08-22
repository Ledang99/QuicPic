package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.h */
/* loaded from: classes.dex */
class C0841h extends C0811by {

    /* renamed from: a */
    final /* synthetic */ StringBuilder f3086a;

    /* renamed from: b */
    final /* synthetic */ C0759a f3087b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0841h(C0759a c0759a, int i, InterfaceC0679f interfaceC0679f, StringBuilder sb) {
        super(c0759a, i, interfaceC0679f);
        this.f3087b = c0759a;
        this.f3086a = sb;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/json; charset=utf8", this.f3086a.toString());
    }
}
