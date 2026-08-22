package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;

/* renamed from: com.alensw.cloud.a.ag */
/* loaded from: classes.dex */
class C0766ag extends C0811by {

    /* renamed from: a */
    final /* synthetic */ InterfaceC0767ah f2897a;

    /* renamed from: b */
    final /* synthetic */ String f2898b;

    /* renamed from: c */
    final /* synthetic */ C0785az f2899c;

    /* renamed from: d */
    final /* synthetic */ boolean[] f2900d;

    /* renamed from: e */
    final /* synthetic */ C0764ae f2901e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0766ag(C0764ae c0764ae, int i, InterfaceC0679f interfaceC0679f, InterfaceC0767ah interfaceC0767ah, String str, C0785az c0785az, boolean[] zArr) {
        super(c0764ae, i, interfaceC0679f);
        this.f2901e = c0764ae;
        this.f2897a = interfaceC0767ah;
        this.f2898b = str;
        this.f2899c = c0785az;
        this.f2900d = zArr;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3155a(AbstractC0518h abstractC0518h) {
        abstractC0518h.mo1643a();
        String str = "";
        String str2 = "";
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if (this.f2897a.mo3164b().equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("page".equals(mo1619d2)) {
                        i3 = abstractC0518h.m1914l();
                    } else if ("pages".equals(mo1619d2)) {
                        i2 = abstractC0518h.m1914l();
                    } else if (this.f2897a.mo3165c().equals(mo1619d2)) {
                        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                            ContentValues contentValues = new ContentValues();
                            if (this.f2897a.mo3163a(abstractC0518h, contentValues, this.f2898b)) {
                                this.f2899c.add(contentValues);
                            }
                            m2684a();
                        }
                    } else {
                        abstractC0518h.mo1648b();
                    }
                }
            } else if ("stat".equals(mo1619d)) {
                str = abstractC0518h.mo1656f();
            } else if ("code".equals(mo1619d)) {
                i = abstractC0518h.m1914l();
            } else if ("message".equals(mo1619d)) {
                str2 = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
        this.f2901e.m3159a(str, i, str2);
        this.f2900d[0] = i3 == i2;
    }
}
