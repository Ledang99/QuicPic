package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;

/* renamed from: com.alensw.cloud.a.br */
/* loaded from: classes.dex */
class C0804br extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String f2992a;

    /* renamed from: b */
    final /* synthetic */ ContentValues f2993b;

    /* renamed from: c */
    final /* synthetic */ StringBuilder f2994c;

    /* renamed from: d */
    final /* synthetic */ C0682i f2995d;

    /* renamed from: e */
    final /* synthetic */ String f2996e;

    /* renamed from: f */
    final /* synthetic */ C0800bn f2997f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0804br(C0800bn c0800bn, int i, InterfaceC0679f interfaceC0679f, String str, ContentValues contentValues, StringBuilder sb, C0682i c0682i, String str2) {
        super(c0800bn, i, interfaceC0679f);
        this.f2997f = c0800bn;
        this.f2992a = str;
        this.f2993b = contentValues;
        this.f2994c = sb;
        this.f2995d = c0682i;
        this.f2996e = str2;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("entry".equals(mo1619d)) {
                this.f2997f.m3219a(this.f2992a, abstractC0518h, this.f2993b);
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        C0675b.m2675a(httpURLConnection, "related", this.f2569i, new C0681h(this.f2994c.toString(), "Content-Type", "application/atom+xml; charset=utf-8"), new C0681h(this.f2995d.f2578e, "Content-Type", this.f2996e));
    }
}
