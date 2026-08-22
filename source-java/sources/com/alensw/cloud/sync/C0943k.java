package com.alensw.cloud.sync;

import android.view.View;
import android.widget.AdapterView;
import com.alensw.p038ui.activity.C1094a;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.sync.k */
/* loaded from: classes.dex */
class C0943k implements AdapterView.OnItemLongClickListener {

    /* renamed from: a */
    final /* synthetic */ SyncSettings f3317a;

    C0943k(SyncSettings syncSettings) {
        this.f3317a = syncSettings;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView adapterView, View view, int i, long j) {
        ArrayList arrayList;
        if (i < 0) {
            return true;
        }
        arrayList = this.f3317a.f3286j;
        if (i >= arrayList.size() - 1) {
            return true;
        }
        C1094a.m3773a(this.f3317a, 0, view, new RunnableC0944l(this, i));
        return true;
    }
}
