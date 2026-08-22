package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.bm */
/* loaded from: classes.dex */
class C0799bm extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0682i f2970a;

    /* renamed from: b */
    final /* synthetic */ long f2971b;

    /* renamed from: c */
    final /* synthetic */ C0794bh f2972c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0799bm(C0794bh c0794bh, int i, InterfaceC0679f interfaceC0679f, C0682i c0682i, long j) {
        super(c0794bh, i, interfaceC0679f);
        this.f2972c = c0794bh;
        this.f2970a = c0682i;
        this.f2971b = j;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2673a(httpURLConnection, this.f2970a.f2576c, 10485760, this.f2971b, this.f2970a.f2574a, this.f2970a.f2578e, this.f2569i);
    }
}
