package com.alensw.transfer;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0680g;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.UnknownHostException;

/* renamed from: com.alensw.transfer.be */
/* loaded from: classes.dex */
class C1016be extends C0680g {

    /* renamed from: a */
    final /* synthetic */ String f3542a;

    /* renamed from: b */
    final /* synthetic */ boolean[] f3543b;

    /* renamed from: c */
    final /* synthetic */ C1015bd f3544c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1016be(C1015bd c1015bd, InterfaceC0679f interfaceC0679f, String str, boolean[] zArr) {
        super(interfaceC0679f);
        this.f3544c = c1015bd;
        this.f3542a = str;
        this.f3543b = zArr;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2686a(int i, String str, InputStream inputStream) {
        throw new UnknownHostException(Integer.toString(i));
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        if (i == 200) {
            this.f3543b[0] = false;
        }
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/json; charset=utf-8", this.f3542a);
    }
}
