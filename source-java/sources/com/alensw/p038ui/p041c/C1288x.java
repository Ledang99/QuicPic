package com.alensw.p038ui.p041c;

import android.view.View;
import android.widget.AdapterView;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;

/* renamed from: com.alensw.ui.c.x */
/* loaded from: classes.dex */
class C1288x implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ C1280p f4269a;

    C1288x(C1280p c1280p) {
        this.f4269a = c1280p;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        CommonFolder commonFolder;
        boolean z;
        CommonFolder commonFolder2;
        CommonFolder commonFolder3;
        commonFolder = this.f4269a.f4246q;
        CommonFile m3027a = commonFolder.m3027a(i);
        C1280p c1280p = this.f4269a;
        if (i == 0) {
            commonFolder2 = this.f4269a.f4246q;
            commonFolder3 = this.f4269a.f4243n;
            if (commonFolder2 != commonFolder3) {
                z = false;
                c1280p.m4161a(m3027a, z);
            }
        }
        z = true;
        c1280p.m4161a(m3027a, z);
    }
}
