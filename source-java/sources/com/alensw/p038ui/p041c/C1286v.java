package com.alensw.p038ui.p041c;

import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.alensw.cloud.C0961x;

/* renamed from: com.alensw.ui.c.v */
/* loaded from: classes.dex */
class C1286v implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ BaseAdapter f4266a;

    /* renamed from: b */
    final /* synthetic */ C1280p f4267b;

    C1286v(C1280p c1280p, BaseAdapter baseAdapter) {
        this.f4267b = c1280p;
        this.f4266a = baseAdapter;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C0961x c0961x = (C0961x) this.f4266a.getItem(i);
        this.f4267b.m4144a(c0961x.f3348a, c0961x.f3352e);
    }
}
