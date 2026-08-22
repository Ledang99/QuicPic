package com.alensw.transfer;

import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

/* renamed from: com.alensw.transfer.t */
/* loaded from: classes.dex */
class C1040t implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C1039s f3601a;

    C1040t(C1039s c1039s) {
        this.f3601a = c1039s;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ArrayList arrayList;
        arrayList = this.f3601a.f3591b;
        C1024d c1024d = (C1024d) arrayList.get(i);
        if (c1024d.m3678b() || c1024d.m3694p() != 2) {
            return;
        }
        this.f3601a.m3712b(c1024d);
    }
}
