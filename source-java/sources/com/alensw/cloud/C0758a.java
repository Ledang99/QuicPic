package com.alensw.cloud;

import android.view.View;
import android.widget.AdapterView;
import android.widget.CheckBox;

/* renamed from: com.alensw.cloud.a */
/* loaded from: classes.dex */
class C0758a implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ CloudConfigActivity f2878a;

    C0758a(CloudConfigActivity cloudConfigActivity) {
        this.f2878a = cloudConfigActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        String m3097a;
        C0860aa c0860aa;
        C0860aa c0860aa2;
        C0860aa c0860aa3;
        C0860aa c0860aa4;
        m3097a = this.f2878a.m3097a(i);
        c0860aa = this.f2878a.f2860m;
        if (c0860aa.m2609a(m3097a)) {
            c0860aa4 = this.f2878a.f2860m;
            c0860aa4.m2614c(m3097a);
        } else {
            c0860aa2 = this.f2878a.f2860m;
            c0860aa2.m2606a(m3097a, (Object) true);
        }
        C0878d c0878d = (C0878d) view.getTag();
        if (c0878d == null) {
            this.f2878a.f2853f.notifyDataSetChanged();
            return;
        }
        CheckBox checkBox = c0878d.f3168c;
        c0860aa3 = this.f2878a.f2860m;
        checkBox.setChecked(!c0860aa3.m2609a(m3097a));
    }
}
