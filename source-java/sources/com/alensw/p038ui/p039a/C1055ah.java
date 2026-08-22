package com.alensw.p038ui.p039a;

import android.view.View;
import android.widget.AdapterView;
import java.io.File;

/* renamed from: com.alensw.ui.a.ah */
/* loaded from: classes.dex */
class C1055ah implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ AlertDialogC1052ae f3632a;

    C1055ah(AlertDialogC1052ae alertDialogC1052ae) {
        this.f3632a = alertDialogC1052ae;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.f3632a.f3620c.setPath((File) this.f3632a.f3628k.f2424h.get(i));
        this.f3632a.m3726a(this.f3632a.f3620c.getPath());
    }
}
