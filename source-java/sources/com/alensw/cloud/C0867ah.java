package com.alensw.cloud;

import com.alensw.p038ui.view.AbstractC1381z;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.alensw.cloud.ah */
/* loaded from: classes.dex */
class C0867ah implements InterfaceC0872am {

    /* renamed from: a */
    final /* synthetic */ UrlTaskActivity f3143a;

    C0867ah(UrlTaskActivity urlTaskActivity) {
        this.f3143a = urlTaskActivity;
    }

    @Override // com.alensw.cloud.InterfaceC0872am
    /* renamed from: a */
    public void mo3284a(C0863ad c0863ad) {
        this.f3143a.m3109b(c0863ad);
    }

    @Override // com.alensw.cloud.InterfaceC0872am
    /* renamed from: a */
    public void mo3285a(List list) {
        ArrayList arrayList;
        ArrayList arrayList2;
        AbstractC1381z abstractC1381z;
        arrayList = this.f3143a.f2868g;
        arrayList.clear();
        arrayList2 = this.f3143a.f2868g;
        arrayList2.addAll(list);
        abstractC1381z = this.f3143a.f2872k;
        abstractC1381z.notifyDataSetChanged();
    }
}
