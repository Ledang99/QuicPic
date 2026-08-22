package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.cn */
/* loaded from: classes.dex */
class C0827cn extends C0811by {

    /* renamed from: a */
    final /* synthetic */ int[] f3040a;

    /* renamed from: b */
    final /* synthetic */ C0785az f3041b;

    /* renamed from: c */
    final /* synthetic */ C0826cm f3042c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0827cn(C0826cm c0826cm, int i, InterfaceC0679f interfaceC0679f, int[] iArr, C0785az c0785az) {
        super(c0826cm, i, interfaceC0679f);
        this.f3042c = c0826cm;
        this.f3040a = iArr;
        this.f3041b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        char m3250a;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("data".equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("node_list".equals(mo1619d2) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                            int[] iArr = this.f3040a;
                            iArr[0] = iArr[0] + 1;
                            ContentValues contentValues = new ContentValues(8);
                            m3250a = this.f3042c.m3250a(abstractC0518h, contentValues);
                            if (m3250a != 0) {
                                this.f3041b.add(contentValues);
                            }
                            m2684a();
                        }
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
