package com.alensw.cloud;

import android.view.View;

/* renamed from: com.alensw.cloud.ai */
/* loaded from: classes.dex */
class ViewOnClickListenerC0868ai implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ UrlTaskActivity f3144a;

    ViewOnClickListenerC0868ai(UrlTaskActivity urlTaskActivity) {
        this.f3144a = urlTaskActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        UrlTaskService urlTaskService;
        UrlTaskService urlTaskService2;
        int i;
        Object tag = view.getTag();
        if (tag instanceof C0863ad) {
            C0863ad c0863ad = (C0863ad) tag;
            if (c0863ad.f3140d == 4) {
                this.f3144a.m3105a(c0863ad);
                return;
            }
            urlTaskService = this.f3144a.f2867f;
            if (urlTaskService != null) {
                urlTaskService2 = this.f3144a.f2867f;
                i = this.f3144a.f2862a;
                urlTaskService2.m3134b(i, c0863ad);
            }
        }
    }
}
