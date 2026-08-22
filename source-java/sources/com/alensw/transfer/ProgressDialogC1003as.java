package com.alensw.transfer;

import android.app.Activity;
import android.net.Uri;
import com.alensw.bean.UriFile;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* renamed from: com.alensw.transfer.as */
/* loaded from: classes.dex */
class ProgressDialogC1003as extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ ArrayList f3518a;

    /* renamed from: b */
    final /* synthetic */ LinkedHashSet f3519b;

    /* renamed from: c */
    final /* synthetic */ C0987ac f3520c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1003as(C0987ac c0987ac, Activity activity, String str, int i, ArrayList arrayList, LinkedHashSet linkedHashSet) {
        super(activity, str, i);
        this.f3520c = c0987ac;
        this.f3518a = arrayList;
        this.f3519b = linkedHashSet;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        Iterator it = this.f3518a.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (uri != null) {
                this.f3519b.add(UriFile.m3074a(uri));
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        ArrayList arrayList;
        ArrayList arrayList2;
        arrayList = this.f3520c.f3486p;
        arrayList.clear();
        arrayList2 = this.f3520c.f3486p;
        arrayList2.addAll(this.f3519b);
        this.f3520c.m3633i();
    }
}
