package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.bb */
/* loaded from: classes.dex */
class C0788bb extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0785az f2943a;

    /* renamed from: b */
    final /* synthetic */ C0787ba f2944b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0788bb(C0787ba c0787ba, int i, InterfaceC0679f interfaceC0679f, C0785az c0785az) {
        super(c0787ba, i, interfaceC0679f);
        this.f2944b = c0787ba;
        this.f2943a = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("data".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    ContentValues contentValues = new ContentValues(8);
                    this.f2944b.m3200b(abstractC0518h, contentValues);
                    this.f2943a.add(contentValues);
                    m2684a();
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
