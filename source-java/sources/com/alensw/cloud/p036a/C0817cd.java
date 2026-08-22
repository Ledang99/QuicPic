package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.cd */
/* loaded from: classes.dex */
class C0817cd extends C0811by {

    /* renamed from: a */
    final /* synthetic */ int[] f3019a;

    /* renamed from: b */
    final /* synthetic */ C0785az f3020b;

    /* renamed from: c */
    final /* synthetic */ C0816cc f3021c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0817cd(C0816cc c0816cc, int i, InterfaceC0679f interfaceC0679f, int[] iArr, C0785az c0785az) {
        super(c0816cc, i, interfaceC0679f);
        this.f3021c = c0816cc;
        this.f3019a = iArr;
        this.f3020b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        char m3247a;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (true) {
            if (abstractC0518h.mo1643a() == EnumC0522l.END_OBJECT) {
                break;
            } else if ("_embedded".equals(abstractC0518h.mo1619d())) {
                abstractC0518h.mo1650c();
                break;
            }
        }
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("items".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    int[] iArr = this.f3019a;
                    iArr[0] = iArr[0] + 1;
                    ContentValues contentValues = new ContentValues(10);
                    m3247a = this.f3021c.m3247a(abstractC0518h, contentValues);
                    if (m3247a != 0) {
                        this.f3020b.add(contentValues);
                    }
                    m2684a();
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
