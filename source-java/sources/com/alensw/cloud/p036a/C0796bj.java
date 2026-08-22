package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: com.alensw.cloud.a.bj */
/* loaded from: classes.dex */
class C0796bj extends C0811by {

    /* renamed from: a */
    final /* synthetic */ ContentValues f2965a;

    /* renamed from: b */
    final /* synthetic */ C0794bh f2966b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0796bj(C0794bh c0794bh, int i, InterfaceC0679f interfaceC0679f, ContentValues contentValues) {
        super(c0794bh, i, interfaceC0679f);
        this.f2966b = c0794bh;
        this.f2965a = contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3212a(XmlPullParser xmlPullParser) {
        this.f2966b.m3204a(xmlPullParser, this.f2965a);
    }
}
