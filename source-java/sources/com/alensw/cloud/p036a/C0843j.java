package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.j */
/* loaded from: classes.dex */
class C0843j extends C0811by {

    /* renamed from: a */
    final /* synthetic */ int[] f3088a;

    /* renamed from: b */
    final /* synthetic */ C0785az f3089b;

    /* renamed from: c */
    final /* synthetic */ C0842i f3090c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0843j(C0842i c0842i, int i, InterfaceC0679f interfaceC0679f, int[] iArr, C0785az c0785az) {
        super(c0842i, i, interfaceC0679f);
        this.f3090c = c0842i;
        this.f3088a = iArr;
        this.f3089b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        char m3260a;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("list".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    int[] iArr = this.f3088a;
                    iArr[0] = iArr[0] + 1;
                    ContentValues contentValues = new ContentValues(8);
                    m3260a = this.f3090c.m3260a(abstractC0518h, contentValues);
                    if (m3260a != 0) {
                        this.f3089b.add(contentValues);
                    }
                    m2684a();
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
