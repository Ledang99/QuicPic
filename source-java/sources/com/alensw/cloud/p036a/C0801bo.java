package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.bo */
/* loaded from: classes.dex */
class C0801bo extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String f2980a;

    /* renamed from: b */
    final /* synthetic */ C0785az f2981b;

    /* renamed from: c */
    final /* synthetic */ int[] f2982c;

    /* renamed from: d */
    final /* synthetic */ C0800bn f2983d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0801bo(C0800bn c0800bn, int i, InterfaceC0679f interfaceC0679f, String str, C0785az c0785az, int[] iArr) {
        super(c0800bn, i, interfaceC0679f);
        this.f2983d = c0800bn;
        this.f2980a = str;
        this.f2981b = c0785az;
        this.f2982c = iArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        String m3213a;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("feed".equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("entry".equals(mo1619d2) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                            ContentValues contentValues = new ContentValues(13);
                            this.f2983d.m3219a(this.f2980a, abstractC0518h, contentValues);
                            this.f2981b.add(contentValues);
                            m2684a();
                        }
                    } else if ("openSearch$totalResults".equals(mo1619d2)) {
                        int[] iArr = this.f2982c;
                        m3213a = this.f2983d.m3213a(abstractC0518h);
                        iArr[0] = C0742b.m2960a(m3213a, 0);
                    } else {
                        abstractC0518h.mo1648b();
                    }
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
