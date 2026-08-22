package com.alensw.p038ui.activity;

import com.alensw.p023b.p025b.C0655b;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1061an;
import java.io.File;

/* renamed from: com.alensw.ui.activity.bh */
/* loaded from: classes.dex */
class C1129bh implements InterfaceC1061an {

    /* renamed from: a */
    final /* synthetic */ PathListActivity f3798a;

    C1129bh(PathListActivity pathListActivity) {
        this.f3798a = pathListActivity;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1061an
    /* renamed from: a */
    public void mo3728a(File file) {
        String path = file.getPath();
        if (C0742b.m2962a(this.f3798a.f3682a, path, C0655b.f2525a) < 0) {
            this.f3798a.f3682a.add((-r1) - 1, path);
            this.f3798a.f3685d = true;
            this.f3798a.f3683b.notifyDataSetChanged();
        }
    }
}
