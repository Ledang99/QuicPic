package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.av */
/* loaded from: classes.dex */
class C0781av extends C0782aw {

    /* renamed from: a */
    final /* synthetic */ InputStream f2931a;

    /* renamed from: b */
    final /* synthetic */ String f2932b;

    /* renamed from: c */
    final /* synthetic */ String f2933c;

    /* renamed from: d */
    final /* synthetic */ C0778as f2934d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0781av(C0778as c0778as, int i, InterfaceC0679f interfaceC0679f, InputStream inputStream, String str, String str2) {
        super(c0778as, i, interfaceC0679f);
        this.f2934d = c0778as;
        this.f2931a = inputStream;
        this.f2932b = str;
        this.f2933c = str2;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f2931a, "Content-Disposition", "form-data; name=\"file\"; filename=\"" + this.f2932b + "\"", "Content-Type", this.f2933c));
    }
}
