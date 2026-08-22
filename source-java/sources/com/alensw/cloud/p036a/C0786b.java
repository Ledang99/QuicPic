package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.b */
/* loaded from: classes.dex */
class C0786b extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0785az f2938a;

    /* renamed from: b */
    final /* synthetic */ boolean[] f2939b;

    /* renamed from: c */
    final /* synthetic */ C0759a f2940c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0786b(C0759a c0759a, int i, InterfaceC0679f interfaceC0679f, C0785az c0785az, boolean[] zArr) {
        super(c0759a, i, interfaceC0679f);
        this.f2940c = c0759a;
        this.f2938a = c0785az;
        this.f2939b = zArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        char m3137a;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("data".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    ContentValues contentValues = new ContentValues(10);
                    m3137a = this.f2940c.m3137a(abstractC0518h, contentValues);
                    if (m3137a != 0) {
                        this.f2938a.add(contentValues);
                    }
                    m2684a();
                }
            } else if ("nextToken".equals(mo1619d)) {
                this.f2939b[0] = true;
                this.f2938a.m3195a(abstractC0518h.mo1757p());
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
