package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import org.apache.http.HttpStatus;

/* renamed from: com.alensw.cloud.a.at */
/* loaded from: classes.dex */
class C0779at extends C0782aw {

    /* renamed from: a */
    final /* synthetic */ String f2924a;

    /* renamed from: b */
    final /* synthetic */ C0785az f2925b;

    /* renamed from: c */
    final /* synthetic */ boolean[] f2926c;

    /* renamed from: d */
    final /* synthetic */ int f2927d;

    /* renamed from: e */
    final /* synthetic */ C0778as f2928e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0779at(C0778as c0778as, int i, InterfaceC0679f interfaceC0679f, String str, C0785az c0785az, boolean[] zArr, int i2) {
        super(c0778as, i, interfaceC0679f);
        this.f2928e = c0778as;
        this.f2924a = str;
        this.f2925b = c0785az;
        this.f2926c = zArr;
        this.f2927d = i2;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        boolean m3175a;
        int i = -1;
        AbstractC0808bv.m3237a(abstractC0518h.mo1643a(), EnumC0522l.START_OBJECT);
        int i2 = 0;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("files".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    i2++;
                    ContentValues contentValues = new ContentValues(8);
                    m3175a = this.f2928e.m3175a(abstractC0518h, contentValues, this.f2924a);
                    if (m3175a) {
                        this.f2925b.add(contentValues);
                    }
                    m2684a();
                }
            } else if ("files_total".equals(mo1619d)) {
                i = abstractC0518h.m1914l();
            } else {
                abstractC0518h.mo1648b();
            }
        }
        this.f2926c[0] = i2 + (this.f2927d * HttpStatus.SC_INTERNAL_SERVER_ERROR) >= i;
    }
}
