package com.alensw.transfer;

import com.alensw.p023b.p035l.C0742b;
import java.util.ArrayList;
import java.util.Comparator;

/* renamed from: com.alensw.transfer.x */
/* loaded from: classes.dex */
class C1044x implements InterfaceC1021bj {

    /* renamed from: a */
    final /* synthetic */ C1039s f3607a;

    C1044x(C1039s c1039s) {
        this.f3607a = c1039s;
    }

    @Override // com.alensw.transfer.InterfaceC1021bj
    /* renamed from: a */
    public void mo3650a() {
        TransferActivity transferActivity = (TransferActivity) this.f3607a.m3531g();
        if (transferActivity != null) {
            transferActivity.m3488b(1);
        }
    }

    @Override // com.alensw.transfer.InterfaceC1021bj
    /* renamed from: a */
    public void mo3651a(Object[] objArr, int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Comparator comparator;
        C1046z c1046z;
        ArrayList arrayList3;
        arrayList = this.f3607a.f3591b;
        arrayList.clear();
        for (Object obj : objArr) {
            if (obj instanceof C1024d) {
                arrayList3 = this.f3607a.f3591b;
                arrayList3.add((C1024d) obj);
            }
        }
        arrayList2 = this.f3607a.f3591b;
        comparator = this.f3607a.f3600k;
        C0742b.m2987a(arrayList2, comparator);
        c1046z = this.f3607a.f3590a;
        c1046z.notifyDataSetChanged();
        TransferActivity transferActivity = (TransferActivity) this.f3607a.m3531g();
        if (transferActivity != null) {
            transferActivity.m3487a(i);
        }
    }
}
