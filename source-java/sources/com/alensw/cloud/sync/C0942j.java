package com.alensw.cloud.sync;

import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.sync.j */
/* loaded from: classes.dex */
class C0942j implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ SyncSettings f3316a;

    C0942j(SyncSettings syncSettings) {
        this.f3316a = syncSettings;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        ArrayList arrayList;
        ArrayList arrayList2;
        C0951s c0951s;
        if (i >= 0) {
            arrayList = this.f3316a.f3286j;
            if (i < arrayList.size()) {
                arrayList2 = this.f3316a.f3286j;
                Object obj = arrayList2.get(i);
                c0951s = this.f3316a.f3285i;
                if (obj == c0951s) {
                    this.f3316a.m3409b();
                }
            }
        }
    }
}
