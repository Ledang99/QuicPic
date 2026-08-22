package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.bd */
/* loaded from: classes.dex */
class C0790bd extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f2947a;

    /* renamed from: b */
    final /* synthetic */ String f2948b;

    /* renamed from: c */
    final /* synthetic */ C0787ba f2949c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0790bd(C0787ba c0787ba, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, String str) {
        super(c0787ba, i, interfaceC0679f);
        this.f2949c = c0787ba;
        this.f2947a = contentValues;
        this.f2948b = str;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        this.f2949c.m3200b(abstractC0518h, this.f2947a);
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        byte[] bytes = this.f2948b.getBytes("UTF-8");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Charset", "UTF-8");
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
        httpURLConnection.setFixedLengthStreamingMode(bytes.length);
        httpURLConnection.getOutputStream().write(bytes);
    }
}
