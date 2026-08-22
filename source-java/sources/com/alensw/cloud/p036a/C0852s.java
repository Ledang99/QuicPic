package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.s */
/* loaded from: classes.dex */
class C0852s extends C0811by {

    /* renamed from: a */
    final /* synthetic */ StringBuilder f3112a;

    /* renamed from: b */
    final /* synthetic */ ContentValues f3113b;

    /* renamed from: c */
    final /* synthetic */ C0847n f3114c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0852s(C0847n c0847n, int i, InterfaceC0679f interfaceC0679f, StringBuilder sb, ContentValues contentValues) {
        super(c0847n, i, interfaceC0679f);
        this.f3114c = c0847n;
        this.f3112a = sb;
        this.f3113b = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        abstractC0518h.mo1643a();
        this.f3114c.m3262a(abstractC0518h, this.f3113b);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2677a(httpURLConnection, "application/json; charset=utf-8", this.f3112a.toString());
    }
}
