package com.alensw.transfer;

import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Toast;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.transfer.p037a.C0984t;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.alensw.transfer.aj */
/* loaded from: classes.dex */
class C0994aj implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C0987ac f3506a;

    C0994aj(C0987ac c0987ac) {
        this.f3506a = c0987ac;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C0984t c0984t;
        TransferService transferService;
        ArrayList arrayList;
        ArrayList arrayList2;
        HashMap hashMap;
        int i2;
        Context context = view.getContext();
        c0984t = this.f3506a.f3475e;
        if (c0984t != null) {
            transferService = this.f3506a.f3476f;
            if (transferService != null) {
                arrayList = this.f3506a.f3486p;
                if (arrayList.isEmpty()) {
                    Toast.makeText(context, R.string.add_files_first, 0).show();
                    return;
                }
                arrayList2 = this.f3506a.f3485o;
                C0984t c0984t2 = (C0984t) arrayList2.get(i);
                hashMap = this.f3506a.f3488r;
                int intValue = ((Integer) hashMap.get(c0984t2)).intValue();
                i2 = this.f3506a.f3487q;
                if (intValue == i2) {
                    C1071f.m3739a(context, R.string.send, context.getString(R.string.send_duplicate_files), new RunnableC0995ak(this, c0984t2), (Runnable) null);
                    return;
                } else {
                    this.f3506a.m3620a(c0984t2);
                    return;
                }
            }
        }
        Toast.makeText(context, "Waiting for service…", 0).show();
    }
}
