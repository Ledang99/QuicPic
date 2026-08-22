package com.alensw.cloud.p036a;

import android.content.ContentValues;
import com.alensw.p023b.p028e.InterfaceC0679f;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: com.alensw.cloud.a.bi */
/* loaded from: classes.dex */
class C0795bi extends C0811by {

    /* renamed from: a */
    final /* synthetic */ C0785az f2962a;

    /* renamed from: b */
    final /* synthetic */ String f2963b;

    /* renamed from: c */
    final /* synthetic */ C0794bh f2964c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0795bi(C0794bh c0794bh, int i, InterfaceC0679f interfaceC0679f, C0785az c0785az, String str) {
        super(c0794bh, i, interfaceC0679f);
        this.f2964c = c0794bh;
        this.f2962a = c0785az;
        this.f2963b = str;
    }

    @Override // com.alensw.cloud.p036a.C0811by
    /* renamed from: a */
    protected void mo3212a(XmlPullParser xmlPullParser) {
        int size = this.f2962a.size();
        this.f2964c.m3208a(xmlPullParser, this.f2962a);
        if (this.f2962a.size() <= size || !this.f2963b.equals(((ContentValues) this.f2962a.get(size)).getAsString("document_id"))) {
            return;
        }
        this.f2962a.remove(size);
    }
}
