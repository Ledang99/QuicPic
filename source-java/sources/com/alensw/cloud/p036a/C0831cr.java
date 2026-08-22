package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;
import java.net.HttpURLConnection;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.a.cr */
/* loaded from: classes.dex */
class C0831cr extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0682i f3049a;

    /* renamed from: b */
    final /* synthetic */ String f3050b;

    /* renamed from: c */
    final /* synthetic */ String f3051c;

    /* renamed from: d */
    final /* synthetic */ String[] f3052d;

    /* renamed from: e */
    final /* synthetic */ C0826cm f3053e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0831cr(C0826cm c0826cm, int i, InterfaceC0679f interfaceC0679f, C0682i c0682i, String str, String str2, String[] strArr) {
        super(c0826cm, i, interfaceC0679f);
        this.f3053e = c0826cm;
        this.f3049a = c0682i;
        this.f3050b = str;
        this.f3051c = str2;
        this.f3052d = strArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        this.f3052d[0] = new JSONObject(C0675b.m2655a(inputStream, str2, j, (InterfaceC0679f) null)).getJSONObject("data").getString("tk");
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f3049a.f2578e, "Content-Disposition", String.format("form-data; name=\"file\"; filename=\"%s\"", Long.toHexString(System.nanoTime()))), new C0681h(this.f3050b, "Content-Disposition", "form-data;name=\"tk\""), new C0681h(this.f3051c, "Content-Disposition", "form-data;name=\"open_key\""));
    }
}
