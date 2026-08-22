package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.ck */
/* loaded from: classes.dex */
class C0824ck extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0682i f3035a;

    /* renamed from: b */
    final /* synthetic */ InputStream f3036b;

    /* renamed from: c */
    final /* synthetic */ C0816cc f3037c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0824ck(C0816cc c0816cc, int i, InterfaceC0679f interfaceC0679f, C0682i c0682i, InputStream inputStream) {
        super(c0816cc, i, interfaceC0679f);
        this.f3037c = c0816cc;
        this.f3035a = c0682i;
        this.f3036b = inputStream;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2676a(httpURLConnection, this.f3035a.f2576c, this.f3036b, this.f2569i);
    }
}
