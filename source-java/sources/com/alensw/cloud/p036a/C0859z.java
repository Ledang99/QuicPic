package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.z */
/* loaded from: classes.dex */
class C0859z extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String f3130a;

    /* renamed from: b */
    final /* synthetic */ C0785az f3131b;

    /* renamed from: c */
    final /* synthetic */ C0857x f3132c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0859z(C0857x c0857x, int i, InterfaceC0679f interfaceC0679f, String str, C0785az c0785az) {
        super(c0857x, i, interfaceC0679f);
        this.f3132c = c0857x;
        this.f3130a = str;
        this.f3131b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("photos".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    ContentValues contentValues = new ContentValues(8);
                    this.f3132c.m3273a(abstractC0518h, this.f3130a, contentValues);
                    this.f3131b.add(contentValues);
                    m2684a();
                }
            } else if (!"total_pages".equals(mo1619d)) {
                abstractC0518h.mo1648b();
            }
        }
    }
}
