package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.y */
/* loaded from: classes.dex */
class C0858y extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f3127a;

    /* renamed from: b */
    final /* synthetic */ C0785az f3128b;

    /* renamed from: c */
    final /* synthetic */ C0857x f3129c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0858y(C0857x c0857x, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues, C0785az c0785az) {
        super(c0857x, i, interfaceC0679f);
        this.f3129c = c0857x;
        this.f3127a = contentValues;
        this.f3128b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        long m3275c;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("photos".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                int i = 0;
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    if (i == 0) {
                        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                            String mo1619d2 = abstractC0518h.mo1619d();
                            abstractC0518h.mo1643a();
                            if ("image_url".equals(mo1619d2)) {
                                this.f3127a.put("thumbnail_url", abstractC0518h.mo1656f());
                            } else if ("created_at".equals(mo1619d2)) {
                                m3275c = C0857x.m3275c(abstractC0518h.mo1656f());
                                this.f3127a.put("last_modified", Long.valueOf(m3275c));
                                this.f3127a.put("datetaken", Long.valueOf(m3275c));
                            } else {
                                abstractC0518h.mo1648b();
                            }
                        }
                        this.f3128b.add(this.f3127a);
                    } else {
                        abstractC0518h.mo1648b();
                    }
                    m2684a();
                    i++;
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
