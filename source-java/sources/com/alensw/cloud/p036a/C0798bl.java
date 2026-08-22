package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.bl */
/* loaded from: classes.dex */
class C0798bl extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0682i f2968a;

    /* renamed from: b */
    final /* synthetic */ C0794bh f2969b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0798bl(C0794bh c0794bh, int i, InterfaceC0679f interfaceC0679f, C0682i c0682i) {
        super(c0794bh, i, interfaceC0679f);
        this.f2969b = c0794bh;
        this.f2968a = c0682i;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2676a(httpURLConnection, this.f2968a.f2576c, this.f2968a.f2578e, this.f2569i);
    }
}
