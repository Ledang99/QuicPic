package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.o */
/* loaded from: classes.dex */
class C0848o extends C0811by {

    /* renamed from: a */
    final /* synthetic */ int[] f3099a;

    /* renamed from: b */
    final /* synthetic */ C0785az f3100b;

    /* renamed from: c */
    final /* synthetic */ C0847n f3101c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0848o(C0847n c0847n, int i, InterfaceC0679f interfaceC0679f, int[] iArr, C0785az c0785az) {
        super(c0847n, i, interfaceC0679f);
        this.f3101c = c0847n;
        this.f3099a = iArr;
        this.f3100b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        char m3262a;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("entries".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    int[] iArr = this.f3099a;
                    iArr[0] = iArr[0] + 1;
                    ContentValues contentValues = new ContentValues(10);
                    m3262a = this.f3101c.m3262a(abstractC0518h, contentValues);
                    if (m3262a != 0) {
                        this.f3100b.add(contentValues);
                    }
                    m2684a();
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
