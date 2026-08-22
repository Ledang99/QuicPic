package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.HttpURLConnection;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.a.ct */
/* loaded from: classes.dex */
class C0833ct extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String[] f3056a;

    /* renamed from: b */
    final /* synthetic */ long f3057b;

    /* renamed from: c */
    final /* synthetic */ ArrayList f3058c;

    /* renamed from: d */
    final /* synthetic */ String[] f3059d;

    /* renamed from: e */
    final /* synthetic */ C0826cm f3060e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0833ct(C0826cm c0826cm, int i, InterfaceC0679f interfaceC0679f, String[] strArr, long j, ArrayList arrayList, String[] strArr2) {
        super(c0826cm, i, interfaceC0679f);
        this.f3060e = c0826cm;
        this.f3056a = strArr;
        this.f3057b = j;
        this.f3058c = arrayList;
        this.f3059d = strArr2;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("data".equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("block_info".equals(mo1619d2) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                            C0835cv c0835cv = new C0835cv(null);
                            this.f3060e.m3253a(abstractC0518h, c0835cv);
                            if (c0835cv.f3064a != 0) {
                                this.f3058c.add(c0835cv);
                            }
                            m2684a();
                        }
                    } else if ("tid".equals(mo1619d2)) {
                        this.f3059d[0] = abstractC0518h.mo1656f();
                    } else {
                        abstractC0518h.mo1648b();
                    }
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        String m3256b;
        m3256b = C0826cm.m3256b(this.f3056a, this.f3057b);
        C0675b.m2675a(httpURLConnection, "form-data", this.f2569i, new C0681h(m3256b, "Content-Disposition", "form-data; name=\"file\"; filename=\"file.dat\""));
    }
}
