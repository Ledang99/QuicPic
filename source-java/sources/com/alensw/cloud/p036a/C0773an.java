package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.IOException;

/* renamed from: com.alensw.cloud.a.an */
/* loaded from: classes.dex */
class C0773an extends C0811by {

    /* renamed from: a */
    final /* synthetic */ String[] f2908a;

    /* renamed from: b */
    final /* synthetic */ C0785az f2909b;

    /* renamed from: c */
    final /* synthetic */ C0772am f2910c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0773an(C0772am c0772am, int i, InterfaceC0679f interfaceC0679f, String[] strArr, C0785az c0785az) {
        super(c0772am, i, interfaceC0679f);
        this.f2910c = c0772am;
        this.f2908a = strArr;
        this.f2909b = c0785az;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        this.f2908a[0] = "";
        if (abstractC0518h.mo1643a() != EnumC0522l.START_OBJECT) {
            throw new IOException("Object start expected");
        }
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("items".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    ContentValues contentValues = new ContentValues(13);
                    this.f2910c.m3170c(abstractC0518h, contentValues);
                    this.f2909b.add(contentValues);
                    m2684a();
                }
            } else if ("nextPageToken".equals(mo1619d)) {
                this.f2908a[0] = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }
}
