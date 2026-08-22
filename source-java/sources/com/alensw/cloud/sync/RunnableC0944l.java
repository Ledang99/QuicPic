package com.alensw.cloud.sync;

import android.content.Context;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* renamed from: com.alensw.cloud.sync.l */
/* loaded from: classes.dex */
class RunnableC0944l implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f3318a;

    /* renamed from: b */
    final /* synthetic */ C0943k f3319b;

    RunnableC0944l(C0943k c0943k, int i) {
        this.f3319b = c0943k;
        this.f3318a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        BaseAdapter baseAdapter;
        ArrayList arrayList3;
        if (this.f3318a >= 0) {
            int i = this.f3318a;
            arrayList = this.f3319b.f3317a.f3286j;
            if (i < arrayList.size() - 1) {
                arrayList2 = this.f3319b.f3317a.f3286j;
                C0951s c0951s = (C0951s) arrayList2.remove(this.f3318a);
                baseAdapter = this.f3319b.f3317a.f3287k;
                baseAdapter.notifyDataSetChanged();
                C0937e.m3425a(this.f3319b.f3317a.getContentResolver(), c0951s.f3344c);
                arrayList3 = this.f3319b.f3317a.f3286j;
                if (arrayList3.size() <= 1) {
                    C0956x.m3465a((Context) this.f3319b.f3317a, false);
                }
            }
        }
    }
}
