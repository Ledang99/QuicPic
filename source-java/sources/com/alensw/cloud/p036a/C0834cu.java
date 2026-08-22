package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.nio.channels.FileChannel;

/* renamed from: com.alensw.cloud.a.cu */
/* loaded from: classes.dex */
class C0834cu extends C0811by {

    /* renamed from: a */
    final /* synthetic */ FileChannel f3061a;

    /* renamed from: b */
    final /* synthetic */ C0835cv f3062b;

    /* renamed from: c */
    final /* synthetic */ C0826cm f3063c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0834cu(C0826cm c0826cm, int i, InterfaceC0679f interfaceC0679f, FileChannel fileChannel, C0835cv c0835cv) {
        super(c0826cm, i, interfaceC0679f);
        this.f3063c = c0826cm;
        this.f3061a = fileChannel;
        this.f3062b = c0835cv;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        C0675b.m2655a(inputStream, str2, j, (InterfaceC0679f) null);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(this.f3061a.map(FileChannel.MapMode.READ_ONLY, this.f3062b.f3065b, this.f3062b.f3066c), "Content-Disposition", String.format("form-data; name=\"file\"; filename=\"%s\"", Long.toHexString(System.nanoTime()))));
    }
}
